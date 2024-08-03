package com.JavaElite.Flightmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.JavaElite.Flightmanagement.bean.Passenger;
import com.JavaElite.Flightmanagement.bean.TicketPassengerEmbed;

public interface PassengerRepository extends JpaRepository<Passenger, TicketPassengerEmbed> {
    public List<Passenger> findByEmbeddedId_TicketNumber(Long ticketNumber);
    List<Passenger> findByEmbeddedId_TicketNumberOrderByEmbeddedId_SerialNumber(Long ticketNumber);
    List<Passenger> findAllByOrderByEmbeddedId_TicketNumberAsc();
}