package com.inti.TPAeroportSpring.service;

import com.inti.TPAeroportSpring.model.Reservation;

import java.util.List;

public interface ReservationService
{
	Reservation findByNumero(String numero);
	void save(Reservation r);

//	List<Reservation> getReservationFromPassager(int idP);
}
