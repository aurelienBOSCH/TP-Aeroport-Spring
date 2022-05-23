package com.inti.TPAeroportSpring.repository;

import com.inti.TPAeroportSpring.model.CompagnieAerienne;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface CompagnieAerienneRepository extends JpaRepository<CompagnieAerienne, Integer>
{

}