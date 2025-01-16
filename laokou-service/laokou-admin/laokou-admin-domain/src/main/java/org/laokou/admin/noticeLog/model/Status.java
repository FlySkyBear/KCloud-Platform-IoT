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

package org.laokou.admin.noticeLog.model;

import lombok.Getter;
import org.laokou.common.i18n.utils.EnumParser;

/**
 * 状态枚举.
 *
 * @author laokou
 */
@Getter
public enum Status {

	// @formatter:off
	OK(0, "成功"),

	FAIL(1, "失败");

	private final int code;

	private final String desc;

	Status(int code, String desc) {
		this.code = code;
		this.desc = desc;
	}

	public static Status getByCode(int code) {
		return EnumParser.parse(Status.class, Status::getCode, code);
	}

	// @formatter:on

}