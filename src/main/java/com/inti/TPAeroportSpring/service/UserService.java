package com.inti.TPAeroportSpring.service;

import com.inti.TPAeroportSpring.model.User;

public interface UserService
{
	User findByUsername(String username);
	void save(User u);
}
