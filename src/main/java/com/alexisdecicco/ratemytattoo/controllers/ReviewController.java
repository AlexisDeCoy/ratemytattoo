package com.alexisdecicco.ratemytattoo.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.alexisdecicco.ratemytattoo.models.Review;
import com.alexisdecicco.ratemytattoo.services.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewServ;

	 @GetMapping("/artists/{artistId}/new")
	 public String newReview(@ModelAttribute("review") Review review, @PathVariable("artistId") Long artId, Model model, HttpSession session) {
		 model.addAttribute("artId", artId);
		 return "newReview.jsp";
	 }
	 
	 @PostMapping("/artists/{artistId}/new")
	 public String createNewReview(@Valid @ModelAttribute("review") Review review, BindingResult result) {
		 if(result.hasErrors()) {
			 return "newArtist.jsp";
		 }
		 else {
			 reviewServ.createUpdateReview(review);
			 return "redirect:/artists/{artistId}";
		 }
	 }
	 
	 @GetMapping("/artists/reviews/{id}")
	 public String reviewInfo(@PathVariable("id") Long id, Model model, HttpSession session) {
		 Review review = reviewServ.findReview(id);
		 model.addAttribute("review", review);
		 return "reviewDetails.jsp";
	 }
}
