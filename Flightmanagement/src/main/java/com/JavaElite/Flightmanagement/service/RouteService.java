package com.JavaElite.Flightmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.JavaElite.Flightmanagement.bean.Passenger;
import com.JavaElite.Flightmanagement.bean.Route;
import com.JavaElite.Flightmanagement.bean.Ticket;
import com.JavaElite.Flightmanagement.dao.RouteRepository;
@Service
public class RouteService {
	@ Autowired
	private RouteRepository routeRepository;
	
	public Route createReturnRoute(Route route) {
		Long newId=route.getRouteId()+1;
		String sourceCode=route.getDestinationAirportCode();
		String destinationCode=route.getSourceAirportCode();
		return new Route(newId,sourceCode,destinationCode,route.getFare());
	}

	public boolean cancelRoute(Long routeNumber) {
		  Optional<Route> optionalRoute = routeRepository.findById(routeNumber);
	      if (optionalRoute.isPresent()) {
		  Route route = optionalRoute.get();
		  routeRepository.delete(route);
          return true;
	}
		return false;
	}

}
