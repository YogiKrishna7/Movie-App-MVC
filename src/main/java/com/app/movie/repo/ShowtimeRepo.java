package com.app.movie.repo;

import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.MovieEntity;
import com.app.movie.entity.ShowtimeEntity;

import jakarta.transaction.Transactional;

@Repository
public interface ShowtimeRepo extends JpaRepository<ShowtimeEntity, Integer>{
		
	public ShowtimeEntity findById(int id);
	
	public List<ShowtimeEntity> findByMovie(MovieEntity movie);
	
	public List<ShowtimeEntity> findStartDateAndStartTimeByMovie(MovieEntity movie);
	
	public ShowtimeEntity findByStartDateAndStartTimeAndTheatreId(Date date, LocalTime time, int id);
	
	public List<ShowtimeEntity> findByTheatreId(int t);

	public List<ShowtimeEntity> findByEndDateBefore(Date today);
	
	public List<ShowtimeEntity> findByEndTimeBefore(LocalTime today);
	
//	@Modifying
//	@Transactional
//	@Query(nativeQuery = true, value = "UPDATE showtimes s SET s.is_active = 'N' WHERE s.showtime_id = :showtimeId")
//	void markShowsAsNotActive(@Param("showtimeId") int showtimeId);

}