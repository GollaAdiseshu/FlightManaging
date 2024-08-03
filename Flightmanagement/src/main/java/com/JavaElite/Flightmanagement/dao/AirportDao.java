package com.JavaElite.Flightmanagement.dao;

import java.util.List;

import com.JavaElite.Flightmanagement.bean.Airport;

public  interface AirportDao {
	public  void addAirport(Airport airport);
	public Airport findAirportById(String id);
	public List<Airport>  findAllAirports();
    public List<String> findAllAirportLocations();
	public String findAirportCodeByLocation(String Location);

	
}