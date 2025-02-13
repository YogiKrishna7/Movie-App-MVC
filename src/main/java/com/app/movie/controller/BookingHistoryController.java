package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingHistoryController {
    @GetMapping("/movieapp/booking-history")
    public String showBookingHistory() {
        return "bookingHistory";
    }
}
