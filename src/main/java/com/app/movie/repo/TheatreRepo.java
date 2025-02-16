package com.app.movie.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.TheatreEntity;

@Repository
public interface TheatreRepo extends JpaRepository<TheatreEntity, Integer>{

}
