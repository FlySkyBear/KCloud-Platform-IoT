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

package org.laokou.logstash;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.laokou.common.core.annotation.EnableTaskExecutor;
import org.laokou.common.i18n.util.SslUtils;
import org.laokou.common.log4j2.annotation.EnableLog4j2ShutDown;
import org.laokou.common.nacos.annotation.EnableNacosShutDown;
import org.laokou.common.redis.annotation.EnableRedisRepository;
import org.laokou.logstash.consumer.handler.TraceLogHandler;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.scheduling.annotation.Async;
import org.springframework.util.StopWatch;
import reactor.core.scheduler.Schedulers;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutorService;

/**
 * @author laokou
 */
@Slf4j
@EnableRedisRepository
@EnableTaskExecutor
@EnableNacosShutDown
@EnableLog4j2ShutDown
@EnableDiscoveryClient
@RequiredArgsConstructor
@EnableConfigurationProperties
@EnableEncryptableProperties
@SpringBootApplication(scanBasePackages = "org.laokou")
public class LogtashApp implements CommandLineRunner {

	private final TraceLogHandler tracingLogConsumer;

	private final ExecutorService virtualThreadExecutor;

	// @formatter:off
    /// ```properties
    /// -Dserver.port=10003
    /// ```
	public static void main(String[] args) throws UnknownHostException, NoSuchAlgorithmException, KeyManagementException {
		StopWatch stopWatch = new StopWatch("Logstash应用程序");
		stopWatch.start();
		System.setProperty("address", String.format("%s:%s", InetAddress.getLocalHost().getHostAddress(), System.getProperty("server.port", "10003")));
		// 配置关闭nacos日志，因为nacos的log4j2导致本项目的日志不输出的问题
		System.setProperty("nacos.logging.default.config.enabled", "false");
		// 关闭sentinel健康检查 https://github.com/alibaba/Sentinel/issues/1494
		System.setProperty("management.health.sentinel.enabled", "false");
		// 忽略SSL认证
		SslUtils.ignoreSSLTrust();
		new SpringApplicationBuilder(LogtashApp.class).web(WebApplicationType.REACTIVE).run(args);
		stopWatch.stop();
		log.info("{}", stopWatch.prettyPrint());
	}

	@Async
	@Override
    public void run(String... args)  {
		// 监听消息
		listenMessages();
    }
    // @formatter:on

	private void listenMessages() {
		tracingLogConsumer.consumeMessages()
			.subscribeOn(Schedulers.fromExecutorService(virtualThreadExecutor))
			.subscribe();
	}

}
