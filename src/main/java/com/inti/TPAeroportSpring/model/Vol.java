package com.inti.TPAeroportSpring.model;


import java.sql.Date;
import java.time.LocalTime;
import java.util.List;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@Entity
@Table
@NoArgsConstructor @RequiredArgsConstructor @AllArgsConstructor
public class Vol {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idVol;
    private @NonNull Date dateDepart;
    private @NonNull Date dateArrivee;
    private @NonNull LocalTime heureDepart;
    private @NonNull LocalTime heureArrivee;
    private @NonNull double prix;
    

    @ManyToMany
    @JoinTable(name= "Vol_CompagnieAerienne",
                joinColumns = @JoinColumn(name="Id"),
                inverseJoinColumns = @JoinColumn(name="idCA"))
    private List<CompagnieAerienne> listCA;

    @OneToMany(mappedBy = "vol", targetEntity = Reservation.class, cascade = CascadeType.ALL)
    private List<Reservation> listReservation;


    @ManyToOne
    @JoinColumn(name="aeroport_depart")
    private Aeroport departAeroport;

    @ManyToOne
    @JoinColumn(name="aeroport_arrivee")
    private Aeroport arriveeAeroport;

//many to one avec infos escale


}