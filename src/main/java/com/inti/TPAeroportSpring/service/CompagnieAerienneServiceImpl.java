package com.inti.TPAeroportSpring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inti.TPAeroportSpring.model.CompagnieAerienne;
import com.inti.TPAeroportSpring.repository.CompagnieAerienneRepository;

@Service
public class CompagnieAerienneServiceImpl implements CompagnieAerienneService
{
	@Autowired
	CompagnieAerienneRepository CompagnieAerienneRepository;

	@Override
	public CompagnieAerienne getCompagnieAerienne(int id) {
		return CompagnieAerienneRepository.getById(id);
	}

	@Override
	public void save(CompagnieAerienne a) {
		CompagnieAerienneRepository.save(a);
	}

	@Override
	public void updateCompagnieAerienne(CompagnieAerienne a) {
		CompagnieAerienneRepository.save(a);
	}

	@Override
	public void deleteCompagnieAerienne(int id) {
		CompagnieAerienneRepository.deleteById(id);
	}

}