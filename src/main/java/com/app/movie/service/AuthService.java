package com.app.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.movie.entity.UserEntity;
import com.app.movie.repo.UserRepo;

@Service
public class AuthService {
	
	@Autowired
	private UserRepo us;
	
	public UserEntity authenticate(String phone, String password) {
		
		UserEntity currentUser = us.findByPhoneNumberAndPassword(phone, password);
		
		return currentUser;
	}
}