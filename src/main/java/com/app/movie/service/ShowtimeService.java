package com.app.movie.service;

import java.text.ParseException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.entity.TheatreEntity;
import com.app.movie.repo.ShowtimeRepo;

import jakarta.transaction.Transactional;

@Service
public class ShowtimeService {
	
	@Autowired
	private ShowtimeRepo sr;
	
//    public Optional<ShowtimeEntity> findById(int showtimeId) {
//        return sr.findById(showtimeId);
//    }
    
    public ShowtimeEntity findById(int showtimeId) {
        return sr.findById(showtimeId);
    }
	
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
	
    @Transactional
    @Scheduled(fixedRate = 60000)
    public void updateShowStatus() throws ParseException {
    	Date today = new Date();
 
        List<ShowtimeEntity> endedShowdates = sr.findByEndDateBefore(today);

        for (ShowtimeEntity show : endedShowdates) {
            sr.markShowsAsNotActive(show.getShowTimeId());
        }
        
        System.out.println("Updated Show Status");
    }
}

