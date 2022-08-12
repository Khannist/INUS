package com.inus.sh.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Bean
	public BCryptPasswordEncoder encode() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		http.csrf().disable();
		http.authorizeRequests()
			.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
			.anyRequest()
			.permitAll()
			.and()
			.formLogin()
			.loginPage("/login")
			.usernameParameter("userId")
			.passwordParameter("password")
			.loginProcessingUrl("/login")
			.defaultSuccessUrl("/boardList")
			.failureUrl("/failed")
			.permitAll()
			.and()
			.logout()
			.logoutUrl("/doLogout")
			.logoutSuccessUrl("/login")
			.invalidateHttpSession(true);
			

		return http.build();
	}
}
