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

package org.laokou.auth.service.authentication;

import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.server.authorization.authentication.OAuth2AuthorizationGrantAuthenticationToken;

import java.util.Map;

/**
 * 抽象令牌.
 *
 * @author laokou
 */
abstract class AbstractOAuth2AuthenticationToken extends OAuth2AuthorizationGrantAuthenticationToken {

	/**
	 * Subclass constructor.
	 * @param authorizationGrantType the authorization grant type
	 * @param clientPrincipal the authenticated client principal
	 * @param additionalParameters the additional parameters
	 */
	protected AbstractOAuth2AuthenticationToken(AuthorizationGrantType authorizationGrantType,
			Authentication clientPrincipal, Map<String, Object> additionalParameters) {
		super(authorizationGrantType, clientPrincipal, additionalParameters);
	}

}
