package com.JavaElite.Flightmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.JavaElite.Flightmanagement.bean.Flight;
import com.JavaElite.Flightmanagement.bean.Route;

@Repository
@Service
public class FlightDaoImpl implements FlightDao {
	@Autowired
    private FlightRepository repository;
	
	
	@Override
	public void save(Flight flight) {
		repository.save(flight);
	}

	
	@Override
	public List<Flight> findFlightsByRouteId(Long routeId) {
		return repository.findFlightsByRouteId(routeId);
	}

	@Override
	public List<Flight> findAllFlights() {
		return repository.findAll();
	}


	@Override
	public Flight findFlightById(Long id) {
		return repository.findById(id).get();
	}



}
