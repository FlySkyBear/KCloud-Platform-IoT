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

import jakarta.servlet.http.HttpServletRequest;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.laokou.common.core.util.IpUtils;

import static org.laokou.common.core.util.IpUtils.LOCAL_IPV4;
import static org.laokou.common.core.util.IpUtils.UNKNOWN_IP;
import static org.mockito.Mockito.mock;

/**
 * @author laokou
 */
class IpUtilsTest {

	@Test
	void testIp() {
		HttpServletRequest request = mock(HttpServletRequest.class);
		Assertions.assertNotNull(request);
		String ip = IpUtils.getIpAddr(request);
		Assertions.assertEquals(LOCAL_IPV4, ip);
		ip = IpUtils.getIpAddr(null);
		Assertions.assertEquals(UNKNOWN_IP, ip);
	}

}
