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

package org.laokou.infrastructure.config;

import com.fasterxml.jackson.core.JsonProcessingException;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.handler.timeout.IdleStateEvent;
import io.netty.util.ReferenceCountUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.laokou.client.dto.clientobject.MessageCO;
import org.laokou.common.i18n.util.JacksonUtils;
import org.laokou.common.i18n.dto.Result;
import org.laokou.common.i18n.util.ObjectUtils;
import org.laokou.common.i18n.util.StringUtils;
import org.laokou.common.netty.config.SpringWebSocketServerProperties;
import org.laokou.common.netty.config.WebSocketSessionHeartBeatManager;
import org.laokou.common.netty.config.WebSocketSessionManager;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import static org.laokou.common.i18n.common.exception.StatusCode.UNAUTHORIZED;
import static org.laokou.domain.model.MessageType.PING;
import static org.laokou.domain.model.MessageType.PONG;

/**
 * WebSocket自定义处理器.
 *
 * @author laokou
 */
@Slf4j
@Component
@ChannelHandler.Sharable
@RequiredArgsConstructor
public class WebSocketServerHandler extends ChannelInboundHandlerAdapter {

	private final WebSocketMessageProcessor messageProcessor;

	private final SpringWebSocketServerProperties springWebSocketServerProperties;

	/**
	 * see
	 * {@link io.netty.channel.SimpleChannelInboundHandler#channelRead(ChannelHandlerContext, Object)}.
	 * @param ctx 处理器上下文
	 * @param msg 消息
	 */
	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
		boolean release = true;
		// @formatter:off
		try {
			if (msg instanceof WebSocketFrame frame
				&& frame instanceof TextWebSocketFrame textWebSocketFrame) {
				read(ctx, textWebSocketFrame);
			}
			else {
				// 传递下一个处理器
				release = false;
				super.channelRead(ctx, msg);
			}
		}
		finally {
			if (release) {
				ReferenceCountUtil.release(msg);
			}
		}
		// @formatter:on
	}

	@Override
	public void handlerAdded(ChannelHandlerContext ctx) {
		log.info("建立连接：{}", ctx.channel().id().asLongText());
	}

	@Override
	public void handlerRemoved(ChannelHandlerContext ctx) throws InterruptedException {
		String channelId = ctx.channel().id().asLongText();
		log.info("断开连接：{}", channelId);
		WebSocketSessionManager.remove(channelId);
		WebSocketSessionHeartBeatManager.removeHeartBeat(channelId);
	}

	@Override
	public void userEventTriggered(ChannelHandlerContext ctx, Object evt) throws Exception {
		// 读空闲事件
		if (evt instanceof IdleStateEvent idleStateEvent
				&& ObjectUtils.equals(idleStateEvent.state(), IdleStateEvent.READER_IDLE_STATE_EVENT.state())) {
			Channel channel = ctx.channel();
			String clientId = channel.id().asLongText();
			int maxHeartBeatCount = springWebSocketServerProperties.getMaxHeartBeatCount();
			if (WebSocketSessionHeartBeatManager.getHeartBeat(clientId) >= maxHeartBeatCount) {
				log.info("关闭连接，超过{}次未接收{}心跳{}", maxHeartBeatCount, clientId, PONG.name().toLowerCase());
				ctx.close();
				return;
			}
			String ping = PING.name().toLowerCase();
			log.info("发送{}心跳{}", clientId, ping);
			ctx.writeAndFlush(new TextWebSocketFrame(ping));
			WebSocketSessionHeartBeatManager.incrementHeartBeat(clientId);
		}
		else {
			super.userEventTriggered(ctx, evt);
		}
	}

	private void read(ChannelHandlerContext ctx, TextWebSocketFrame frame)
			throws JsonProcessingException, InterruptedException {
		Channel channel = ctx.channel();
		String str = frame.text();
		if (StringUtils.isEmpty(str)) {
			channel.writeAndFlush(new TextWebSocketFrame(JacksonUtils.toJsonStr(Result.fail(UNAUTHORIZED))));
			ctx.close();
			return;
		}
		MessageCO message = JacksonUtils.toBean(str, MessageCO.class);
		Assert.notNull(message.getPayload(), "payload must not be null");
		Assert.notNull(message.getType(), "type must not bee null");
		messageProcessor.processMessage(message, channel);
	}

}
