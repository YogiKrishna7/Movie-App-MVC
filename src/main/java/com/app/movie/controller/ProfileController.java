package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.app.movie.entity.UserEntity;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProfileController {

	@GetMapping("/movieapp/profile")
	public String viewProfile(HttpSession session, Model model) {
//		UserEntity user = (UserEntity) session.getAttribute("cu");
//
//        if (user == null) {
//            return "redirect:/movieapp/login";
//        }
//
//        model.addAttribute("currentUser", user);
        return "profile";
	}
	
	
}