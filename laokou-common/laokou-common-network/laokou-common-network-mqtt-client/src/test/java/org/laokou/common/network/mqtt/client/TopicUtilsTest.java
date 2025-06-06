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

package org.laokou.common.network.mqtt.client;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.laokou.common.network.mqtt.client.util.TopicUtils;

/**
 * @author laokou
 */
class TopicUtilsTest {

	@Test
	void testMatch() {
		Assertions.assertTrue(TopicUtils.match("test/topic", "test/topic"));
		Assertions.assertFalse(TopicUtils.match("test/topic", "test/topic/"));
		Assertions.assertTrue(TopicUtils.match("test/#", "test/topic/test"));
		Assertions.assertTrue(TopicUtils.match("test/+", "test/topic"));
		Assertions.assertTrue(TopicUtils.match("test/+/test", "test/topic/test"));
		Assertions.assertTrue(TopicUtils.match("test/+/+", "test/topic/test"));
	}

}
