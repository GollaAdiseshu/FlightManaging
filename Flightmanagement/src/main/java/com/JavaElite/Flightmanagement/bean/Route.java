package com.JavaElite.Flightmanagement.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Route {
@Override
	public String toString() {
		return "Route [routeId=" + routeId + ", sourceAirportCode=" + sourceAirportCode + ", destinationAirportCode="
				+ destinationAirportCode + ", fare=" + fare + "]";
	}
@Id 
private Long routeId;
private String sourceAirportCode;
private String destinationAirportCode;
private Double fare;
public Route(Long routeId, String sourceAirportCode, String destinationAirportCode, Double fare) {
	super();
	this.routeId = routeId;
	this.sourceAirportCode = sourceAirportCode;
	this.destinationAirportCode = destinationAirportCode;
	this.fare = fare;
}
public Route() {
	super();
}
public Long getRouteId() {
	return routeId;
}
public void setRouteId(Long routeId) {
	this.routeId = routeId;
}
public String getSourceAirportCode() {
	return sourceAirportCode;
}
public void setSourceAirportCode(String sourceAirportCode) {
	this.sourceAirportCode = sourceAirportCode;
}
public String getDestinationAirportCode() {
	return destinationAirportCode;
}
public void setDestinationAirportCode(String destinationAirportCode) {
	this.destinationAirportCode = destinationAirportCode;
}
public Double getFare() {
	return fare;
}
public void setFare(Double fare) {
	this.fare = fare;
}

}
