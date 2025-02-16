package com.app.movie.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.ReviewEntity;

@Repository
public interface ReviewRepo extends JpaRepository<ReviewEntity, Integer>{

}
