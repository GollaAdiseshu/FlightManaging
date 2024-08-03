package com.JavaElite.Flightmanagement.bean;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

@Embeddable
public class TicketPassengerEmbed implements Serializable{
@NotNull
private Long ticketNumber;
@NotNull
private Integer serialNumber;
public TicketPassengerEmbed() {
	super();
}
public TicketPassengerEmbed(Long ticketNumber, Integer serialNumber) {
	super();
	this.ticketNumber = ticketNumber;
	this.serialNumber = serialNumber;
}
public Long getTicketNumber() {
	return ticketNumber;
}
public void setTicketNumber(Long ticketNumber) {
	this.ticketNumber = ticketNumber;
}
public Integer getSerialNumber() {
	return serialNumber;
}
public void setSerialNumber(Integer serialNumber) {
	this.serialNumber = serialNumber;
}
@Override
public int hashCode() {
	return Objects.hash(serialNumber, ticketNumber);
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	TicketPassengerEmbed other = (TicketPassengerEmbed) obj;
	return Objects.equals(serialNumber, other.serialNumber) && Objects.equals(ticketNumber, other.ticketNumber);
}
}