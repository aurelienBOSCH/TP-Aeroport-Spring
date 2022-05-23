	package com.inti.TPAeroportSpring.model;



import java.sql.Date;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@Entity
@Table
@NoArgsConstructor @RequiredArgsConstructor @AllArgsConstructor
public class InfosEscale {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idE;
    private @NonNull Date dateArriveeEsc;
    private @NonNull Date dateDepartEsc;
    private @NonNull LocalTime heureDepartEsc;
    private @NonNull LocalTime heureArriveeEsc;
    
    //one to many avec vol
    //one to many avec aeroport

  

}