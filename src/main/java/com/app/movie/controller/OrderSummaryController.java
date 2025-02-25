package com.app.movie.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.service.ShowtimeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class OrderSummaryController {

    @Autowired
    private ShowtimeService ss;

    @GetMapping("/movieapp/order-summary/{selectedSeats}/{theatreId}")
    public String viewOrderSummary(@PathVariable("selectedSeats") String selectedSeats, @PathVariable("theatreId") int theatreId, Model model, HttpSession s) {
        
    	List<String> seatList = Arrays.asList(selectedSeats.split(","));

        List<ShowtimeEntity> showtime = ss.findByTheatreId(theatreId);

        ShowtimeEntity show = showtime.get(0);
        
        s.setAttribute("showtimeId", show);
        
        int seatPrice = 200;
        int totalPrice = seatList.size() * seatPrice;
        
        model.addAttribute("selectedSeats", seatList);
        model.addAttribute("movie", show.getMovie().getTitle());
        model.addAttribute("theatre", show.getTheatre().getName());
        model.addAttribute("screen", show.getScreenNumber());
        model.addAttribute("showdate", show.getStartDate());
        model.addAttribute("showtime", show.getStartTime());
        model.addAttribute("totalPrice", totalPrice);
        
        return "orderSummary";
    }
}
