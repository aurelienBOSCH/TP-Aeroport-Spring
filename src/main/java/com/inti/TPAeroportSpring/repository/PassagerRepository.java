package com.inti.TPAeroportSpring.repository;

import java.util.List;

import com.inti.TPAeroportSpring.model.Passager;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
public interface PassagerRepository extends JpaRepository<Passager, Integer>
{
	Passager findByIdP(int idP);

	@Query("FROM Passager where numero =:numero")
	List<Passager> getPassagerFromReservation(@Param("numero") Long numero);

}
