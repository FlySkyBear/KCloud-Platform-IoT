/*
 * Copyright (c) 2022-2024 KCloud-Platform-IoT Author or Authors. All Rights Reserved.
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

package org.apache.rocketmq.spring.autoconfigure;

import com.alibaba.ttl.threadpool.ExecutorTtlWrapper;
import lombok.RequiredArgsConstructor;
import org.apache.rocketmq.client.producer.TransactionMQProducer;
import org.apache.rocketmq.spring.annotation.RocketMQTransactionListener;
import org.apache.rocketmq.spring.core.RocketMQLocalTransactionListener;
import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.apache.rocketmq.spring.support.RocketMQUtil;
import org.jetbrains.annotations.NotNull;
import org.laokou.common.core.config.TaskExecutorAutoConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.framework.AopProxyUtils;
import org.springframework.aop.scope.ScopedProxyUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.SmartInitializingSingleton;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.core.task.VirtualThreadTaskExecutor;

import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.stream.Collectors;

/**
 * @author rocketmq
 * @author laokou
 */
@Configuration
@RequiredArgsConstructor
@Import(TaskExecutorAutoConfig.class)
public class RocketMQTransactionConfiguration implements ApplicationContextAware, SmartInitializingSingleton {

	private final static Logger log = LoggerFactory.getLogger(RocketMQTransactionConfiguration.class);

	private final Executor executor;

	private ConfigurableApplicationContext applicationContext;

	@Override
	public void setApplicationContext(@NotNull ApplicationContext applicationContext) throws BeansException {
		this.applicationContext = (ConfigurableApplicationContext) applicationContext;
	}

	@Override
	public void afterSingletonsInstantiated() {
		Map<String, Object> beans = this.applicationContext.getBeansWithAnnotation(RocketMQTransactionListener.class)
			.entrySet()
			.stream()
			.filter(entry -> !ScopedProxyUtils.isScopedTarget(entry.getKey()))
			.collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue));

		beans.forEach(this::registerTransactionListener);
	}

	private void registerTransactionListener(String beanName, Object bean) {
		Class<?> clazz = AopProxyUtils.ultimateTargetClass(bean);

		if (!RocketMQLocalTransactionListener.class.isAssignableFrom(bean.getClass())) {
			throw new IllegalStateException(
					clazz + " is not instance of " + RocketMQLocalTransactionListener.class.getName());
		}
		RocketMQTransactionListener annotation = clazz.getAnnotation(RocketMQTransactionListener.class);
		RocketMQTemplate rocketMQTemplate = (RocketMQTemplate) applicationContext
			.getBean(annotation.rocketMQTemplateBeanName());
		if (((TransactionMQProducer) rocketMQTemplate.getProducer()).getTransactionListener() != null) {
			throw new IllegalStateException(
					annotation.rocketMQTemplateBeanName() + " already exists RocketMQLocalTransactionListener");
		}

		if (executor instanceof ExecutorTtlWrapper executorTtlWrapper) {
			Executor exec = executorTtlWrapper.unwrap();
			// 虚拟线程池
			if (exec instanceof VirtualThreadTaskExecutor virtualThreadTaskExecutor) {
				((TransactionMQProducer) rocketMQTemplate.getProducer()).setExecutorService(
						Executors.newThreadPerTaskExecutor(virtualThreadTaskExecutor.getVirtualThreadFactory()));
			}
		}
		else {
			ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(annotation.corePoolSize(),
					annotation.maximumPoolSize(), annotation.keepAliveTime(), annotation.keepAliveTimeUnit(),
					new LinkedBlockingDeque<>(annotation.blockingQueueSize()));
			((TransactionMQProducer) rocketMQTemplate.getProducer()).setExecutorService(threadPoolExecutor);
		}

		((TransactionMQProducer) rocketMQTemplate.getProducer())
			.setTransactionListener(RocketMQUtil.convert((RocketMQLocalTransactionListener) bean));
		log.debug("RocketMQLocalTransactionListener {} register to {} success", clazz.getName(),
				annotation.rocketMQTemplateBeanName());
	}

}