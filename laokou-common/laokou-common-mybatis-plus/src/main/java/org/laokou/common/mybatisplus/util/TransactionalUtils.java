/*
 * Copyright (c) 2022-2025 KCloud-Platform-IoT Author or Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

package org.laokou.common.mybatisplus.util;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.laokou.common.i18n.common.exception.SystemException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.util.Assert;

import java.util.function.Consumer;

/**
 * @author laokou
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class TransactionalUtils {

	private final TransactionTemplate transactionTemplate;

	public void executeInTransaction(DatabaseOperation operation) {
		defaultExecuteWithoutResult(r -> {
			try {
				operation.execute();
			}
			catch (Exception e) {
				r.setRollbackOnly();
				log.error("操作失败，错误信息：{}", e.getMessage());
				throw new SystemException("S_DS_OperateError", e.getMessage(), e);
			}
		});
	}

	public <T> T executeResultInTransaction(DatabaseExecutor<T> operation) {
		return defaultExecute(r -> {
			try {
				return operation.execute();
			}
			catch (Exception e) {
				r.setRollbackOnly();
				log.error("操作失败，错误信息：{}", e.getMessage());
				throw new SystemException("S_DS_OperateError", e.getMessage(), e);
			}
		});
	}

	// @formatter:off
	private <T> T execute(TransactionCallback<T> action, int propagationBehavior, int isolationLevel, boolean readOnly) {
        return convert(propagationBehavior, isolationLevel, readOnly).execute(action);
	}

	private <T> T defaultExecute(TransactionCallback<T> action, int isolationLevel, boolean readOnly) {
		return execute(action, TransactionDefinition.PROPAGATION_REQUIRED, isolationLevel, readOnly);
	}

	private  <T> T defaultExecute(TransactionCallback<T> action) {
		return execute(action, TransactionDefinition.PROPAGATION_REQUIRED, TransactionDefinition.ISOLATION_READ_COMMITTED, false);
	}

	private <T> T newExecute(TransactionCallback<T> action, int isolationLevel, boolean readOnly) {
		return execute(action, TransactionDefinition.PROPAGATION_REQUIRES_NEW, isolationLevel, readOnly);
	}

	private <T> T newExecute(TransactionCallback<T> action) {
		return execute(action, TransactionDefinition.PROPAGATION_REQUIRES_NEW, TransactionDefinition.ISOLATION_READ_COMMITTED, false);
	}

	private void executeWithoutResult(Consumer<TransactionStatus> action, int propagationBehavior, int isolationLevel, boolean readOnly) {
        convert(propagationBehavior, isolationLevel, readOnly).executeWithoutResult(action);
	}

	private void defaultExecuteWithoutResult(Consumer<TransactionStatus> action, int isolationLevel, boolean readOnly) {
		executeWithoutResult(action, TransactionDefinition.PROPAGATION_REQUIRED, isolationLevel, readOnly);
	}

	private void defaultExecuteWithoutResult(Consumer<TransactionStatus> action) {
		executeWithoutResult(action, TransactionDefinition.PROPAGATION_REQUIRED, TransactionDefinition.ISOLATION_READ_COMMITTED, false);
	}

	private void newExecuteWithoutResult(Consumer<TransactionStatus> action) {
		executeWithoutResult(action, TransactionDefinition.PROPAGATION_REQUIRES_NEW, TransactionDefinition.ISOLATION_READ_COMMITTED, false);
	}

	private void newExecuteWithoutResult(Consumer<TransactionStatus> action, int isolationLevel, boolean readOnly) {
		executeWithoutResult(action, TransactionDefinition.PROPAGATION_REQUIRES_NEW, isolationLevel, readOnly);
	}

	private TransactionTemplate convert(int propagationBehavior, int isolationLevel, boolean readOnly) {
        PlatformTransactionManager transactionManager = transactionTemplate.getTransactionManager();
        Assert.notNull(transactionManager, "TransactionManager must not be null");
        TransactionTemplate tranTemplate = new TransactionTemplate(transactionManager);
        tranTemplate.setPropagationBehavior(propagationBehavior);
        tranTemplate.setIsolationLevel(isolationLevel);
        tranTemplate.setReadOnly(readOnly);
		return tranTemplate;
	}

	@FunctionalInterface
	public interface DatabaseOperation {

		void execute() throws Exception;

	}

	@FunctionalInterface
	public interface DatabaseExecutor<T> {

		T execute() throws Exception;

	}
    // @formatter:on

}
