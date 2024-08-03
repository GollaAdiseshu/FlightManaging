package com.JavaElite.Flightmanagement.dao;

import com.JavaElite.Flightmanagement.bean.Passenger;
import java.util.List;

public interface PassengerDao {
    public void save(Passenger passenger);
    public List<Passenger> findByTicketNumber(Long ticketNumber);
}
