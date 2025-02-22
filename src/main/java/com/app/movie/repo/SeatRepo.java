package com.app.movie.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.SeatEntity;
import com.app.movie.entity.ShowtimeEntity;

@Repository
public interface SeatRepo extends JpaRepository<SeatEntity, Integer>{

	List<SeatEntity> findByShowtime(ShowtimeEntity  st);
	
}
