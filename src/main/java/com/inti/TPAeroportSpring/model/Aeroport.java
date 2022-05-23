package com.inti.TPAeroportSpring.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Aeroport {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idA;
    @Column(length = 75, nullable = false)
    private String nom;
    @Column(length = 30, nullable = false)
    private String ville;
    
    @OneToMany(mappedBy = "departAeroport", targetEntity = Vol.class, cascade = CascadeType.ALL)
    private List<Vol> listVolDepart;

    @OneToMany(mappedBy = "arriveeAeroport", targetEntity = Vol.class, cascade = CascadeType.ALL)
    private List<Vol> listVolArrivee;

    //many to one avec infos escales




	public Aeroport(String nom, String ville, List<Vol> listVolDepart,
			List<Vol> listVolArrivee) {
		super();
		this.nom = nom;
		this.ville = ville;
		this.listVolDepart = listVolDepart;
		this.listVolArrivee = listVolArrivee;
	}

	public Aeroport(int idA, String nom, String ville, List<Vol> listVolDepart,
			List<Vol> listVolArrivee) {
		super();
		this.idA = idA;
		this.nom = nom;
		this.ville = ville;
		this.listVolDepart = listVolDepart;
		this.listVolArrivee = listVolArrivee;
	}


	public List<Vol> getListVolDepart() {
		return listVolDepart;
	}

	public void setListVolDepart(List<Vol> listVolDepart) {
		this.listVolDepart = listVolDepart;
	}

	public List<Vol> getListVolArrivee() {
		return listVolArrivee;
	}

	public void setListVolArrivee(List<Vol> listVolArrivee) {
		this.listVolArrivee = listVolArrivee;
	}

	public Aeroport() {
    }

    public Aeroport(String nom, String ville) {
        super();
        this.nom = nom;
        this.ville = ville;
    }

    public Aeroport(int idA, String nom, String ville) {
        super();
        this.idA = idA;
        this.nom = nom;
        this.ville = ville;
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    @Override
    public String toString() {
        return "Aeroport Nom =" + nom + ", Ville=" + ville + "]";
    }

}