package com.JavaElite.Flightmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.JavaElite.Flightmanagement.bean.Airport;
import com.JavaElite.Flightmanagement.dao.AirportDao;

import java.util.List;

@RestController
public class AirportController {

    @Autowired
    private AirportDao airportDao;

 

    @GetMapping("/airport")
    public ModelAndView showAirportEntryPage() {
    	Airport airport = new Airport();
        ModelAndView mv = new ModelAndView("airportEntryPage");
        mv.addObject("airportRecord", airport);
        return mv;
    }
    @PostMapping("/airport")
    public ModelAndView saveAirport(@ModelAttribute("airportRecord") Airport airport) {
        String str = airport.getAirportCode().toUpperCase();
        airport.setAirportCode(str);
        String stg=airport.getAirportLocation().toUpperCase();
        airport.setAirportLocation(stg);
        airportDao.addAirport(airport);
        return new ModelAndView("redirect:/index");
    }

    @GetMapping("/airport/{id}")
    public ModelAndView showAirportShowPage(@PathVariable ("id") String id) {
       Airport airport = airportDao.findAirportById(id);
        ModelAndView mv = new ModelAndView("airportShowPage");
        mv.addObject("airport", airport);
        return mv;
    }

    @GetMapping("/airports")
    public ModelAndView showAirportRecordPage() {
    	List<Airport> airportList=airportDao.findAllAirports();
        ModelAndView mv = new ModelAndView("airportRecordPage");
        mv.addObject("abc",airportList);
        return mv;

    }
  
}

