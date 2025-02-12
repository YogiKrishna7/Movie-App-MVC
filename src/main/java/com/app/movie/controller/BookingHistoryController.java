package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/movieapp")
public class BookingHistoryController {
    @GetMapping("/booking-history")
    public String showBookingHistory() {
        return "bookingHistory";
    }
}
