package com.gio.shop.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


@Configuration
public class MVCConf implements WebMvcConfigurer,com.gio.shop.dto.Constants  {
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class); // view engine dung de doc data tu controller trar ve va tron HTML Code
		bean.setPrefix("/WEB-INF/views/"); // Duong da toi folder chua Views (user + manager)
		bean.setSuffix(".jsp"); // duoi file view
		return bean;
	}
	
//	static files nhu: css , js, image
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		//classpath: /src/main/resources
		registry.addResourceHandler("/user/**").addResourceLocations("classpath:/user/");
		registry.addResourceHandler("/manager/**").addResourceLocations("classpath:/manager/");
		
		// registry Handler cho upload ảnh từ ng dùng
		registry.addResourceHandler("/upload/**").addResourceLocations("file:" + UPLOAD_FOLDER_ROOT);
	}
}
