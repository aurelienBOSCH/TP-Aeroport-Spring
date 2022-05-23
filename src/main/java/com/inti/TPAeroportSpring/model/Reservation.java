package com.inti.TPAeroportSpring.model;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Entity
@Table
public class Reservation {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long numero;
    private Date dateRes;
    
    // Classe Many
    @ManyToOne
    @JoinColumn(name = "idC")
    private User user;

    @OneToMany(mappedBy = "reservation", targetEntity = Passager.class, cascade = CascadeType.ALL)
    private List<Passager> listPassager;

    @ManyToOne
    @JoinColumn(name = "idVol")
    private Vol vol;

    public Reservation() {
    }

    public Reservation(Date dateRes) {
        super();
        this.dateRes = dateRes;
    }

    public Reservation(long numero, Date dateRes) {
        super();
        this.numero = numero;
        this.dateRes = dateRes;
    }

    public void Annuler()
    {
        
    }

    public void Confirmer() 
    {
        
    }
    
    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}



	public Reservation(Date dateRes, User user, List<Passager> listPassager, Vol vol) {
		super();
		this.dateRes = dateRes;
		this.user = user;
		this.listPassager = listPassager;
		this.vol = vol;
	}

	public Reservation(long numero, Date dateRes, User user, List<Passager> listPassager, Vol vol) {
		super();
		this.numero = numero;
		this.dateRes = dateRes;
		this.user = user;
		this.listPassager = listPassager;
		this.vol = vol;
	}

	public List<Passager> getListPassager() {
		return listPassager;
	}

	public void setListPassager(List<Passager> listPassager) {
		this.listPassager = listPassager;
	}

	public Vol getVol() {
		return vol;
	}

	public void setVol(Vol vol) {
		this.vol = vol;
	}

	public long getNumero() {
        return numero;
    }

    public void setNumero(long numero) {
        this.numero = numero;
    }

    public Date getDateRes() {
        return dateRes;
    }

    public void setDateRes(Date dateRes) {
        this.dateRes = dateRes;
    }

    @Override
    public String toString() {
        return "Reservation [numero=" + numero + ", dateRes=" + dateRes + "]";
    }

}