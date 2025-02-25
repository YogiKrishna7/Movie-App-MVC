package com.app.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.movie.entity.BookingEntity;
import com.app.movie.entity.PaymentEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.entity.UserEntity;
import com.app.movie.repo.BookingRepo;

@Service
public class BookingService {
	
	@Autowired
	private BookingRepo br;

    public BookingEntity createBooking(UserEntity userId, ShowtimeEntity showtime, PaymentEntity payment) {
    	
        BookingEntity booking = new BookingEntity();
        booking.setUser(userId);
        booking.setPayment(payment);
        booking.setShowtime(showtime);
        booking.setBookingDate(payment.getCreatedAt());
        booking.setTotalPrice(payment.getAmount());

        BookingEntity doneBooking = br.save(booking);
        
        return doneBooking;
    }
}
