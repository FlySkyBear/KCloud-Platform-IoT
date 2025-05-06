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

package org.laokou.gateway;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.laokou.common.core.util.SpringEventBus;
import org.laokou.common.core.util.ThreadUtils;
import org.laokou.common.i18n.util.SslUtils;
import org.laokou.common.redis.annotation.EnableReactiveRedisRepository;
import org.laokou.gateway.repository.NacosRouteDefinitionRepository;
import org.laokou.reactor.handler.event.UnsubscribeEvent;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.redis.RedisReactiveAutoConfiguration;
import org.springframework.boot.autoconfigure.security.reactive.ReactiveUserDetailsServiceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.util.StopWatch;
import reactor.core.Disposable;
import reactor.core.publisher.Hooks;
import reactor.core.scheduler.Schedulers;
import reactor.util.retry.Retry;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.time.Duration;
import java.util.concurrent.ExecutorService;

/**
 * 网关服务启动类. exposeProxy=true => 使用Cglib代理，在切面中暴露代理对象，进行方法增强
 *
 * @author laokou
 */
@Slf4j
@EnableDiscoveryClient
@EnableEncryptableProperties
@EnableConfigurationProperties
@EnableReactiveRedisRepository
@RequiredArgsConstructor
@EnableAspectJAutoProxy
@SpringBootApplication(scanBasePackages = "org.laokou",
		exclude = { RedisReactiveAutoConfiguration.class, ReactiveUserDetailsServiceAutoConfiguration.class })
public class GatewayApp implements CommandLineRunner {

	private final NacosRouteDefinitionRepository nacosRouteDefinitionRepository;

	// @formatter:off
    /// ```properties
    /// -Dserver.port=5555
	/// -XX:+UseZGC
	/// -XX:+ZGenerational
    /// ```
    /// ```properties
    /// client_id => 95TxSsTPFA3tF12TBSMmUVK0da
    /// client_secret => FpHwIfw4wY92dO
    /// ```
	public static void main(String[] args) throws UnknownHostException, NoSuchAlgorithmException, KeyManagementException {
		StopWatch stopWatch = new StopWatch("Gateway应用程序");
		stopWatch.start();
		System.setProperty("address", String.format("%s:%s", InetAddress.getLocalHost().getHostAddress(), System.getProperty("server.port", "5555")));
		// 配置关闭nacos日志，因为nacos的log4j2导致本项目的日志不输出的问题
		System.setProperty("nacos.logging.default.config.enabled", "false");
		// 关闭sentinel健康检查 https://github.com/alibaba/Sentinel/issues/1494
		System.setProperty("management.health.sentinel.enabled", "false");
		// 忽略SSL认证
		SslUtils.ignoreSSLTrust();
		// 开启reactor的上下文传递
		// https://spring.io/blog/2023/03/30/context-propagation-with-project-reactor-3-unified-bridging-between-reactive
		Hooks.enableAutomaticContextPropagation();
		// 启用虚拟线程支持
		System.setProperty("reactor.schedulers.defaultBoundedElasticOnVirtualThreads", "true");
		new SpringApplicationBuilder(GatewayApp.class).web(WebApplicationType.REACTIVE).run(args);
		stopWatch.stop();
		log.info("{}", stopWatch.prettyPrint());
	}

	@Override
    public void run(String... args)  {
		// 同步路由
		try (ExecutorService virtualTaskExecutor = ThreadUtils.newVirtualTaskExecutor()) {
			virtualTaskExecutor.execute(this::syncRouters);
		}
    }

	private void syncRouters() {
		// 删除路由
		Disposable disposable1 = nacosRouteDefinitionRepository.removeRouters()
			.subscribeOn(Schedulers.boundedElastic())
			.retryWhen(Retry.backoff(5, Duration.ofMillis(100))
				.maxBackoff(Duration.ofSeconds(1))
				.jitter(0.5)
				.doBeforeRetry(retry -> log.info("Retry attempt #{}", retry.totalRetriesInARow()))
			)  // 增强型指数退避策略
			.subscribe(delFlag -> {
			if (delFlag) {
				log.info("删除路由成功");
			} else {
				log.error("删除路由失败");
			}
		});
		// 保存路由
		Disposable disposable2 = nacosRouteDefinitionRepository.saveRouters()
			.subscribeOn(Schedulers.boundedElastic())
			.retryWhen(Retry.backoff(5, Duration.ofMillis(100))
				.maxBackoff(Duration.ofSeconds(1))
				.jitter(0.5)
				.doBeforeRetry(retry -> log.info("Retry attempt #{}", retry.totalRetriesInARow()))
			)  // 增强型指数退避策略
			.subscribe(saveFlag -> {
			if (saveFlag) {
				log.info("保存路由成功");
			} else {
				log.error("保存路由失败");
			}
		});
		// 取消订阅
		SpringEventBus.publish(new UnsubscribeEvent(this, disposable1, 5000));
		// 取消订阅
		SpringEventBus.publish(new UnsubscribeEvent(this, disposable2, 5000));
	}

    // @formatter:on

}
