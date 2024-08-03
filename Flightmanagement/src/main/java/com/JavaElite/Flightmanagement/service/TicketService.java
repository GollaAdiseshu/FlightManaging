package com.JavaElite.Flightmanagement.service;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.JavaElite.Flightmanagement.bean.Flight;
import com.JavaElite.Flightmanagement.bean.Passenger;
import com.JavaElite.Flightmanagement.bean.Ticket;
import com.JavaElite.Flightmanagement.dao.FlightDao;
import com.JavaElite.Flightmanagement.dao.FlightRepository;
import com.JavaElite.Flightmanagement.dao.PassengerRepository;
import com.JavaElite.Flightmanagement.dao.TicketRepository;

@Service
public class TicketService {
    
    @Autowired
    private FlightDao flightDao;
    
    @Autowired
    private TicketRepository ticketRepository;
    
    @Autowired
    private PassengerRepository passengerRepository;
    
    @Autowired
    private FlightRepository flightRepository;

    private int calculateAge(String dob) {
        LocalDate today = LocalDate.now();
        String[] dataArr = dob.split("-");
        LocalDate birthDay = LocalDate.of(Integer.parseInt(dataArr[0]), Integer.parseInt(dataArr[1]), Integer.parseInt(dataArr[2]));
        Period period = Period.between(birthDay, today);
        return period.getYears();
    }

    public Double discountFareCalculation(Passenger passenger) {
        int age = calculateAge(passenger.getPassengerDOB());
        double finalFare;
        if (age <= 14) {
            finalFare = passenger.getFare() / 2;
        } else if (age >= 65) {
            finalFare = passenger.getFare() - (passenger.getFare() * 0.30);
        } else {
            finalFare = passenger.getFare();
        }
        return finalFare;
    }

    public boolean capacityCalculation(int numberOfSeatBooking, Long flightNumber) {
        Flight flight = flightDao.findFlightById(flightNumber);
        if (flight == null) {
            return false;
        }

        int bookedSeat = flight.getSeatBooked() + numberOfSeatBooking;
        int balance = flight.getSeatCapacity() - bookedSeat;

        if (balance < 0) {
            return false;
        } else {
            flight.setSeatBooked(bookedSeat);
            flightDao.save(flight);
            return true;
        }
    }

    public Double totalBillCalculation(List<Passenger> passengerList) {
        double totalValue = 0.0;
        for (Passenger passenger : passengerList) {
            totalValue += passenger.getFare();
        }
        return totalValue;
    }

    public boolean cancelTicket(Long ticketNumber) {
        Optional<Ticket> optionalTicket = ticketRepository.findById(ticketNumber);
        if (optionalTicket.isPresent()) {
            Ticket ticket = optionalTicket.get();
            
            // Fetch passengers associated with the ticket
            List<Passenger> passengers = passengerRepository.findByEmbeddedId_TicketNumber(ticketNumber);

            // Update seat capacity
            Optional<Flight> optionalFlight = flightRepository.findById(ticket.getFlightNumber());
            if (optionalFlight.isPresent()) {
                Flight flight = optionalFlight.get();
                int seatsToFree = passengers.size();
                flight.setSeatBooked(flight.getSeatBooked() - seatsToFree);
                flightRepository.save(flight);
            }
            
            // Delete ticket and associated passengers
            passengerRepository.deleteAll(passengers);
            ticketRepository.delete(ticket);
            return true;
        }
        return false;
    }

	public List<Ticket> getAllTickets() {
		return ticketRepository.findAll();
	}
}
