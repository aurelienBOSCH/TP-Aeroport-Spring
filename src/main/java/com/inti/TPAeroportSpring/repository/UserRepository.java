package com.inti.TPAeroportSpring.repository;

import com.inti.TPAeroportSpring.model.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
	
	User findByUsername(String username);


}
