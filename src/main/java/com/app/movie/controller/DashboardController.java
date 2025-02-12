package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.movie.entity.MovieEntity;
import com.app.movie.service.MovieService;

@Controller
@RequestMapping("/movieapp")
public class DashboardController {

	MovieService movieService;
    public DashboardController(MovieService movieService) {
        this.movieService = movieService;
    }
    

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("movieList", movieService.getAllMovies());
        return "homepage";
    }
    
    @GetMapping("/movie-info")
    public String movieInfo(@RequestParam("movieId") int movieId, Model model) {
        MovieEntity selectedMovie = movieService.getMovieById(movieId);

        model.addAttribute("selectedMovieObj", selectedMovie);
        return "movieInfo";
    }
}
