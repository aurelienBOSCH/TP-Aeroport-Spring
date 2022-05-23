package com.inti.TPAeroportSpring.service;

import com.inti.TPAeroportSpring.model.User;
import com.inti.TPAeroportSpring.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	UserRepository userRepository;

	@Override
	public User findByUsername(String username)
	{
		return userRepository.findByUsername(username);
	}

	@Override
	public void save(User u)
	{
		userRepository.save(u);		
	}

}
