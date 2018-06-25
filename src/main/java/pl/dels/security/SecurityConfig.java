package pl.dels.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Bean
	public UserDetailsService customUserDetailsService() {
		return new CustomUserDetailsService();
	}
	
	@SuppressWarnings("deprecation")
	@Bean
	public static NoOpPasswordEncoder passwordEncoder() {
	return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/register", "/resources/**", "/", "/success", "/problem").permitAll()
		.anyRequest()
		.authenticated()
		.and()
		  .formLogin()
          .loginPage("/login")
              .permitAll()
		.and()
        .csrf().disable();
          /*.loginProcessingUrl("/processlogin")
              .permitAll()
              .usernameParameter("user")
              .passwordParameter("pass")
          .and()
      .logout()
          .logoutUrl("/logmeout")
              .logoutSuccessUrl("/")
              .permitAll();*/
	}
}