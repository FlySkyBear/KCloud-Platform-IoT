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

package org.laokou.auth.common.constant;

/**
 * @author laokou
 */
public final class BizConstants {

	private BizConstants() {
	}

	/**
	 * 场景标识.
	 */
	public static final String SCENARIO = "iot";

	/**
	 * 业务用例.
	 */
	public static final String USE_CASE_AUTH = "auth";

	/**
	 * 业务用例.
	 */
	public static final String USE_CASE_CAPTCHA = "captcha";

	/**
	 * 邮箱验证码.
	 */
	public static final String MAIL_CAPTCHA = "mailCaptcha";

	/**
	 * 手机验证码.
	 */
	public static final String MOBILE_CAPTCHA = "mobileCaptcha";

	/**
	 * 查询用户失败.
	 */
	public static final String DEPT_QUERY_FAILED = "B_Dept_QueryFailed";

	/**
	 * 查询用户失败.
	 */
	public static final String MENU_QUERY_FAILED = "B_Menu_QueryFailed";

	/**
	 * 查询用户失败.
	 */
	public static final String USER_QUERY_FAILED = "B_User_QueryFailed";

}
