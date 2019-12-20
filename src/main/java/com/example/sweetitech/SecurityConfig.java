package com.example.sweetitech;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private LogoutSuccessHandler myLogoutSuccessHandler;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth.inMemoryAuthentication()
                .withUser("admin").password("{noop}123456").roles("ADMIN");

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login*","/logout*").permitAll()
                .antMatchers("/","/home").access("hasRole('ROLE_ADMIN')");
                  http.formLogin().
                          loginProcessingUrl("/perform_login")
                          .defaultSuccessUrl("/home", true)
                          .failureUrl("/login?error")
                          .and()
                          .logout()
                          .logoutSuccessHandler(myLogoutSuccessHandler)
                          .deleteCookies("JSESSIONID");



    }

}
