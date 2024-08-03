package com.JavaElite.Flightmanagement.dao;

import java.util.List;

import com.JavaElite.Flightmanagement.bean.Flight;

public interface FlightDao {
	public void save(Flight flight);
	public List<Flight> findAllFlights();
	public List<Flight>findFlightsByRouteId(Long routeId);
	public Flight findFlightById(Long id);

	}



