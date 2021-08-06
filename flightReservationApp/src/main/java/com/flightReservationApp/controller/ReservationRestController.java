package com.flightReservationApp.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flightReservationApp.dto.ReservationUpdateRequest;
import com.flightReservationApp.entity.Reservation;
import com.flightReservationApp.repository.ReservationRepository;

@RestController
public class ReservationRestController {
	
	@Autowired
	private ReservationRepository reserveRepo;
	
	@RequestMapping("/reservation/{id}")
	public Reservation findReservation(@PathVariable("id") Long id) {
		
		Optional<Reservation> findById = reserveRepo.findById(id);
		Reservation reservation = findById.get();
		return reservation;
	}
	@RequestMapping("/reservation")
	public Reservation updateReservation(@RequestBody ReservationUpdateRequest request) {
		Optional<Reservation> findById = reserveRepo.findById(request.getId());
		Reservation reservation = findById.get();
		reservation.setCheckedIn(request.isCheckedIn());
		reservation.setNumberOfBags(request.getNumberOfBags());
		return reserveRepo.save(reservation);
	}
	
	
		
	}


