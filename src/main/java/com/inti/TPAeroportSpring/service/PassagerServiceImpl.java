package com.inti.TPAeroportSpring.service;

import java.util.ArrayList;
import java.util.List;

import com.inti.TPAeroportSpring.model.Passager;
import com.inti.TPAeroportSpring.repository.PassagerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class PassagerServiceImpl implements PassagerService
{
	@Autowired
	PassagerRepository pr;

	@Override
	public Passager findByidP(int idP) {
		return pr.findByIdP(idP);
	}

	@Override
	public void save(Passager p) {
		pr.save(p);
	}
	
	public List<Passager> getPassagerFromReservation(Long numero)
	{

		return pr.getPassagerFromReservation(numero);

	}

	@Override
	public void delete(int idP)
	{
		pr.deleteById(idP);
	}
}
