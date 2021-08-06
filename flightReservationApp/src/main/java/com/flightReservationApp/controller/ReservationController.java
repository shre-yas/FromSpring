package com.flightReservationApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.flightReservationApp.dto.ReservationRequest;
import com.flightReservationApp.entity.Reservation;
import com.flightReservationApp.services.reservationService;

@Controller
public class ReservationController {
	
	@Autowired                   
	private reservationService reservice;
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation(ReservationRequest reservation, ModelMap modelMap) {
		Reservation reservationId = reservice.bookFlight(reservation);
		modelMap.addAttribute("reservationId", reservationId.getId());
		
		return"confirmReservation";
	}

}
