package com.alexisdecicco.ratemytattoo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alexisdecicco.ratemytattoo.models.Artist;
import com.alexisdecicco.ratemytattoo.models.Review;
import com.alexisdecicco.ratemytattoo.repositories.ArtistRepository;


@Service
public class ArtistService {
    
//	@Autowired
//    private UserRepository userRepo;
	
	@Autowired
	private ArtistRepository artistRepo;
	
//	@Autowired
//    private ReviewRepository reviewRepo;
    
    public Double getReviewAverage(Long artistId) {
    	Optional<Artist> optionalArtist = artistRepo.findById(artistId);
    	
    	if(optionalArtist.isPresent()) {
    		Artist artist = optionalArtist.get();
    		Double numReviews = (double) 0;
    		Double reviewsTotal = (double) 0;
    		if (artist.getReviews().size() > 0) {
	    		for (Review review : artist.getReviews()) {
	    			Double reviewsSum = (double) 0;
	    			numReviews++;
	    			reviewsSum += review.getAffordability();
	    			reviewsSum += review.getAtmosphere();
	    			reviewsSum += review.getEfficiency();
	    			reviewsSum += review.getProfessionalism();
	    			reviewsSum += review.getSatisfaction();
	    			reviewsTotal += reviewsSum/5.0;
	    		}
	    		return reviewsTotal/numReviews;
    		}
    		return null;
    	}
        return null;
    }
    
    public List<Artist> allArtists() {
        return artistRepo.findAll();
    }
    
    public Artist createUpdateArtist(Artist a) {
        return artistRepo.save(a);
    }
    
    public Artist findArtist(Long id) {
        Optional<Artist> optionalArtist = artistRepo.findById(id);
        if(optionalArtist.isPresent()) {
            return optionalArtist.get();
        } else {
            return null;
        }
    }
}