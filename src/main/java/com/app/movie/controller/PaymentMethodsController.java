package com.app.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentMethodsController {
	
	@GetMapping("/movieapp/payment-methods")
	public String showPayementMethods() {
		return "paymentMethods";
	}
	
}
