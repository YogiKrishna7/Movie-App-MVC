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
	
	public UserEntity updateUser(int userId, String newEmail, String newPhone) {
	    UserEntity user = ur.findById(userId);
	    if (user != null) { 
	        user.setEmail(newEmail);
	        user.setPhoneNumber(newPhone);
	        return ur.save(user);
	    }
	    return null;
	}

	
}
