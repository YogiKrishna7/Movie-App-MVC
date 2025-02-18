package com.app.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.movie.entity.MovieEntity;
import com.app.movie.service.MovieService;

@Controller
@RequestMapping("/movieapp")
public class HomepageController {
	
	@Autowired
    private MovieService movieService;
    
//    @GetMapping("/home")
//    public String home(Model model) {
//    	    
//    	List<MovieEntity> movieList = movieService.getMovies();
//        
//    	model.addAttribute("movieList", movieList);
//    	
//        return "homepage";
//    }
	
//    @GetMapping("/home")
//    @ResponseBody
//    public List<MovieEntity> home() {
//    	    
//    	List<MovieEntity> movieList = movieService.getMovies();
//        
////    	model.addAttribute("movieList", movieList);
//    	
//        return movieList;
//    }
    
    @GetMapping("/home")
    @ResponseBody
    public List<MovieEntity> getMovies() {
        return movieService.getMovies();
    }
}
