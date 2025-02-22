package com.app.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.movie.entity.SeatEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.repo.SeatRepo;

@Service
public class SeatService {

	@Autowired
	private SeatRepo seatRepo;
	
	public List<SeatEntity> findSeatsByShowtime(ShowtimeEntity showtime) {
		return seatRepo.findByShowtime(showtime);
	}
	
}
