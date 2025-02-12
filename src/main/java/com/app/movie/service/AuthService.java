package com.app.movie.service;

import org.springframework.stereotype.Service;

@Service
public class AuthService {
	public boolean authenticate(String phone, String password) {
        String storedPhone = "1234567890";
        String storedPassword = "123";

        if (storedPhone.equals(phone) && storedPassword.equals(password)) {
            return true;
        } else {
            return false;
        }
    }
}