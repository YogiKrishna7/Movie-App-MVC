package com.app.movie.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.MovieEntity;

@Repository
public interface MovieRepo extends JpaRepository<MovieEntity, Integer>{

}
