package com.flightReservationApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flightReservationApp.entity.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
