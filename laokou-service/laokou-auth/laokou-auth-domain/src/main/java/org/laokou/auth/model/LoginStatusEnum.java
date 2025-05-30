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

package org.laokou.auth.model;

import lombok.Getter;

/**
 * 登录状态枚举.
 *
 * @author laokou
 */
@Getter
public enum LoginStatusEnum {

	// @formatter:off
	OK(0, "登录成功"),

	FAIL(1, "登录失败");

	private final int code;

	private final String desc;

	LoginStatusEnum(int code, String desc) {
		this.code = code;
		this.desc = desc;
	}
	// @formatter:on

}
