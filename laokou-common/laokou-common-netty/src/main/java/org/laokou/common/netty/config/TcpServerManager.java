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

import io.netty.channel.ChannelHandler;
import lombok.RequiredArgsConstructor;
import org.laokou.common.netty.annotation.TcpServer;
import org.springframework.util.Assert;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author laokou
 */
@RequiredArgsConstructor
public final class TcpServerManager {

	private final Map<String, Server> SERVER_MAP = new HashMap<>();

	private final SpringTcpServerProperties springTcpServerProperties;

	private final List<ChannelHandler> channelHandlers;

	public synchronized void start() {
		SERVER_MAP.values().forEach(Server::start);
	}

	public synchronized void stop() {
		SERVER_MAP.values().forEach(Server::stop);
	}

	public synchronized void initialize() {
		List<ChannelHandler> tcpServerList = channelHandlers.stream()
			.filter(item -> item.getClass().isAnnotationPresent(org.laokou.common.netty.annotation.TcpServer.class))
			.toList();
		Assert.noNullElements(tcpServerList, "TcpServer not found");
		Map<String, SpringTcpServerProperties.Config> configs = springTcpServerProperties.getConfigs();
		Assert.isTrue(tcpServerList.stream()
			.allMatch(handler -> configs.containsKey(
					handler.getClass().getAnnotation(org.laokou.common.netty.annotation.TcpServer.class).key())),
				"Some Tcp Server handlers do not have corresponding config entries");
		for (ChannelHandler channelHandler : tcpServerList) {
			TcpServer tcpServer = channelHandler.getClass().getAnnotation(TcpServer.class);
			Assert.notNull(tcpServer, "TcpServer annotation not found");
			String key = tcpServer.key();
			SpringTcpServerProperties.Config config = configs.get(key);
			Assert.notNull(config, "Tcp Server Config not found");
			org.laokou.common.netty.config.TcpServer server = new org.laokou.common.netty.config.TcpServer(
					channelHandler, config);
			SERVER_MAP.putIfAbsent(key, server);
		}
	}

}
