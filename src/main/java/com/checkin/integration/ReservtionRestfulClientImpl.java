package com.checkin.integration;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.checkin.dto.Reservation;
import com.checkin.dto.ReservationUpdateRequest;

@Component
public class ReservtionRestfulClientImpl implements ReservtionRestfulClient {

	@Override
	public Reservation findReservation(long id) {
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate.getForObject("http://localhost:8080/flight/reservation/"+id, Reservation.class);
		return reservation;
	}

	@Override
	public Reservation updateReservation(ReservationUpdateRequest request) {
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate.postForObject("http://localhost:8080/flight/reservation", request, Reservation.class);
		return reservation;
	}

}
