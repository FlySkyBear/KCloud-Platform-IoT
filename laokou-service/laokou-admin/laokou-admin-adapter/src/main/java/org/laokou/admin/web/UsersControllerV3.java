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

package org.laokou.admin.web;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.laokou.admin.user.api.UsersServiceI;
import org.laokou.admin.user.dto.*;
import org.laokou.admin.user.dto.clientobject.UserCO;
import org.laokou.admin.user.dto.clientobject.UserProfileCO;
import org.laokou.common.core.util.SpringEventBus;
import org.laokou.common.data.cache.annotation.DataCache;
import org.laokou.common.i18n.common.exception.BizException;
import org.laokou.common.i18n.dto.Page;
import org.laokou.common.i18n.dto.Result;
import org.laokou.common.idempotent.annotation.Idempotent;
import org.laokou.common.log.annotation.OperateLog;
import org.laokou.common.trace.annotation.TraceLog;
import org.laokou.reactor.handler.event.UnsubscribeEvent;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import reactor.core.Disposable;
import reactor.core.scheduler.Schedulers;
import reactor.util.retry.Retry;

import java.time.Duration;

import static org.laokou.common.data.cache.constant.NameConstants.USERS;
import static org.laokou.common.data.cache.model.TypeEnum.DEL;

/**
 * 用户管理控制器.
 *
 * @author laokou
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("v3/users")
@Tag(name = "用户管理", description = "用户管理")
public class UsersControllerV3 {

	private final UsersServiceI usersServiceI;

	@Idempotent
	@PostMapping
	@PreAuthorize("hasAuthority('sys:user:save')")
	@OperateLog(module = "用户管理", operation = "保存用户")
	@Operation(summary = "保存用户", description = "保存用户")
	public void saveV3(@RequestBody UserSaveCmd cmd) throws Exception {
		usersServiceI.save(cmd);
	}

	@PutMapping
	@PreAuthorize("hasAuthority('sys:user:modify')")
	@OperateLog(module = "用户管理", operation = "修改用户")
	@Operation(summary = "修改用户", description = "修改用户")
	@DataCache(name = USERS, key = "#cmd.co.id", type = DEL)
	public void modifyV3(@RequestBody UserModifyCmd cmd) throws Exception {
		usersServiceI.modify(cmd);
	}

	@DeleteMapping
	@PreAuthorize("hasAuthority('sys:user:remove')")
	@OperateLog(module = "用户管理", operation = "删除用户")
	@Operation(summary = "删除用户", description = "删除用户")
	public void removeV3(@RequestBody Long[] ids) {
		Disposable disposable = usersServiceI.remove(new UserRemoveCmd(ids))
			.doOnError(e -> log.error("删除用户失败：{}", e.getMessage(), e))
			.subscribeOn(Schedulers.boundedElastic())
			.retryWhen(Retry.backoff(5, Duration.ofMillis(100))
				.maxBackoff(Duration.ofSeconds(1))
				.jitter(0.5)
				.doBeforeRetry(retry -> log.info("Retry attempt #{}", retry.totalRetriesInARow()))) // 增强型指数退避策略
			.subscribe(v -> {
			}, e -> {
				throw new BizException("B_User_RemoveFailed", e.getMessage(), e);
			});
		SpringEventBus.publish(new UnsubscribeEvent(this, disposable, 5000));
	}

	@PostMapping(value = "import", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	@PreAuthorize("hasAuthority('sys:user:import')")
	@OperateLog(module = "用户管理", operation = "导入用户")
	@Operation(summary = "导入用户", description = "导入用户")
	public void importV3(@RequestPart("files") MultipartFile[] files) {
		usersServiceI.importI(new UserImportCmd(files));
	}

	@PostMapping("export")
	@PreAuthorize("hasAuthority('sys:user:export')")
	@OperateLog(module = "用户管理", operation = "导出用户")
	@Operation(summary = "导出用户", description = "导出用户")
	public void exportV3(@RequestBody UserExportCmd cmd) {
		usersServiceI.export(cmd);
	}

	@PutMapping("reset-pwd")
	@PreAuthorize("hasAuthority('sys:user:modify')")
	@OperateLog(module = "用户管理", operation = "重置密码")
	@Operation(summary = "重置密码", description = "重置密码")
	public void resetPwdV3(@RequestBody UserResetPwdCmd cmd) throws Exception {
		usersServiceI.resetPwd(cmd);
	}

	@PutMapping("authority")
	@PreAuthorize("hasAuthority('sys:user:modify')")
	@DataCache(name = USERS, key = "#cmd.co.id", type = DEL)
	@OperateLog(module = "用户管理", operation = "修改用户权限")
	@Operation(summary = "修改用户权限", description = "修改用户权限")
	public void modifyAuthorityV3(@RequestBody UserModifyAuthorityCmd cmd) throws Exception {
		Disposable disposable = usersServiceI.modifyAuthority(cmd)
			.doOnError(e -> log.error("修改用户权限失败：{}", e.getMessage(), e))
			.subscribeOn(Schedulers.boundedElastic())
			.retryWhen(Retry.backoff(5, Duration.ofMillis(100))
				.maxBackoff(Duration.ofSeconds(1))
				.jitter(0.5)
				.doBeforeRetry(retry -> log.info("Retry attempt #{}", retry.totalRetriesInARow()))) // 增强型指数退避策略
			.subscribe(v -> {
			}, e -> {
				throw new BizException("B_User_ModifyAuthorityFailed", e.getMessage(), e);
			});
		SpringEventBus.publish(new UnsubscribeEvent(this, disposable, 5000));
	}

	@TraceLog
	@PostMapping("page")
	@PreAuthorize("hasAuthority('sys:user:page')")
	@Operation(summary = "分页查询用户列表", description = "分页查询用户列表")
	public Result<Page<UserCO>> pageV3(@Validated @RequestBody UserPageQry qry) {
		return usersServiceI.page(qry);
	}

	@TraceLog
	@GetMapping("{id}")
	@DataCache(name = USERS, key = "#id")
	@PreAuthorize("hasAuthority('sys:user:detail')")
	@Operation(summary = "查看用户详情", description = "查看用户详情")
	public Result<UserCO> getByIdV3(@PathVariable("id") Long id) throws Exception {
		return usersServiceI.getById(new UserGetQry(id));
	}

	@TraceLog
	@GetMapping("profile")
	@Operation(summary = "查看个人信息", description = "查看个人信息")
	public Result<UserProfileCO> getProfileV3() {
		return usersServiceI.getProfile();
	}

}
