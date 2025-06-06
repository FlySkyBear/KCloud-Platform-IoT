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

package org.laokou.admin.role.service.extensionpoint.extension;

import lombok.RequiredArgsConstructor;
import org.laokou.admin.role.gatewayimpl.database.RoleMapper;
import org.laokou.admin.role.model.RoleE;
import org.laokou.admin.role.service.extensionpoint.RoleParamValidatorExtPt;
import org.laokou.common.i18n.util.ParamValidator;
import org.springframework.stereotype.Component;

/**
 * @author laokou
 */
@Component("modifyRoleParamValidator")
@RequiredArgsConstructor
public class ModifyRoleParamValidator implements RoleParamValidatorExtPt {

	private final RoleMapper roleMapper;

	@Override
	public void validate(RoleE roleE) {
		ParamValidator.validate(
				// 校验ID
				RoleParamValidator.validateId(roleE),
				// 校验名称
				RoleParamValidator.validateName(roleE, roleMapper, false),
				// 校验排序
				RoleParamValidator.validateSort(roleE));
	}

}
