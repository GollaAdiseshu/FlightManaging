package com.JavaElite.Flightmanagement.dao;

import com.JavaElite.Flightmanagement.bean.Ticket;

public interface TicketDao {
	public void save(Ticket ticket);
	public Long findLastTicketNumber();

}
