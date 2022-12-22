package com.alexisdecicco.ratemytattoo.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alexisdecicco.ratemytattoo.models.Review;
import com.alexisdecicco.ratemytattoo.repositories.ReviewRepository;


@Service
public class ReviewService {
    
//	@Autowired
//    private UserRepository userRepo;
	
//	@Autowired
//	private ArtistRepository artistRepo;
	
	@Autowired
    private ReviewRepository reviewRepo;
    
    
    public Review createUpdateReview(Review r) {
        return reviewRepo.save(r);
    }
    
    public Review findReview(Long id) {
        Optional<Review> optionalReview = reviewRepo.findById(id);
        if(optionalReview.isPresent()) {
            return optionalReview.get();
        } else {
            return null;
        }
    }
}