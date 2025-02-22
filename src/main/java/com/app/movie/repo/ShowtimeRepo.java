package com.app.movie.repo;

import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.ShowtimeEntity;

@Repository
public interface ShowtimeRepo extends JpaRepository<ShowtimeEntity, Integer>{
	
	public List<ShowtimeEntity> findByMovie(MovieEntity movie);
	
	public List<ShowtimeEntity> findStartDateAndStartTimeByMovie(MovieEntity movie);
	
	public ShowtimeEntity findByStartDateAndStartTime(Date date, LocalTime time);
}