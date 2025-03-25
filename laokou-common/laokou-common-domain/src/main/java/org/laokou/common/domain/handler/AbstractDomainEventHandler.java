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

package org.laokou.common.domain.handler;

import com.fasterxml.jackson.core.JsonProcessingException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.common.message.MessageExt;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.laokou.common.core.util.MDCUtils;
import org.laokou.common.i18n.common.exception.SystemException;
import org.laokou.common.i18n.dto.DomainEvent;
import org.laokou.common.i18n.util.JacksonUtils;
import static org.laokou.common.i18n.common.constant.TraceConstants.SPAN_ID;
import static org.laokou.common.i18n.common.constant.TraceConstants.TRACE_ID;

/**
 * @author laokou
 */
@Slf4j
@RequiredArgsConstructor
public abstract class AbstractDomainEventHandler implements RocketMQListener<MessageExt> {

	@Override
	public void onMessage(MessageExt messageExt) {
		try {
			putTrace(messageExt);
			handleDomainEvent(JacksonUtils.toBean(messageExt.getBody(), DomainEvent.class));
		}
		catch (Exception e) {
			log.error("消费失败，主题Topic：{}，偏移量Offset：{}，错误信息：{}", messageExt.getTopic(), messageExt.getCommitLogOffset(),
					e.getMessage());
			throw new SystemException("S_RocketMQ_ConsumeFailed", "消费失败", e);
		}
		finally {
			clearTrace();
		}
	}

	protected abstract void handleDomainEvent(DomainEvent domainEvent) throws JsonProcessingException;

	private void putTrace(MessageExt messageExt) {
		String traceId = messageExt.getProperty(TRACE_ID);
		String spanId = messageExt.getProperty(SPAN_ID);
		MDCUtils.put(traceId, spanId);
	}

	private void clearTrace() {
		MDCUtils.clear();
	}

}
