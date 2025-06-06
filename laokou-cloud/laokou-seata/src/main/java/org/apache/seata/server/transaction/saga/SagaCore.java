/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.seata.server.transaction.saga;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeoutException;
import io.netty.channel.Channel;
import org.apache.seata.common.util.CollectionUtils;
import org.apache.seata.core.exception.GlobalTransactionException;
import org.apache.seata.core.exception.TransactionException;
import org.apache.seata.core.model.BranchStatus;
import org.apache.seata.core.model.BranchType;
import org.apache.seata.core.model.GlobalStatus;
import org.apache.seata.core.protocol.transaction.BranchCommitRequest;
import org.apache.seata.core.protocol.transaction.BranchCommitResponse;
import org.apache.seata.core.protocol.transaction.BranchRollbackRequest;
import org.apache.seata.core.protocol.transaction.BranchRollbackResponse;
import org.apache.seata.core.rpc.RemotingServer;
import org.apache.seata.core.rpc.netty.ChannelManager;
import org.apache.seata.server.coordinator.AbstractCore;
import org.apache.seata.server.session.BranchSession;
import org.apache.seata.server.session.GlobalSession;
import org.apache.seata.server.session.SessionHelper;
import org.apache.seata.server.session.SessionHolder;

/**
 * The type saga core.
 *
 */
public class SagaCore extends AbstractCore {

	public SagaCore(RemotingServer remotingServer) {
		super(remotingServer);
	}

	@Override
	public BranchType getHandleBranchType() {
		return BranchType.SAGA;
	}

	@Override
	public void globalSessionStatusCheck(GlobalSession globalSession) throws GlobalTransactionException {
		// SAGA type accept forward(retry) operation on timeout or commit fail, forward
		// operation will register remaining branches
	}

	@Override
	public BranchStatus branchCommitSend(BranchCommitRequest request, GlobalSession globalSession,
			BranchSession branchSession) throws IOException, TimeoutException {
		Map<String, Channel> channels = ChannelManager.getRmChannels();
		if (CollectionUtils.isEmpty(channels)) {
			LOGGER.error("Failed to commit SAGA global[" + globalSession.getXid() + ", RM channels is empty.");
			return BranchStatus.PhaseTwo_CommitFailed_Retryable;
		}
		String sagaResourceId = getSagaResourceId(globalSession);
		Channel sagaChannel = channels.get(sagaResourceId);
		if (sagaChannel == null) {
			LOGGER.error("Failed to commit SAGA global[" + globalSession.getXid()
					+ ", cannot find channel by resourceId[" + sagaResourceId + "]");
			return BranchStatus.PhaseTwo_CommitFailed_Retryable;
		}
		BranchCommitResponse response = (BranchCommitResponse) remotingServer.sendSyncRequest(sagaChannel, request);
		return response.getBranchStatus();
	}

	@Override
	public BranchStatus branchRollbackSend(BranchRollbackRequest request, GlobalSession globalSession,
			BranchSession branchSession) throws IOException, TimeoutException {
		Map<String, Channel> channels = ChannelManager.getRmChannels();
		if (CollectionUtils.isEmpty(channels)) {
			LOGGER.error("Failed to rollback SAGA global[" + globalSession.getXid() + ", RM channels is empty.");
			return BranchStatus.PhaseTwo_RollbackFailed_Retryable;
		}
		String sagaResourceId = getSagaResourceId(globalSession);
		Channel sagaChannel = channels.get(sagaResourceId);
		if (sagaChannel == null) {
			LOGGER.error("Failed to rollback SAGA global[" + globalSession.getXid()
					+ ", cannot find channel by resourceId[" + sagaResourceId + "]");
			return BranchStatus.PhaseTwo_RollbackFailed_Retryable;
		}
		BranchRollbackResponse response = (BranchRollbackResponse) remotingServer.sendSyncRequest(sagaChannel, request);
		return response.getBranchStatus();
	}

	@Override
	public boolean doGlobalCommit(GlobalSession globalSession, boolean retrying) throws TransactionException {
		try {
			BranchStatus branchStatus = branchCommit(globalSession, SessionHelper.newBranch(BranchType.SAGA,
					globalSession.getXid(), -1, getSagaResourceId(globalSession), globalSession.getStatus().name()));

			switch (branchStatus) {
				case PhaseTwo_Committed:
					SessionHelper.removeAllBranch(globalSession, !retrying);
					LOGGER.info("Successfully committed SAGA global[" + globalSession.getXid() + "]");
					break;
				case PhaseTwo_Rollbacked:
					LOGGER.info("Successfully rollbacked SAGA global[" + globalSession.getXid() + "]");
					SessionHelper.removeAllBranch(globalSession, !retrying);
					SessionHelper.endRollbacked(globalSession, retrying);
					return false;
				case PhaseTwo_RollbackFailed_Retryable:
					LOGGER.error("By [{}], failed to rollback SAGA global [{}], will retry later.", branchStatus,
							globalSession.getXid());
					SessionHolder.getRootSessionManager().removeGlobalSession(globalSession);
					globalSession.queueToRetryRollback();
					return false;
				case PhaseOne_Failed:
					LOGGER.error("By [{}], finish SAGA global [{}]", branchStatus, globalSession.getXid());
					SessionHelper.removeAllBranch(globalSession, !retrying);
					globalSession.changeGlobalStatus(GlobalStatus.Finished);
					globalSession.end();
					return false;
				case PhaseTwo_CommitFailed_Unretryable:
					if (globalSession.canBeCommittedAsync()) {
						LOGGER.error("By [{}], failed to commit SAGA global [{}]", branchStatus,
								globalSession.getXid());
						break;
					}
					else {
						SessionHelper.endCommitFailed(globalSession, retrying);
						LOGGER.error("Finally, failed to commit SAGA global[{}]", globalSession.getXid());
						return false;
					}
				default:
					if (!retrying) {
						globalSession.queueToRetryCommit();
					}
					else {
						LOGGER.error("Failed to commit SAGA global[{}], will retry later.", globalSession.getXid());
					}
					return false;
			}
		}
		catch (Exception ex) {
			LOGGER.error("Failed to commit global[" + globalSession.getXid() + "]", ex);

			if (!retrying) {
				globalSession.queueToRetryRollback();
			}
			throw new TransactionException(ex);
		}
		return true;
	}

	@Override
	public boolean doGlobalRollback(GlobalSession globalSession, boolean retrying) throws TransactionException {
		try {
			BranchStatus branchStatus = branchRollback(globalSession, SessionHelper.newBranch(BranchType.SAGA,
					globalSession.getXid(), -1, getSagaResourceId(globalSession), globalSession.getStatus().name()));

			switch (branchStatus) {
				case PhaseTwo_Rollbacked:
					SessionHelper.removeAllBranch(globalSession, !retrying);
					LOGGER.info("Successfully rollbacked SAGA global[{}]", globalSession.getXid());
					break;
				case PhaseTwo_RollbackFailed_Unretryable:
					SessionHelper.endRollbackFailed(globalSession, retrying);
					LOGGER.error("Failed to rollback SAGA global[{}]", globalSession.getXid());
					return false;
				case PhaseTwo_CommitFailed_Retryable:
					SessionHolder.getRootSessionManager().removeGlobalSession(globalSession);
					globalSession.queueToRetryCommit();
					LOGGER.warn("Retry by custom recover strategy [Forward] on timeout, SAGA global[{}]",
							globalSession.getXid());
					return false;
				default:
					LOGGER.error("Failed to rollback SAGA global[{}]", globalSession.getXid());
					if (!retrying) {
						globalSession.queueToRetryRollback();
					}
					return false;
			}
		}
		catch (Exception ex) {
			LOGGER.error("Failed to rollback global[{}]", globalSession.getXid(), ex);
			if (!retrying) {
				globalSession.queueToRetryRollback();
			}
			throw new TransactionException(ex);
		}
		return true;
	}

	@Override
	public void doGlobalReport(GlobalSession globalSession, String xid, GlobalStatus globalStatus)
			throws TransactionException {
		if (GlobalStatus.Committed.equals(globalStatus)) {
			SessionHelper.removeAllBranch(globalSession, false);
			SessionHelper.endCommitted(globalSession, false);
			LOGGER.info("Global[{}] committed", globalSession.getXid());
		}
		else if (GlobalStatus.Rollbacked.equals(globalStatus) || GlobalStatus.Finished.equals(globalStatus)) {
			SessionHelper.removeAllBranch(globalSession, false);
			SessionHelper.endRollbacked(globalSession, false);
			LOGGER.info("Global[{}] rollbacked", globalSession.getXid());
		}
		else {
			globalSession.changeGlobalStatus(globalStatus);
			LOGGER.info("Global[{}] reporting is successfully done. status[{}]", globalSession.getXid(),
					globalSession.getStatus());

			if (GlobalStatus.RollbackRetrying.equals(globalStatus)
					|| GlobalStatus.TimeoutRollbackRetrying.equals(globalStatus)
					|| GlobalStatus.UnKnown.equals(globalStatus)) {
				globalSession.queueToRetryRollback();
				LOGGER.info("Global[{}] will retry rollback", globalSession.getXid());
			}
			else if (GlobalStatus.CommitRetrying.equals(globalStatus)) {
				globalSession.queueToRetryCommit();
				LOGGER.info("Global[{}] will retry commit", globalSession.getXid());
			}
		}
	}

	/**
	 * get saga ResourceId
	 * @param globalSession the globalSession
	 * @return sagaResourceId
	 */
	private String getSagaResourceId(GlobalSession globalSession) {
		return globalSession.getApplicationId() + "#" + globalSession.getTransactionServiceGroup();
	}

}
