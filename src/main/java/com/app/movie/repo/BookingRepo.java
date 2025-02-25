package com.app.movie.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.BookingEntity;

@Repository
public interface BookingRepo extends JpaRepository<BookingEntity, Integer>{
	
	public List<BookingEntity> findByUserId(int userId);
	
}
