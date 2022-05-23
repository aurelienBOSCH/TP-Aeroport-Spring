package com.inti.TPAeroportSpring.service;

import com.inti.TPAeroportSpring.model.CompagnieAerienne;

public interface CompagnieAerienneService
{
	CompagnieAerienne getCompagnieAerienne(int id);
	void save(CompagnieAerienne a);
	void updateCompagnieAerienne(CompagnieAerienne a);
	void deleteCompagnieAerienne(int id);
}