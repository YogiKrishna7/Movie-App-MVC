package com.app.movie.repo;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.ShowtimeEntity;

@Repository
public interface ShowtimeRepo extends JpaRepository<ShowtimeEntity, Integer>{
	
	public List<ShowtimeEntity> findByMovie(MovieEntity movie);
	
	public List<ShowtimeEntity> findStartDateAndStartTimeByMovie(MovieEntity movie);
	
	public ShowtimeEntity findByStartDateAndStartTimeAndTheatreId(Date date, LocalTime time, int id);
	
	public List<ShowtimeEntity> findByTheatreId(int t);
	
	public Optional<ShowtimeEntity> findById(int id);

	public List<ShowtimeEntity> findByEndTimeBefore(LocalDateTime now);
	
}