package com.hhdl.evtp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @Auther: whq
 * @Date: 2018/11/26 14:05
 * @Description:
 */
@Configuration
public class MyWebAppConfigurer extends WebMvcConfigurerAdapter {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("*")
                .allowedOrigins("http://10.168.1.216:3001")
                .allowedMethods("GET", "POST")
                .allowCredentials(false).maxAge(3600);
    }
}
