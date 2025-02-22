package com.app.movie.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class OrderSummaryController {

    @GetMapping("/movieapp/order-summary/{selectedSeats}")
    public String viewOrderSummary(@PathVariable("selectedSeats") String selectedSeats, Model model) {
        List<String> seatList = Arrays.asList(selectedSeats.split(","));

        System.out.println(seatList);
        
        model.addAttribute("selectedSeats", seatList);

        return "orderSummary";
    }
	
}
