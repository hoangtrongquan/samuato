package com.example.demo;

import com.cksource.ckfinder.servlet.CKFinderServlet;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;

@SpringBootApplication
public class WordApplication implements ServletContextInitializer, WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(WordApplication.class, args);
	}

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("ckfinder", new CKFinderServlet());
		dispatcher.setLoadOnStartup(1);
		dispatcher.addMapping("/ckfinder/*");
		dispatcher.setInitParameter("scan-path", "com.example.demo.ckfinder.auth");
		dispatcher.setInitParameter("scan-path", "com.example.demo.ckfinder.config");
		dispatcher.setInitParameter("scan-path", "com.example.demo.ckfinder.listener");

		FilterRegistration.Dynamic filter = servletContext.addFilter("x-content-options", new Filter() {
			@Override
			public void init(FilterConfig filterConfig) {
			}

			@Override
			public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
				((HttpServletResponse) response).setHeader("X-Content-Type-Options", "nosniff");
				chain.doFilter(request, response);
			}
			@Override
			public void destroy() {
			}
		});

		filter.addMappingForUrlPatterns(null, false, "/userfiles/*");

		String tempDirectory;

		try {
			tempDirectory = Files.createTempDirectory("ckfinder").toString();
		} catch (IOException e) {
			tempDirectory = null;
		}

		dispatcher.setMultipartConfig(new MultipartConfigElement(tempDirectory));
	}
}
