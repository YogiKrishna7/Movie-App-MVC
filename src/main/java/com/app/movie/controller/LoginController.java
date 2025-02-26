package com.app.movie.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.movie.entity.UserEntity;
import com.app.movie.service.AuthService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/movieapp")
public class LoginController {

	@Autowired
	private AuthService authService;

	@GetMapping("/login")
	public String login() {
		return "index";
	}

	@PostMapping("/auth")
	public void login(@RequestParam("phone") String phone, @RequestParam("password") String password, HttpServletResponse response, HttpSession session) {
		UserEntity loggedIn = authService.authenticate(phone, password);
		if (loggedIn != null) {
			session.setAttribute("user", loggedIn);
			session.setMaxInactiveInterval(30 * 60);
			
			try {
				response.sendRedirect("/movieapp/home");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		} else {
			try {
				response.sendRedirect("/movieapp/login?error=true");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	@GetMapping("/logout")
	public void logout(HttpSession session, HttpServletResponse response) {
	    
	    session.invalidate();

	    try {
			response.sendRedirect("/movieapp/login");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
