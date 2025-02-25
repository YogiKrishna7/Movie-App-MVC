package com.app.movie.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.movie.entity.UserEntity;

@Repository
public interface UserRepo extends JpaRepository<UserEntity, Integer>{

	UserEntity findByPhoneNumberAndPassword(String phone, String password);
	
//	@Query(nativeQuery = true, value="SELECT * FROM users WHERE phone_number = ? and password = ?")
//	UserEntity findUser(String phone, String password);
	
//	@Query(nativeQuery = true, value="SELECT * FROM users WHERE phone_number = :phone and password = :password")
//	UserEntity findUser(String phone, String password);
	
	Optional<UserEntity> findById(int id);
}