package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.movie.entity.Movie;
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
        // Fetch the selected movie by its ID
        Movie selectedMovie = movieService.getMovieById(movieId);

        // Validate the movie
        if (selectedMovie == null) {
            return "errorPage"; // Redirect to an error page if the movie is not found
        }

        // Add the selected movie to the model
        model.addAttribute("selectedMovieObj", selectedMovie);
        return "movieInfo"; // Renders movieInfo.jsp
    }
}
