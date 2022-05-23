package com.inti.TPAeroportSpring.service;

import java.util.List;

import com.inti.TPAeroportSpring.model.Reservation;
import com.inti.TPAeroportSpring.repository.ReservationRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class ReservationServiceImpl implements ReservationService
{
	@Autowired
	ReservationRepository rer;

	@Override
	public Reservation findByNumero(String numero) 
	{
		
		return rer.findByNumero(numero);
	}

	@Override
	public void save(Reservation r) 
	{
		rer.save(r);
		
	}

//	@Override
//	public List<Reservation> getReservationFromPassager(int idP) 
//	{
//		return rer.getReservationFromPassager(idP);
//	}
		
		
	

	
	

}
