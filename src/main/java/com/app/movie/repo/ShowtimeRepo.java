package com.app.movie.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.ShowtimeEntity;

@Repository
public interface ShowtimeRepo extends JpaRepository<ShowtimeEntity, Integer>{

}
