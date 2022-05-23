package com.inti.TPAeroportSpring.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Passager {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idP;
    @Column(length = 50, nullable = false)
    private String nom;
    @Column(length = 50, nullable = false)
    private String prenom;

    @ManyToOne
    @JoinColumn(name="numero")
    private Reservation reservation;

    public Passager() {
    }

    public Passager(String nom, String prenom) {
        super();
        this.nom = nom;
        this.prenom = prenom;
    }
    

    public Passager(String nom, String prenom, Reservation reservation) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.reservation = reservation;
	}

	public Passager(int idP, String nom, String prenom, Reservation reservation) {
		super();
		this.idP = idP;
		this.nom = nom;
		this.prenom = prenom;
		this.reservation = reservation;
	}

	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}

	public Passager(int idP, String nom, String prenom) {
        super();
        this.idP = idP;
        this.nom = nom;
        this.prenom = prenom;
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    @Override
    public String toString() {
        return "Passager [idP=" + idP + ", nom=" + nom + ", prenom=" + prenom + "]";
    }

}