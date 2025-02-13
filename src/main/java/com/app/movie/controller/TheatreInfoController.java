package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TheatreInfoController {
	
	@GetMapping("/movieapp/theatre-info")
	public String viewTheatreInfo() {
		return "theatreInfo";
	}
	
}
