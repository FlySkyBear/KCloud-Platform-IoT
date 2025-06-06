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

package org.laokou.generator.column.command;

import lombok.RequiredArgsConstructor;
import org.laokou.generator.column.dto.ColumnSaveCmd;
import org.springframework.stereotype.Component;
import org.laokou.generator.column.convertor.ColumnConvertor;
import org.laokou.generator.column.ability.ColumnDomainService;
import org.laokou.common.mybatisplus.util.TransactionalUtils;

/**
 *
 * 保存代码生成器字段命令执行器.
 *
 * @author laokou
 */
@Component
@RequiredArgsConstructor
public class ColumnSaveCmdExe {

	private final ColumnDomainService columnDomainService;

	private final TransactionalUtils transactionalUtils;

	public void executeVoid(ColumnSaveCmd cmd) {
		// 校验参数
		transactionalUtils
			.executeInTransaction(() -> columnDomainService.create(ColumnConvertor.toEntity(cmd.getCo())));
	}

}
