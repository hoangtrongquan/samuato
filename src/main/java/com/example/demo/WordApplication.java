package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;

@SpringBootApplication
public class WordApplication{

	public static void main(String[] args) {
		SpringApplication.run(WordApplication.class, args);
	}

}
