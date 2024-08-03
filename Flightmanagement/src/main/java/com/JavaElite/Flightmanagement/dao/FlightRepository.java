package com.JavaElite.Flightmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.JavaElite.Flightmanagement.bean.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long> {

		@Query("SELECT a FROM Flight a WHERE routeId=?1")
		public List<Flight>findFlightsByRouteId(Long routeId);

		@Query("SELECT a FROM Flight a WHERE id=?1")
		public List<Flight>findFlightsById(Long id);
		Flight findByFlightNumber(Long flightNumber);
		Flight findFlightByFlightNumber(Long flightNumber);
}