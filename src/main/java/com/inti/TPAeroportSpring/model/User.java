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
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.UniqueElements;

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
	@NotBlank(message = "Veuillez saisir un Nom non vide !")
	@Size(min = 3, max = 100, message = "Saisir au moins 3 caractères")
	private String nom;
	@NotBlank(message = "Veuillez saisir un Prenom non vide !")
	@Size(min = 3, max = 100, message = "Saisir au moins 3 caractères")
	@Column(length = 50, nullable = false)
	private String prenom;
	@Column(length = 15, nullable = false)
	@Pattern(regexp = "^0[1-9]{1}[\\.[0-9]{2}\\.[0-9]{2}]{2}$", message = "Saisir un téléphone au format xx.xx.xx.xx.xx")
	private String telephone;
	@Column(length = 100, nullable = false, unique = true)
	@NotBlank(message = "Veuillez saisir un Nom d'Utilisateur non vide !")
	@Size(min = 3, max = 100, message = "Saisir au moins 3 caractères")
	@UniqueElements(message = "Le nom d'utilisateur est déjà utilisé")
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