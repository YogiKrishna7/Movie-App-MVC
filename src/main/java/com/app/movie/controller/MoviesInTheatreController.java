package com.app.movie.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.entity.UserEntity;
import com.app.movie.service.ShowtimeService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/movieapp")
public class MoviesInTheatreController {
	
	@Autowired
	private ShowtimeService ss;
	
	@GetMapping("/view-theatre/{theatreId}")
	public String moviesInTheatre(@PathVariable int theatreId, Model m, HttpSession session, HttpServletResponse response) {
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    
	    if (user == null) {
	    	try {
				response.sendRedirect("/movieapp/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
		
		List<ShowtimeEntity> movies = ss.findByTheatreId(theatreId);
		
		m.addAttribute("movieList", movies);
		m.addAttribute("theatreName", movies.getFirst().getTheatre().getName());
		m.addAttribute("theatreId", theatreId);
		
		return "moviesInTheatre";
	}
}
