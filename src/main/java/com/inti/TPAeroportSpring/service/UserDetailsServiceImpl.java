package com.inti.TPAeroportSpring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.inti.TPAeroportSpring.model.Role;
import com.inti.TPAeroportSpring.model.User;

@Service
public class UserDetailsServiceImpl implements UserDetailsService
{
	@Autowired
	UserService userService;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException
	{

		User user = userService.findByUsername(username);

		if (user == null)
		{
			throw new UsernameNotFoundException("Le mail d'utilisateur " + username + " n'existe pas en BDD.");
		}

// 		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getMdp(), getListeGrantedAuthority(user));

		UserDetails userD = org.springframework.security.core.userdetails.User.withUsername(user.getUsername())
				.password(user.getPassword()).authorities(user.getRole().getNomRole()).build();
		return userD;
	}

	private List<GrantedAuthority> getListeGrantedAuthority(User u)
	{
		List<GrantedAuthority> listeGrantedAuthorities = new ArrayList<GrantedAuthority>();
		Role r = u.getRole();

		listeGrantedAuthorities.add(new SimpleGrantedAuthority(r.getNomRole()));

		return listeGrantedAuthorities;
	}

}
