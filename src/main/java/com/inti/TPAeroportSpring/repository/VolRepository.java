package com.inti.TPAeroportSpring.repository;

import java.sql.Date;
import java.util.List;

import com.inti.TPAeroportSpring.model.Vol;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
public interface VolRepository extends JpaRepository<Vol, Integer>
{
	
	@Query(value="SELECT * FROM Vol v WHERE v.aeroport_depart in (SELECT idA FROM Aeroport a WHERE a.ville=:ville1) AND v.aeroport_arrivee in (SELECT idA FROM Aeroport a WHERE a.ville=:ville2) and v.date_depart >=:dateDepart", nativeQuery = true)
    List<Vol> getVols(@Param("ville1") String villeDepart, @Param("ville2") String villeArrivee, @Param("dateDepart") Date dateDepart);

//    @Query("FROM Vol where idVol in (select idVol from Reservation where numero =:numero)")
//	Vol getVolFromReservation(@Param("numero") Long numero);
}