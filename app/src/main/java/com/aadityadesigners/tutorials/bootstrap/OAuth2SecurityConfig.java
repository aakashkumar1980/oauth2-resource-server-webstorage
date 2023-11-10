package com.aadityadesigners.tutorials.bootstrap;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import static org.springframework.security.config.Customizer.withDefaults;


@Configuration
@EnableWebSecurity
@PropertySources({
    @PropertySource(value = "classpath:security-oauth2.yml", factory = YamlPropertyLoaderFactory.class)
})
public class OAuth2SecurityConfig {

  // Configure security filter chain
  @Bean
  public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

    http
        .authorizeHttpRequests(request -> request
            .requestMatchers("/api/albums").hasAuthority("SCOPE_albums:read")
            .requestMatchers("/api/albums/list").permitAll()
            .anyRequest().authenticated()
        )    
        .oauth2ResourceServer(oauth2 -> oauth2
            .jwt(withDefaults())
        );

    return http.build();
  }

}
