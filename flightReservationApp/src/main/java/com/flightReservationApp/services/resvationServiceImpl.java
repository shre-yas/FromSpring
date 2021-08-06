package com.flightReservationApp.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flightReservationApp.dto.ReservationRequest;
import com.flightReservationApp.entity.Flight;
import com.flightReservationApp.entity.Passenger;
import com.flightReservationApp.entity.Reservation;
import com.flightReservationApp.repository.FlightRepository;
import com.flightReservationApp.repository.PassengerRepository;
import com.flightReservationApp.repository.ReservationRepository;
import com.flightReservationApp.utilities.EmailUtil;
import com.flightReservationApp.utilities.PdfGenerator;

@Service
public class resvationServiceImpl implements reservationService {

	@Autowired
	private PassengerRepository passengerRepo;

	@Autowired
	private FlightRepository FlightRepo;

	@Autowired
	private ReservationRepository reserveRepo;
	
	
	@Autowired
	public EmailUtil emailUtil;

	@Override
	public Reservation bookFlight(ReservationRequest request) {  

		long flightId = request.getFlightId();
		Optional<Flight> findById = FlightRepo.findById(flightId);
		Flight flight = findById.get();
		
		String filePath = "C:\\Users\\shrey\\OneDrive\\Desktop\\Tickets\\";

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getFirstName());
		passenger.setMiddleName(request.getMiddleName());
		passenger.setLastName(request.getLastName());
		passenger.setEmail(request.getEmail());
		passenger.setPhone(request.getPhone());
		passengerRepo.save(passenger);

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);

		reserveRepo.save(reservation);
		
		PdfGenerator pdf = new PdfGenerator();
		pdf.generatePDF(filePath +Math.round(Math.random()*100000)+passenger.getFirstName()+reservation.getId() + ".pdf", request.getFirstName(), request.getEmail(), request.getPhone(), flight.getOperatingAirline(), flight.getDateOfDeparture(), flight.getDepartureCity(), flight.getArrivalCity());
		emailUtil.sendItinerary(passenger.getEmail(), filePath);
		
		return reservation;
	}

}
