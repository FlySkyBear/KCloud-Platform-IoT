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

package org.laokou.common.core;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Test;
import org.laokou.common.core.event.EventBus;
import org.laokou.common.core.utils.SpringContextUtil;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestConstructor;

/**
 * @author laokou
 */
@SpringBootTest
@RequiredArgsConstructor
@ContextConfiguration(classes = { SpringContextUtil.class, TestEventListener.class })
@TestConstructor(autowireMode = TestConstructor.AutowireMode.ALL)
class EventBusTest {

	@Test
	void publish() {
		EventBus.publish(new TestEvent(this, "123"));
	}

}