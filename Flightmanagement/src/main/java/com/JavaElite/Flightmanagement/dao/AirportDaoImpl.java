package com.JavaElite.Flightmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.JavaElite.Flightmanagement.bean.Airport;

@Repository
@Service
public class AirportDaoImpl implements AirportDao {
	@Autowired
	private AirportRepository repository;

	@Override
	public void addAirport(Airport airport) {
		repository.save(airport);

	}
	@Override
	public List<Airport> findAllAirports() {
		return repository.findAll();
	}

	@Override
	public Airport findAirportById(String id) {
		return repository.findById(id).get();
	}
	  
	@Override
	public List<String> findAllAirportLocations(){
		return repository.FindAllAirportCodes();
	}
	@Override
	public String findAirportCodeByLocation(String Location) {
		return repository.findAirportCodeByLocation(Location);
	}

}