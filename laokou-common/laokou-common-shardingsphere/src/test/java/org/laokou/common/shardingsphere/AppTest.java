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

package org.laokou.common.shardingsphere;

import org.laokou.common.i18n.util.SslUtils;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;

/**
 * @author laokou
 */
@EnableDiscoveryClient
@EnableConfigurationProperties
@MapperScan(basePackages = "org.laokou.common.shardingsphere")
@SpringBootApplication(scanBasePackages = "org.laokou")
class AppTest {

	public static void main(String[] args) throws NoSuchAlgorithmException, KeyManagementException {
		// 忽略SSL认证
		SslUtils.ignoreSSLTrust();
		// 配置关闭nacos日志，因为nacos的log4j2导致本项目的日志不输出的问题
		System.setProperty("nacos.logging.default.config.enabled", "false");
		new SpringApplicationBuilder(AppTest.class).web(WebApplicationType.SERVLET).run(args);
	}

}
