package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/movieapp")
public class LoginController {
    
    @GetMapping("/login")
    public String login() {
        return "index";
    }
    
    @PostMapping("/auth")
    public String login(@RequestParam("phone") String phone, @RequestParam("password") String password) {
    	
        System.out.println("Phone: " + phone);
        System.out.println("Password: " + password);

        return "redirect:/movieapp/dashboard";
    }
}
