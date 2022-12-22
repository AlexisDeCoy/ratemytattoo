package com.alexisdecicco.ratemytattoo.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.alexisdecicco.ratemytattoo.models.Artist;

@Repository
public interface ArtistRepository extends CrudRepository<Artist, Long> {
    
	Optional<Artist> findById(String email);
	
	List<Artist> findAll();
    
}