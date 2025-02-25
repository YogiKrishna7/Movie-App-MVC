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

	List<SeatEntity> findByShowtime(ShowtimeEntity  st);
	
	@Transactional
	@Modifying
	@Query("UPDATE SeatEntity s SET s.isBooked = 'Y' WHERE s.seatNumber = :seatNumber AND s.showtime.theatre.id = :theatreId")
	void markSeatAsBooked(@Param("seatNumber") String seatNumber, @Param("theatreId") int theatreId);
	
	@Query("SELECT s FROM SeatEntity s WHERE s.showtime.id IN " +
	           "(SELECT b.showtime.id FROM BookingEntity b WHERE b.user.id = :userId) " +
	           "AND s.isBooked = 'Y'")
	List<SeatEntity> findBookedSeatsByUserId(@Param("userId") int userId);
	
	@Modifying
    @Query("UPDATE SeatEntity s SET s.isBooked = 'N' WHERE s.showtime.id = :showtimeId")
    void markSeatsAsNotBooked(@Param("showtimeId") int showtimeId);
}
