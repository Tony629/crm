package com.shinetech.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 优选CRM主启动类
 * **/
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class SelectedApplication {

    public static void main(String[] args){
        SpringApplication.run(SelectedApplication.class,args);
        System.out.println("===SHINETECH优选CRM启动成功===");
    }
}
