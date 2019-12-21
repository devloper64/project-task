package com.example.sweetitech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com.example.sweetitech"})
public class SweetitechApplication {

	public static void main(String[] args) {
		SpringApplication.run(SweetitechApplication.class, args);
	}

}
