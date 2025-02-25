package com.app.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.TheatreEntity;
import com.app.movie.service.MovieService;
import com.app.movie.service.TheatreService;

@Controller
@RequestMapping("/movieapp")
public class HomepageController {
	
	@Autowired
    private MovieService movieService;
	
	@Autowired
    private TheatreService theatreService;
    
    @GetMapping("/home")
    public String home(Model model) {
    	    
    	List<MovieEntity> movieList = movieService.getMovies();
        
    	model.addAttribute("movieList", movieList);
    	
        return "homepage";
    }
    
    @GetMapping("/search/{movie}")
    public String search(@PathVariable String movie,  Model model) {
    	List<MovieEntity> movieList = movieService.searchMovies(movie);
    	model.addAttribute("movieList", movieList);
        return "homepage";
    }
    
    @GetMapping("/search-theatre/{theatre}")
    public String searchTheare(@PathVariable String theatre,  Model m) {
    	List<TheatreEntity> theatreList = theatreService.searchTheatre(theatre);
    	m.addAttribute("theatreList", theatreList);
        return "homepage";
    }
}
