package com.inti.TPAeroportSpring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

import com.inti.TPAeroportSpring.model.Vol;
import com.inti.TPAeroportSpring.repository.VolRepository;

@Service
public class VolServiceImpl implements VolService
{
	@Autowired
	VolRepository volRepository;

	@Override
	public Vol getVol(int id) {
		return volRepository.getById(id);
	}

	@Override
	public void save(Vol v) {
		volRepository.save(v);
	}

	@Override
	public void updateVol(Vol v) {
		volRepository.save(v);
	}

	@Override
	public void deleteVol(int id) {
		volRepository.deleteById(id);
	}

	@Override
	public List<Vol> getVols(String villeDepart, String villeArrivee, Date dateDepart, Date dateArrivee) {
		return volRepository.getVols(villeDepart, villeArrivee, dateDepart, dateArrivee);
	}

}