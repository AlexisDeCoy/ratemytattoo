package com.alexisdecicco.ratemytattoo.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alexisdecicco.ratemytattoo.models.Artist;
import com.alexisdecicco.ratemytattoo.models.FileUploadUtil;
import com.alexisdecicco.ratemytattoo.services.ArtistService;

@Controller
public class ArtistController {
	@Autowired
	private ArtistService artistServ;	
	
	 @GetMapping("/home")
	 public String dashboard(HttpSession session, Model model) {
		 if(session.getAttribute("userId") == null) {
			 return "redirect:/";
		 }
		 List<Artist> artists = artistServ.allArtists();
		 model.addAttribute("artists", artists);
		 return "dashboard.jsp";
	 }
	 
	 @GetMapping("/artists/new")
	 public String newArtist(@ModelAttribute("artist") Artist artist, HttpSession session) {
		 return "newArtist.jsp";
	 }
	 
	 @PostMapping("/artists/new")
	 public String createNewArtist(@Valid @ModelAttribute("artist") Artist artist, BindingResult result, @RequestParam("image") MultipartFile multipartFile) 
		throws IOException {
		 if(result.hasErrors()) {
			 return "newArtist.jsp";
		 }
		 else {
			 String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			 artist.setPhotos(fileName);
			 Artist savedArtist = artistServ.createUpdateArtist(artist);
			 String uploadDir = "user-photos/" + savedArtist.getId();
			 
		     FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			 return "redirect:/home";
		 }
	 }
	 
	 @GetMapping("/artists/{id}")
	 public String artistDetails(@PathVariable("id") Long id, Model model) {
		 Artist artist = artistServ.findArtist(id);
		 Double reviewAvg = artistServ.getReviewAverage(id);
		 model.addAttribute("artist", artist);
		 model.addAttribute("reviewAvg", reviewAvg);
		 return "artistDetails.jsp";
	 }
}
