package com.inti.TPAeroportSpring.repository;

import java.util.List;

import com.inti.TPAeroportSpring.model.Reservation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long>
{
	Reservation findByNumero(String numero);

//    @Query("FROM Reservation where numero in (select numero from Passager where idP =:idP)")
//    List<Reservation> getReservationFromPassager(@Param("idP") int idP);
}
