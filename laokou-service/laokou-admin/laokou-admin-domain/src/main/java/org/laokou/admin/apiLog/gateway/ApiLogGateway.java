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

package org.laokou.admin.apiLog.gateway;

import org.laokou.admin.apiLog.model.ApiLogE;

/**
 * Api日志网关【防腐】.
 *
 * @author laokou
 */
public interface ApiLogGateway {

	/**
	 * 新增Api日志.
	 */
	void create(ApiLogE apiLogE);

	/**
	 * 修改Api日志.
	 */
	void update(ApiLogE apiLogE);

	/**
	 * 删除Api日志.
	 */
	void delete(Long[] ids);

}
