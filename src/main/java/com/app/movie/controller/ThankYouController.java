package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("movieapp")
public class ThankYouController {
	
	public String viewThankYou() {
		return "thankYou";
	}
	
}
