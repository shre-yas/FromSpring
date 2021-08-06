package com.flightReservationApp.services;


import org.springframework.stereotype.Service;

import com.flightReservationApp.dto.ReservationRequest;
import com.flightReservationApp.entity.Reservation;



public interface reservationService {
	
	Reservation bookFlight(ReservationRequest request);

}
