package com.app.movie.service;

import org.springframework.stereotype.Service;

@Service
public class AuthService {
    public boolean authenticate(String phone, String password) {
        return "1234567890".equals(phone) && "123".equals(password);
    }
}