package com.thevarungupta.spring.boot.sample.app;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping
    public String index(){
        return "Welcome to Spring Boot App deployed using DevOps";
    }
}
