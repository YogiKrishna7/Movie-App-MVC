package com.app.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.entity.TheatreEntity;
import com.app.movie.service.MovieService;
import com.app.movie.service.ShowtimeService;
import com.app.movie.service.TheatreService;

@Controller
public class TheatreInfoController {
	
	@Autowired
	TheatreService ts;
	
	@Autowired
	ShowtimeService ss;
	
	@Autowired
	MovieService ms;
	
	@GetMapping("/movieapp/theatre-info/{theatreId}/{movieId}")
	public String viewTheatreInfo(@PathVariable int theatreId, @PathVariable int movieId, Model m) {
		
		System.out.println(theatreId);
		System.out.println(movieId);
		
		MovieEntity movie = ms.getMovieById(movieId);
		if (movie == null) {
			System.out.println("Movie not found!");
			return "errorPage";
		}
		
		List<ShowtimeEntity> datesAndTimes = ss.findStartDateAndStartTimeByMovie(movie);
		
		TheatreEntity theatre = ts.getTheatreById(theatreId);
		
		m.addAttribute("selectedTheatre", theatre);
		m.addAttribute("datesAndTimes", datesAndTimes);
		
		return "theatreInfo";
	}
	
}
