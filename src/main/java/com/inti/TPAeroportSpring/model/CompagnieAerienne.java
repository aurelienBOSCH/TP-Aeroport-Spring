package com.inti.TPAeroportSpring.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table
public class CompagnieAerienne {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idCA;
	@Column(length = 50, nullable = false)
    private String nom;

	@ManyToMany
    @JoinTable(name= "Vol_CompagnieAerienne",
                joinColumns = @JoinColumn(name="idCA"),
                inverseJoinColumns = @JoinColumn(name="Id"))
    private List<Vol> listVol;

	public CompagnieAerienne() {
    }

	public CompagnieAerienne(String nom)
	{
		super();
		this.nom = nom;
	}


	public CompagnieAerienne(int idCA, String nom)
	{
		super();
		this.idCA = idCA;
		this.nom = nom;
	}


	public int getIdCA()
	{
		return idCA;
	}


	public void setIdCA(int idCA)
	{
		this.idCA = idCA;
	}


	public String getNom()
	{
		return nom;
	}


	public void setNom(String nom)
	{
		this.nom = nom;
	}


	@Override
	public String toString()
	{
		return "CompagnieAerienne [idCA=" + idCA + ", nom=" + nom + "]";
	}
    
    

}