package com.app.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.movie.entity.UserEntity;
import com.app.movie.repo.UserRepo;

@Service
public class UserService {
	
	@Autowired
	UserRepo ur;
	
	public UserEntity saveUser(UserEntity user) {
		
		UserEntity createdUser = ur.save(user);
		
		return createdUser;
	}
	
}
