/*
 * Copyright (c) 2022-2024 KCloud-Platform-IoT Author or Authors. All Rights Reserved.
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

package org.laokou.generator.column.gateway;

import org.laokou.generator.column.model.ColumnE;

/**
 *
 * 代码生成器字段网关【防腐】.
 *
 * @author laokou
 */
public interface ColumnGateway {

	/**
	 * 新增代码生成器字段.
	 */
	void create(ColumnE columnE);

	/**
	 * 修改代码生成器字段.
	 */
	void update(ColumnE columnE);

	/**
	 * 删除代码生成器字段.
	 */
	void delete(Long[] ids);

}