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

package org.laokou.admin.user.dto.clientobject;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.laokou.common.i18n.dto.ClientObject;

import java.time.Instant;
import java.util.List;

/**
 * 用户客户端对象.
 *
 * @author laokou
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserCO extends ClientObject {

	/**
	 * ID.
	 */
	private Long id;

	/**
	 * 用户密码.
	 */
	private String password;

	/**
	 * 超级管理员标识 0否 1是.
	 */
	private Integer superAdmin;

	/**
	 * 用户邮箱.
	 */
	private String mail;

	/**
	 * 用户手机号.
	 */
	private String mobile;

	/**
	 * 用户状态 0启用 1禁用.
	 */
	private Integer status;

	/**
	 * 用户头像.
	 */
	private String avatar;

	/**
	 * 用户名.
	 */
	private String username;

	/**
	 * 创建时间.
	 */
	private Instant createTime;

	/**
	 * 角色IDS.
	 */
	private List<String> roleIds;

	/**
	 * 部门IDS.
	 */
	private List<String> deptIds;

}
