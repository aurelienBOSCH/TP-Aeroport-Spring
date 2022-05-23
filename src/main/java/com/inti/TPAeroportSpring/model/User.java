package com.inti.TPAeroportSpring.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;




@Entity
@Table
@Data
@NoArgsConstructor  @AllArgsConstructor
public class User
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idC;
	@Column(length = 50, nullable = false)
	private String nom;
	@Column(length = 50, nullable = false)
	private String prenom;
	@Column(length = 15, nullable = false)
	private String telephone;
	@Column(length = 100, nullable = false, unique = true)
	private String username;
	@Column(length = 50, nullable = false)
	private String password;

	// Classe One
	@OneToMany(mappedBy = "user", targetEntity = Reservation.class, cascade = CascadeType.ALL)
	private List<Reservation> listReservation;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idRole")
	private Role role;

}