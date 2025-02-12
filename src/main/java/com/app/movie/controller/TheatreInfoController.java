package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping()
public class TheatreInfoController {
	
	public String viewTheatreInfo() {
		return "theatreInfo";
	}
	
}
