package com.app.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.app.movie.entity.BookingEntity;
import com.app.movie.entity.PaymentEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.entity.UserEntity;
import com.app.movie.service.BookingService;
import com.app.movie.service.PaymentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService ps;
	
	@Autowired
	private BookingService bs;

	@GetMapping("/movieapp/payments/{totalPrice}")
	public String viewPayments(@PathVariable String totalPrice, Model m) {
		
			m.addAttribute("totalPrice", totalPrice);
		
		return "payments";
	}
	
	@GetMapping("/movieapp/payments/confirm/{amount}")
	public String confirmPayment(HttpSession session, @PathVariable double amount) {
			
		UserEntity user = (UserEntity) session.getAttribute("user");
		
		ShowtimeEntity showtime = (ShowtimeEntity) session.getAttribute("showtimeId");
		
		PaymentEntity donePayment = ps.processPayment(user.getId(), amount);
		
		BookingEntity doneBooking = bs.createBooking(user, showtime, donePayment);
		
		if(doneBooking != null) {
			return "thankyou";
		}
		
		return null;
	}
}
