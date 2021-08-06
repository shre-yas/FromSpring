package com.flightReservationApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flightReservationApp.entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
