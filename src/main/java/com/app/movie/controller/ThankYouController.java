package com.app.movie.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.movie.entity.UserEntity;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/movieapp")
public class ThankYouController {
	
	@GetMapping("/thankyou-message")
	public String viewThankYou(HttpSession session, HttpServletResponse response) {
        UserEntity user = (UserEntity) session.getAttribute("user");

        if (user == null) {
        	try {
				response.sendRedirect("/movieapp/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
		
		return "thankyou";
	}
	
}
