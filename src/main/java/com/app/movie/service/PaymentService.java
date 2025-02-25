package com.app.movie.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.movie.entity.PaymentEntity;
import com.app.movie.repo.PaymentRepo;

@Service
public class PaymentService {
	
    @Autowired
    private PaymentRepo paymentRepository;

    public PaymentEntity processPayment(int userId, double amount) {

        PaymentEntity payment = new PaymentEntity();
        payment.setUserId(userId);
        payment.setAmount(amount);
        payment.setStatus("Completed");
        payment.setCreatedAt(new Date());

        PaymentEntity savedPayment = paymentRepository.save(payment);
        
        return savedPayment;
    }

}
