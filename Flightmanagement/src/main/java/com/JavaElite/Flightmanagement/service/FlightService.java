package com.JavaElite.Flightmanagement.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.JavaElite.Flightmanagement.bean.Flight;
import com.JavaElite.Flightmanagement.bean.Route;
import com.JavaElite.Flightmanagement.bean.Ticket;
import com.JavaElite.Flightmanagement.dao.FlightRepository;
import com.JavaElite.Flightmanagement.dao.RouteDao;
import com.JavaElite.Flightmanagement.dao.RouteRepository;

@Service
public class FlightService {
@Autowired
private RouteDao routeDao;
@Autowired
private FlightRepository flightRepository;

public Flight createReturnFlight(Flight flight,String dtime,String atime){
	Long newId=flight.getFlightNumber()+1;
	Route route=routeDao.findRouteById(flight.getRouteId());
	String sourceCode=route.getDestinationAirportCode();
	String destinationCode=route.getSourceAirportCode();
	Route route2=routeDao.findRouteBySourceAndDestination(sourceCode,destinationCode);
	return new Flight(newId,flight.getCarrierName(),route2.getRouteId(),flight.getSeatCapacity(),dtime,atime);
}

public boolean cancelFlight(Long flightNumber) {
	Optional<Flight> optionalFlight = flightRepository.findById(flightNumber);
    if (optionalFlight.isPresent()) {
        Flight flight = optionalFlight.get();
        flightRepository.delete(flight);
        return true;
    }
    return false;
}
}
