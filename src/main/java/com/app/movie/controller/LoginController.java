package com.app.movie.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.movie.service.AuthService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/movieapp")
public class LoginController {
    
	private AuthService authService;
    public LoginController(AuthService authService) {
        this.authService = authService;
    }
	
    @GetMapping("/login")
    public String login() {
        return "index";
    }
    
    @PostMapping("/auth")
    public void login(@RequestParam("phone") String phone, @RequestParam("password") String password, HttpServletResponse response) throws IOException {
    	
        boolean isAuthenticated = authService.authenticate(phone, password);

        if (isAuthenticated) {
            response.sendRedirect("/movieapp/dashboard");
        } else {
        	response.sendRedirect("/movie/login?username_or_password_incorrect");
        }
    }
}
