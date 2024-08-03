package com.JavaElite.Flightmanagement.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.JavaElite.Flightmanagement.bean.Airport;

public  interface AirportRepository extends JpaRepository<Airport, String> {
		@Query("select airportCode from Airport")
		public List<String> FindAllAirportCodes();
		
		@Query("select airportCode from Airport where airportLocation=?1")
		public String findAirportCodeByLocation(String airportLocation);
		
}