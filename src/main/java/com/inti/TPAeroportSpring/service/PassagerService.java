package com.inti.TPAeroportSpring.service;

import java.util.List;

import com.inti.TPAeroportSpring.model.Passager;

public interface PassagerService
{
	Passager findByidP(int idP);

	void save(Passager p);

	List<Passager> getPassagerFromReservation(Long numero);
	
	public void delete(int idP);
}
