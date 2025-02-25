package com.app.movie.service;

import java.util.Optional;

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
	
    public boolean updateUser(int userId, String newEmail, String newPhone) {
        Optional<UserEntity> userOptional = ur.findById(userId);
        if (userOptional.isPresent()) {
            UserEntity user = userOptional.get();
            user.setEmail(newEmail);
            user.setPhoneNumber(newPhone);
            ur.save(user);
            return true;
        }
        return false;
    }
	
}
