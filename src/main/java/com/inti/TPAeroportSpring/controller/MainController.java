package com.inti.TPAeroportSpring.controller;

import java.sql.Date;

import com.inti.TPAeroportSpring.model.Passager;
import com.inti.TPAeroportSpring.model.Role;
import com.inti.TPAeroportSpring.model.User;
import com.inti.TPAeroportSpring.service.PassagerService;
import com.inti.TPAeroportSpring.service.UserService;
import com.inti.TPAeroportSpring.service.VolService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MainController
{
	@Autowired
	UserService userService;

	@Autowired
	VolService volService;
	
	@Autowired
	PassagerService passagerService;
	
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}
	
	
	@GetMapping("/form_client_inscription")
	public String inscription()
	{
		return "form_client_inscription";
	}
	
	@GetMapping("/mesReservations")
	public String mesReservations()
	{
		return "mesReservations";
	}
	
	@PostMapping("/enregistrerUtilisateur")
	public String enregistrerUtilisateur(@ModelAttribute("user") User u)
	{



		Role r = new Role("CLIENT");
		u.setRole(r);
		
		BCryptPasswordEncoder b = new BCryptPasswordEncoder();
		String mdpCrypte = b.encode(u.getPassword());
		
		u.setPassword(mdpCrypte);
		
		userService.save(u);
		
		
		return "redirect:/login";
	}

	@PostMapping("/affichageVols")

	public String affichageVols(@RequestParam("aeroportDepart") String aeroportDepart, @RequestParam("aeroportArrivee") String aeroportArrivee, @RequestParam("dateDepart") Date dateDepart, @RequestParam("dateRetour") Date dateArrivee, Model m)
	{
		m.addAttribute("listeVol", volService.getVols(aeroportDepart, aeroportArrivee, dateDepart, dateArrivee));
		return "affichageVols";
	}
	
	@GetMapping("/preReservation/{id}")
	public String preReservation(@PathVariable int id, Model m)
	{
		m.addAttribute("Vol",volService.getVol(id));
		return "preReservation";
	}

	@PostMapping("/ajouterPassagerToReservation")
	public String enregistrerPassager(@ModelAttribute("passager") Passager p)
	{
		passagerService.save(p);
		return "post_Reservation";
	}

	@GetMapping("/preReservation")
	public String preReservation()
	{
		return "preReservation";
	}
	

}
