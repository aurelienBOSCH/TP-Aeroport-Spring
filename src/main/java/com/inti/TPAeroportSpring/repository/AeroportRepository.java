package com.inti.TPAeroportSpring.repository;

import com.inti.TPAeroportSpring.model.Aeroport;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface AeroportRepository extends JpaRepository<Aeroport, Integer>
{

}