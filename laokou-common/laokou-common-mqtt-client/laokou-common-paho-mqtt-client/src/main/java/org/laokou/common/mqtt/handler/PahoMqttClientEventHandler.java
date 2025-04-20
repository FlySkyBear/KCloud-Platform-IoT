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

package org.laokou.common.mqtt.handler;

import org.eclipse.paho.mqttv5.common.MqttException;
import org.laokou.common.mqtt.client.handler.event.CloseEvent;
import org.laokou.common.mqtt.client.handler.event.OpenEvent;
import org.laokou.common.mqtt.client.handler.event.SubscribeEvent;
import org.laokou.common.mqtt.client.handler.event.UnSubscribeEvent;
import org.laokou.common.mqtt.config.PahoMqttClientManager;
import org.springframework.context.event.EventListener;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

/**
 * @author laokou
 */
@Component
public class PahoMqttClientEventHandler {

	@Async
	@EventListener
	public void onSubscribeEvent(SubscribeEvent event) throws MqttException {
		PahoMqttClientManager.subscribe(event.getClientId(), event.getTopics(), event.getQosArray());
	}

	@Async
	@EventListener
	public void onUnsubscribeEvent(UnSubscribeEvent event) throws MqttException {
		PahoMqttClientManager.unsubscribe(event.getClientId(), event.getTopics());
	}

	@Async
	@EventListener
	public void onOpenEvent(OpenEvent event) {
		PahoMqttClientManager.open(event.getClientId());
	}

	@Async
	@EventListener
	public void onCloseEvent(CloseEvent event) {
		PahoMqttClientManager.close(event.getClientId());
	}

}
