package com.inti.TPAeroportSpring.service;

import com.inti.TPAeroportSpring.repository.RoleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class RoleServicempl implements RoleService
{
	
	@Autowired
	RoleRepository roleRepository;
}
