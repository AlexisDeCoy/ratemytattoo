package com.alexisdecicco.ratemytattoo.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.alexisdecicco.ratemytattoo.models.LoginUser;
import com.alexisdecicco.ratemytattoo.models.User;
import com.alexisdecicco.ratemytattoo.repositories.UserRepository;

@Service
public class UserService {
    
    @Autowired
    private UserRepository userRepo;
    
    // TO-DO: Write register and login methods!
    public User register(User newUser, BindingResult result) {
        // TO-DO: Additional validations!
    	Optional<User> optionalUser = userRepo.findByEmail(newUser.getEmail());
    	
    	if(optionalUser.isPresent()) {
    		result.rejectValue("email", "unique", "This email is already in use.");
    	}
    	
    	if(!newUser.getPassword().equals(newUser.getConfirm())){
    		result.rejectValue("password", "matches", "The confirm password does not match.");
    	}
    	
    	if(result.hasErrors()) {
    		return null;
    	}
    	
    	String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
    	newUser.setPassword(hashed);
    	userRepo.save(newUser);
    	
        return newUser;
    }
    public User login(LoginUser newLogin, BindingResult result) {
        // TO-DO: Additional validations!
    	Optional<User> optionalUser = userRepo.findByEmail(newLogin.getEmail());
    	
    	if(!optionalUser.isPresent()) {
    		result.rejectValue("email", "unique", "This email is not registered.");
    		return null;
    	}
        User user = optionalUser.get();
        
        if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
        	result.rejectValue("password", "Matches", "Invalid Password!");
        }
        
        if(result.hasErrors()) {
        	return null;
        }
        
        return user;
    }
}