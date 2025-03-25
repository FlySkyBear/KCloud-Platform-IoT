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

package org.laokou.common.secret.aop;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.laokou.common.core.util.ArrayUtils;
import org.laokou.common.core.util.MapUtils;
import org.laokou.common.core.util.RequestUtils;
import org.laokou.common.i18n.util.JacksonUtils;
import org.laokou.common.secret.util.SecretUtils;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/**
 * @author laokou
 */
@Slf4j
@Aspect
@Component
public class ApiSecretAop {

	/**
	 * 随机字符.
	 */
	public static final String NONCE = "nonce";

	/**
	 * 签名（MD5）.
	 */
	public static final String SIGN = "sign";

	/**
	 * 时间戳.
	 */
	public static final String TIMESTAMP = "timestamp";

	/**
	 * 应用标识.
	 */
	public static final String APP_KEY = "app-key";

	/**
	 * 应用密钥.
	 */
	public static final String APP_SECRET = "app-secret";

	private static Map<String, String> getParameterMap(HttpServletRequest request) throws IOException {
		Map<String, String[]> parameterMap = request.getParameterMap();
		if (MapUtils.isNotEmpty(parameterMap)) {
			return MapUtils.getParameterMap(parameterMap).toSingleValueMap();
		}
		byte[] requestBody = RequestUtils.getRequestBody(request);
		return ArrayUtils.isEmpty(requestBody) ? Collections.emptyMap()
				: JacksonUtils.toMap(requestBody, String.class, String.class);
	}

	@Around("@annotation(org.laokou.common.secret.annotation.ApiSecret)")
	public Object doAround(ProceedingJoinPoint point) throws Throwable {
		HttpServletRequest request = RequestUtils.getHttpServletRequest();
		String nonce = request.getHeader(NONCE);
		String timestamp = request.getHeader(TIMESTAMP);
		String sign = request.getHeader(SIGN);
		String appKey = request.getHeader(APP_KEY);
		String appSecret = request.getHeader(APP_SECRET);
		Map<String, String> parameterMap = getParameterMap(request);
		SecretUtils.verification(appKey, appSecret, sign, nonce, timestamp, parameterMap);
		return point.proceed();
	}

}
