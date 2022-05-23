package com.inti.TPAeroportSpring.service;

import java.sql.Date;
import java.util.List;

import com.inti.TPAeroportSpring.model.Vol;

public interface VolService
{
	Vol getVol(int id);
    void save(Vol v);
    void updateVol(Vol v);
    void deleteVol(int id);
    List<Vol> getVols(String villeDepart, String villeArrivee, Date dateDepart, Date dateArrivee);
}