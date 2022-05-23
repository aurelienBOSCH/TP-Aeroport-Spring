package com.inti.TPAeroportSpring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inti.TPAeroportSpring.model.Aeroport;
import com.inti.TPAeroportSpring.repository.AeroportRepository;

@Service
public class AeroportServiceImpl implements AeroportService
{
	@Autowired
	AeroportRepository aeroportRepository;

	@Override
	public Aeroport getAeroport(int id) {
		return aeroportRepository.getById(id);
	}

	@Override
	public void save(Aeroport a) {
		aeroportRepository.save(a);
	}

	@Override
	public void updateAeroport(Aeroport a) {
		aeroportRepository.save(a);
	}

	@Override
	public void deleteAeroport(int id) {
		aeroportRepository.deleteById(id);
	}

}