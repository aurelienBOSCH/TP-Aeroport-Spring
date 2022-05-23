package com.inti.TPAeroportSpring.model;

import javax.persistence.*;

import lombok.*;

@Entity
@Table
@Data
@NoArgsConstructor @RequiredArgsConstructor @AllArgsConstructor
public class Role
{
	
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private @NonNull String nomRole;
}
