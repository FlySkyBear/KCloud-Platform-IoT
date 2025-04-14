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

package org.laokou.common.netty.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * TcpServer属性配置.
 *
 * @author laokou
 */
@Data
@Component
@ConfigurationProperties(prefix = "spring.tcp-server")
public class SpringTcpServerProperties {

	/**
	 * 线程池数.
	 */
	private Integer groupCorePoolSize = 32;

	/**
	 * 配置项.
	 */
	private Map<String, Config> configs = new HashMap<>(0);

	@Data
	public static class Config {

		/**
		 * IP.
		 */
		private String ip;

		/**
		 * 端口.
		 */
		private int port;

		/**
		 * 服务ID.
		 */
		private String serviceId;

		/**
		 * 监听核心线程数.
		 */
		private Integer bossCorePoolSize = 2;

		/**
		 * 读写核心线程数.
		 */
		private Integer workerCorePoolSize = 32;

		/**
		 * 延迟发送 => true实时，false延迟.
		 */
		private boolean tcpNodelay = false;

		/**
		 * 请求队列最大长度.
		 */
		private int backlogLength = 1024;

		/**
		 * 读取空闲时间.
		 */
		private long readerIdleTime = 60;

		/**
		 * 写入空闲时间.
		 */
		private long writerIdleTime = 0;

		/**
		 * 全部时间.
		 */
		private long allIdleTime = 0;

		/**
		 * 开启心跳包活机制.
		 */
		private boolean keepAlive = true;

		/**
		 * 最大心跳次数.
		 */
		private int maxHeartBeatCount = 5;

	}

}
