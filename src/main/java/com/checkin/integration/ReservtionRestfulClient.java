package com.checkin.integration;

import org.springframework.web.bind.annotation.RequestBody;

import com.checkin.dto.Reservation;
import com.checkin.dto.ReservationUpdateRequest;

public interface ReservtionRestfulClient {

	Reservation findReservation(long id);

	Reservation updateReservation(@RequestBody ReservationUpdateRequest request);

}
