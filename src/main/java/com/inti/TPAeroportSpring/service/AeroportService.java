package com.inti.TPAeroportSpring.service;

import com.inti.TPAeroportSpring.model.Aeroport;

public interface AeroportService
{
	Aeroport getAeroport(int id);
	void save(Aeroport a);
	void updateAeroport(Aeroport a);
	void deleteAeroport(int id);
}