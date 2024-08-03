package com.JavaElite.Flightmanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.JavaElite.Flightmanagement.bean.FlightUser;
import java.util.Optional;

public interface FlightUserRepository extends JpaRepository<FlightUser, String> {
   
    Optional<FlightUser> findByUsername(String username);
}