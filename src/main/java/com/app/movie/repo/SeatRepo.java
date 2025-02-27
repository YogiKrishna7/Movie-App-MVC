package com.app.movie.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.SeatEntity;
import com.app.movie.entity.ShowtimeEntity;

import jakarta.transaction.Transactional;

@Repository
public interface SeatRepo extends JpaRepository<SeatEntity, Integer>{

//	public List<SeatEntity> findByShowtime(ShowtimeEntity  st);
	public List<SeatEntity> findByShowtimeAndIsBooked(ShowtimeEntity showtime, String isBooked);


	@Modifying
	@Transactional
	@Query(nativeQuery = true, value = "UPDATE seats s SET s.is_booked = 'Y' WHERE s.seat_number = :seatNumber AND s.showtime_id IN (SELECT st.showtime_id FROM showtimes st WHERE st.theatre_id = :theatreId)")
	void markSeatAsBooked(@Param("seatNumber") String seatNumber, @Param("theatreId") int theatreId);


	@Modifying
	@Query(nativeQuery = true, value = "UPDATE seats s SET s.is_booked = 'N' WHERE s.showtime_id = :showtimeId")
	void markSeatsAsNotBooked(@Param("showtimeId") int showtimeId);
}
