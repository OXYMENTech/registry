package com.spring.app.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/wehome")
public class IndexController {

    @GetMapping("/greet")
    public String hello() {
        return "Hello";
    }
}