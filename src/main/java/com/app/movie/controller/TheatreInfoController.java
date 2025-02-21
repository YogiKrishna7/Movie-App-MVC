package com.app.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.app.movie.entity.TheatreEntity;
import com.app.movie.service.TheatreService;

@Controller
public class TheatreInfoController {
	
	@Autowired
	TheatreService ts;
	
	@GetMapping("/movieapp/theatre-info/{theatreId}")
	public String viewTheatreInfo(@PathVariable int theatreId, Model m) {
		
		TheatreEntity theatre = ts.getTheatreById(theatreId);
		
		m.addAttribute("selectedTheatre", theatre);
		
		return "theatreInfo";
	}
	
}
