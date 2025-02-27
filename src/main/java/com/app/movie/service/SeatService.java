package com.app.movie.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.app.movie.entity.SeatEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.repo.SeatRepo;
import com.app.movie.repo.ShowtimeRepo;

import jakarta.transaction.Transactional;

@Service
public class SeatService {

	@Autowired
	private SeatRepo sr;
	
	@Autowired
	private ShowtimeRepo se;
	
//	public List<SeatEntity> findSeatsByShowtime(ShowtimeEntity showtime) {
//		return sr.findByShowtime(showtime);
//	}
	
	public List<SeatEntity> findByShowtimeAndIsBooked(ShowtimeEntity showtime,  String isBooked) {
		return sr.findByShowtimeAndIsBooked(showtime, isBooked);
	}
	
    @Transactional
    @Scheduled(fixedRate = 60000)
    public void updateSeatStatus() throws ParseException {
    	LocalTime now = LocalTime.now();
    	
        List<ShowtimeEntity> endedShowtimes = se.findByEndTimeBefore(now);

        for (ShowtimeEntity showtime : endedShowtimes) {
            sr.markSeatsAsNotBooked(showtime.getShowTimeId());
      
        }
        System.out.println("Updated Seat Status");
    }
    
}
