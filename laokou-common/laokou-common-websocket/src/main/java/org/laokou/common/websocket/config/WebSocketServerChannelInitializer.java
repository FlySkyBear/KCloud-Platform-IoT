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

package org.laokou.common.websocket.config;

import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.ssl.SslContext;
import io.netty.handler.ssl.SslContextBuilder;
import io.netty.handler.ssl.SslHandler;
import io.netty.handler.ssl.util.InsecureTrustManagerFactory;
import io.netty.util.concurrent.EventExecutorGroup;
import org.laokou.common.i18n.util.ResourceUtils;
import org.springframework.stereotype.Component;

import java.io.InputStream;

/**
 * WebSocket处理类.
 *
 * @author laokou
 */
@Component("webSocketServerChannelInitializer")
public final class WebSocketServerChannelInitializer extends AbstractWebSocketServerChannelInitializer {

	private final ChannelHandler webSocketServerHandler;

	private final EventExecutorGroup webSocketEventExecutorGroup;

	private final SslContext sslContext;

	public WebSocketServerChannelInitializer(SpringWebSocketServerProperties springWebSocketServerProperties,
			ChannelHandler webSocketServerHandler, EventExecutorGroup webSocketEventExecutorGroup) throws Exception {
		super(springWebSocketServerProperties);
		this.webSocketServerHandler = webSocketServerHandler;
		this.webSocketEventExecutorGroup = webSocketEventExecutorGroup;
		this.sslContext = getSslContext();
	}

	@Override
	protected void preHandler(SocketChannel channel, ChannelPipeline pipeline) {
		pipeline.addLast(new SslHandler(this.sslContext.newEngine(channel.alloc())));
	}

	@Override
	protected void postHandler(SocketChannel channel, ChannelPipeline pipeline) {
		// 业务处理
		pipeline.addLast(webSocketEventExecutorGroup, webSocketServerHandler);
	}

	private SslContext getSslContext() throws Exception {
		// @formatter:off
		// 生成证书 => openssl pkcs12 -in scg-keystore.p12 -clcerts -nokeys -out certificate.crt
		InputStream keyCertChainIn = ResourceUtils.getResource(springWebSocketServerProperties.getKeyCertChainPath()).getInputStream();
		// 生成私钥 => openssl pkcs12 -in scg-keystore.p12 -nocerts -out private.key
		InputStream keyCertPrivateKeyIn = ResourceUtils.getResource(springWebSocketServerProperties.getKeyCertPrivateKeyPath()).getInputStream();
		return SslContextBuilder.forServer(keyCertChainIn, keyCertPrivateKeyIn, springWebSocketServerProperties.getKeyCertPrivateKeyPassword())
			// 忽略SSL验证
			.trustManager(InsecureTrustManagerFactory.INSTANCE)
			.build();
		// @formatter:on
	}

}
