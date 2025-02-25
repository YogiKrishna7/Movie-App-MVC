package com.app.movie.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.TheatreEntity;
import com.app.movie.entity.UserEntity;
import com.app.movie.service.MovieService;
import com.app.movie.service.ShowtimeService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/movieapp")
public class MovieInfoController {

	@Autowired
	private MovieService ms;
	
	@Autowired
	private ShowtimeService ss;

	
	@GetMapping("/movie-info/{movieId}")
	public String showMovieInfo(@PathVariable int movieId, Model model, HttpSession session, HttpServletResponse response) {
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    
	    if (user == null) {
	    	try {
				response.sendRedirect("/movieapp/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
		
		MovieEntity movieInfo = ms.getMovieById(movieId);
		List<TheatreEntity> theatreList = ss.findTheatresByMovies(movieInfo);
		model.addAttribute("selectedMovie", movieInfo);
		model.addAttribute("theatreList", theatreList);
		
		return "movieInfo";
	}
}