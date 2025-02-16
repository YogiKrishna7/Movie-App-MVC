package com.app.movie.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.SeatEntity;

@Repository
public interface SeatRepo extends JpaRepository<SeatEntity, Integer>{

}
