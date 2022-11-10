package com.checkin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.checkin.dto.Reservation;
import com.checkin.dto.ReservationUpdateRequest;
import com.checkin.integration.ReservtionRestfulClient;

@Controller
public class CheckInController {
	
	@Autowired
	private ReservtionRestfulClient restClient;
	
	@RequestMapping("/getCheckInPage")
	public String startCheckIn() {
		return "startCheckIn";
	}
	
	@RequestMapping("/backToHome")
	public String backToHome() {
		return "startCheckIn";
	}
	@RequestMapping("/proceedCheckIn")
	public String proceedCheckIn(@RequestParam("id") long id, ModelMap model) {
		Reservation reservation = restClient.findReservation(id);
		model.addAttribute("reservation", reservation);
		return "displayReservation";
	}
	
	@RequestMapping("/proceedToCheckIn")
	public String proceedToCheckIn(@RequestParam("id") long id, @RequestParam("numberOfBags") int numberOfBags) {
		ReservationUpdateRequest request = new ReservationUpdateRequest();
		request.setId(id);
		request.setNumberOfBags(numberOfBags);
		request.setCheckedIn(true);
		
		restClient.updateReservation(request);
		return "confirmation";
	}
	
}
