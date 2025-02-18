package com.app.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.movie.entity.MovieEntity;
import com.app.movie.service.MovieService;

@Controller
@RequestMapping("/movieapp")
public class MovieInfoController {

	@Autowired
	private MovieService ms;
	
//	@GetMapping("/movie-info/{movieId}")
//	public String showMovieInfo(@RequestParam("movieId") int movieId, Model model) {
//		
//		MovieEntity movieInfo = ms.getMovieById(movieId);
//		
//		model.addAttribute("selectedMovie", movieInfo);
//		
//		return "movieInfo";
//	}
	
	@GetMapping("/movie-info/{movieId}")
	public String showMovieInfo(@PathVariable int movieId, Model model) {
		
		MovieEntity movieInfo = ms.getMovieById(movieId);
		
		model.addAttribute("selectedMovie", movieInfo);
		
		return "movieInfo";
	}
}