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

package org.laokou.admin.user.command;

import lombok.extern.slf4j.Slf4j;
import org.laokou.admin.user.ability.UserDomainService;
import org.laokou.admin.user.convertor.UserConvertor;
import org.laokou.admin.user.dto.UserSaveCmd;
import org.laokou.admin.user.model.UserE;
import org.laokou.admin.user.service.extensionpoint.UserParamValidatorExtPt;
import org.laokou.common.domain.annotation.CommandLog;
import org.laokou.common.i18n.common.exception.BizException;
import org.laokou.common.mybatisplus.util.TransactionalUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

/**
 * 保存用户命令执行器.
 *
 * @author laokou
 */
@Slf4j
@Component
public class UserSaveCmdExe {

	@Autowired
	@Qualifier("saveUserParamValidator")
	private UserParamValidatorExtPt saveUserParamValidator;

	private final UserDomainService userDomainService;

	private final TransactionalUtils transactionalUtils;

	public UserSaveCmdExe(UserDomainService userDomainService, TransactionalUtils transactionalUtils) {
		this.userDomainService = userDomainService;
		this.transactionalUtils = transactionalUtils;
	}

	@CommandLog
	public void executeVoid(UserSaveCmd cmd) throws Exception {
		// 校验参数
		UserE userE = UserConvertor.toEntity(cmd.getCo());
		saveUserParamValidator.validate(userE);
		transactionalUtils.executeInTransaction(() -> {
			try {
				userDomainService.create(userE);
			}
			catch (Exception e) {
				log.error("新增用户信息失败，错误信息：{}", e.getMessage(), e);
				throw new BizException("B_User_CreateError", e.getMessage(), e);
			}
		});
	}

}
