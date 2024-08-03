package com.JavaElite.Flightmanagement.dao;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.JavaElite.Flightmanagement.bean.Route;

public interface RouteRepository extends JpaRepository <Route,Long>
{
	
	@Query("SELECT routeId FROM Route a WHERE sourceAirportCode = ?1 AND destinationAirportCode = ?2")
	public Long findRouteBySourceAndDestination(String sourceAirportCode, String destinationAirportCode);
	
 @Query("select max(routeId) from Route")
 public Long findLastRouteId();
 
	
@Query("SELECT routeId FROM Route")
public List<Long> findAllRoutesId();
 
 
}