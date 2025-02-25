package com.app.movie.service;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.entity.TheatreEntity;
import com.app.movie.repo.ShowtimeRepo;

@Service
public class ShowtimeService {
	
	@Autowired
	private ShowtimeRepo sr;
	
	public List<TheatreEntity> findTheatresByMovies(MovieEntity m) {
		List<ShowtimeEntity> showtimes = sr.findByMovie(m);
		List<TheatreEntity> theatres = new ArrayList<>();
		
		for (ShowtimeEntity s : showtimes) {
			theatres.add(s.getTheatre());
		}
		
		return theatres;
	}
	
	public List<ShowtimeEntity> findStartDateAndStartTimeByMovie(MovieEntity m) {
		return sr.findStartDateAndStartTimeByMovie(m);
	}
	
	public ShowtimeEntity findByStartDateAndStartTime(Date date, LocalTime time, int id) {
		return sr.findByStartDateAndStartTimeAndTheatreId(date, time, id);
	}
	
	public List<ShowtimeEntity> findByTheatreId(int t) {
		return sr.findByTheatreId(t);
	}
	
    public Optional<ShowtimeEntity> findById(int showtimeId) {
        return sr.findById(showtimeId);
    }
}

