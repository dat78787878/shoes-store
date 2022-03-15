package com.example.testRest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.*;

@Controller
@SpringBootApplication
public class TestRestApplication {
    
    @RequestMapping("/")
    @ResponseBody
    String home() {
      return "Hello World!";
    }

    public static void main(String[] args) {
        SpringApplication.run(TestRestApplication.class, args);
    }
}
