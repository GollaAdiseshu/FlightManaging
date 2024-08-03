package com.JavaElite.Flightmanagement.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.JavaElite.Flightmanagement.bean.FlightUser;
import com.JavaElite.Flightmanagement.service.FlightUserService;

@RestController
public class LoginController {

    @Autowired
    private FlightUserService service;  
    
    @Autowired
    private BCryptPasswordEncoder bCrypt;
    @GetMapping("/index")
    public ModelAndView showIndexPage() {
    	String indexPage="";
    	String userType=service.getType();
    		if(userType.equalsIgnoreCase("Admin"))
    		indexPage="index1";
    		else if(userType.equalsIgnoreCase("Customer"))
		indexPage="index2";
        return new ModelAndView(indexPage);
    }

    @GetMapping("/register")
    public ModelAndView showUserRegistrationPage() {
        FlightUser user = new FlightUser();
        ModelAndView mv = new ModelAndView("newUserPage");
        mv.addObject("userRecord", user);
        return mv;
    }

    @PostMapping("/register")
    public ModelAndView saveUserRegistrationPage(@ModelAttribute("userRecord") FlightUser user) {
        String encodedPassword = bCrypt.encode(user.getPassword()); // encrypts the password
        FlightUser newUser = new FlightUser();
        newUser.setUsername(user.getUsername());
        newUser.setPassword(encodedPassword);
        newUser.setType(user.getType());
        service.save(newUser);
        return new ModelAndView("loginPage");
    }

    @GetMapping("/loginPage")
    public ModelAndView showLoginPage() {
        ModelAndView mv = new ModelAndView("loginPage");
        return mv;
    }

    @GetMapping("/loginerror")
    public ModelAndView showLoginErrorPage() {
        ModelAndView mv = new ModelAndView("loginError");
        mv.addObject("error", "Invalid username or password.");
        return mv;
    }
}