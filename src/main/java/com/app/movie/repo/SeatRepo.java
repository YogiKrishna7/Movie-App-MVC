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

	public List<SeatEntity> findByShowtime(ShowtimeEntity  st);
	
//	@Modifying
//	@Transactional
//	int updateIsBookedBySeatNumberAndShowtimeTheatreId(String seatNumber, int theatreId);

	@Transactional
	@Modifying
	@Query("UPDATE SeatEntity s SET s.isBooked = 'Y' WHERE s.seatNumber = :seatNumber AND s.showtime.theatre.id = :theatreId")
	public void markSeatAsBooked(@Param("seatNumber") String seatNumber, @Param("theatreId") int theatreId);
	
//	@Transactional
//	@Modifying
//	@Query(nativeQuery = true, value = "UPDATE seat s SET s.is_booked = 'Y' WHERE s.seat_number = :seatNumber AND s.showtime_id IN (SELECT st.id FROM showtime st WHERE st.theatre_id = :theatreId)")
//	public void markSeatAsBooked(@Param("seatNumber") String seatNumber, @Param("theatreId") int theatreId);

	
//	public List<SeatEntity> findByShowtime_Bookings_User_IdAndIsBooked(int userId, String isBooked);
	
//	@Query("SELECT s FROM SeatEntity s WHERE s.showtime.id IN " + "(SELECT b.showtime.id FROM BookingEntity b WHERE b.user.id = :userId) " + "AND s.isBooked = 'Y'")
//	public List<SeatEntity> findBookedSeatsByUserId(@Param("userId") int userId); currently in used but giving all the seats 
	
//	@Query(nativeQuery = true, value = "SELECT s.* FROM seats s " + "WHERE s.showtime_id IN (SELECT b.showtime_id FROM booking b WHERE b.user_id = :userId) " + "AND s.is_booked = 'Y'")
//	public List<SeatEntity> findBookedSeatsByUserId(@Param("userId") int userId);

//	@Query("SELECT s FROM SeatEntity s WHERE s.showtime.id = :showtimeId AND s.isBooked = 'Y'")
//	public List<SeatEntity> findBookedSeatsByShowtime(@Param("showtimeId") int showtimeId);


	
//	@Modifying
//	@Transactional
//	int updateIsBookedByShowtimeId(String isBooked, int showtimeId);
	
	@Modifying
    @Query("UPDATE SeatEntity s SET s.isBooked = 'N' WHERE s.showtime.id = :showtimeId")
    public void markSeatsAsNotBooked(@Param("showtimeId") int showtimeId);
	
//	@Modifying
//	@Query(nativeQuery = true, value = "UPDATE seats SET is_booked = 'N' WHERE showtime_id = :showtimeId")
//	void markSeatsAsNotBooked(@Param("showtimeId") int showtimeId);

}
