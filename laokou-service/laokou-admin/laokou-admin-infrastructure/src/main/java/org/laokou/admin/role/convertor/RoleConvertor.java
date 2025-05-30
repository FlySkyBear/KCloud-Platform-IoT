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

package org.laokou.admin.role.convertor;

import org.laokou.admin.role.dto.clientobject.RoleCO;
import org.laokou.admin.role.factory.RoleDomainFactory;
import org.laokou.admin.role.gatewayimpl.database.dataobject.RoleDO;
import org.laokou.admin.role.gatewayimpl.database.dataobject.RoleDeptDO;
import org.laokou.admin.role.gatewayimpl.database.dataobject.RoleMenuDO;
import org.laokou.admin.role.model.RoleE;

import java.util.Collections;
import java.util.List;

/**
 * 角色转换器.
 *
 * @author laokou
 */
public class RoleConvertor {

	public static RoleDO toDataObject(Long id, RoleE roleE, boolean isInsert) {
		RoleDO roleDO = new RoleDO();
		if (isInsert) {
			roleDO.setId(id);
		}
		else {
			roleDO.setId(roleE.getId());
		}
		roleDO.setName(roleE.getName());
		roleDO.setSort(roleE.getSort());
		roleDO.setDataScope(roleE.getDataScope());
		return roleDO;
	}

	public static List<RoleMenuDO> toDataObjects(Long id, RoleE roleE, Long roleId) {
		return roleE.getMenuIds().stream().map(menuId -> {
			RoleMenuDO roleMenuDO = new RoleMenuDO();
			roleMenuDO.setId(id);
			roleMenuDO.setRoleId(roleId);
			roleMenuDO.setMenuId(Long.valueOf(menuId));
			return roleMenuDO;
		}).toList();
	}

	public static List<RoleMenuDO> toDataObjects(RoleE roleE) {
		return roleE.getRoleMenuIds().stream().map(id -> {
			RoleMenuDO roleMenuDO = new RoleMenuDO();
			roleMenuDO.setId(id);
			return roleMenuDO;
		}).toList();
	}

	public static List<RoleDeptDO> toDataObjs(Long id, RoleE roleE, Long roleId) {
		return roleE.getDeptIds().stream().map(deptId -> {
			RoleDeptDO roleDeptDO = new RoleDeptDO();
			roleDeptDO.setId(id);
			roleDeptDO.setRoleId(roleId);
			roleDeptDO.setDeptId(Long.valueOf(deptId));
			return roleDeptDO;
		}).toList();
	}

	public static List<RoleDeptDO> toDataObjs(RoleE roleE) {
		return roleE.getRoleDeptIds().stream().map(id -> {
			RoleDeptDO roleDeptDO = new RoleDeptDO();
			roleDeptDO.setId(id);
			return roleDeptDO;
		}).toList();
	}

	public static List<RoleCO> toClientObjects(List<RoleDO> roleDOList) {
		return roleDOList.stream().map(RoleConvertor::toClientObject).toList();
	}

	public static RoleCO toClientObject(RoleDO roleDO) {
		RoleCO roleCO = new RoleCO();
		roleCO.setId(roleDO.getId());
		roleCO.setName(roleDO.getName());
		roleCO.setSort(roleDO.getSort());
		roleCO.setDataScope(roleDO.getDataScope());
		roleCO.setCreateTime(roleDO.getCreateTime());
		return roleCO;
	}

	public static RoleE toEntity(RoleCO roleCO) {
		RoleE roleE = RoleDomainFactory.getRole();
		roleE.setId(roleCO.getId());
		roleE.setName(roleCO.getName());
		roleE.setSort(roleCO.getSort());
		return roleE;
	}

	public static RoleE toEntity(RoleCO roleCO, Long id) {
		RoleE roleE = RoleDomainFactory.getRole();
		roleE.setId(id);
		roleE.setMenuIds(roleCO.getMenuIds());
		roleE.setDataScope(roleCO.getDataScope());
		roleE.setDeptIds(roleCO.getDeptIds());
		roleE.setRoleIds(Collections.singletonList(id));
		return roleE;
	}

}
