package com.app.movie.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.app.movie.entity.SeatEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.service.SeatService;
import com.app.movie.service.ShowtimeService;

@Controller
public class SeatSelectionController {
	
	@Autowired
	private ShowtimeService sr;
	
	@Autowired
	private SeatService ss;
	
	@GetMapping("/movieapp/seat-selection/{selectedDate}/{selectedTime}")
	public String viewSeats(@PathVariable String selectedDate, @PathVariable String selectedTime, Model m) throws ParseException {

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = dateFormat.parse(selectedDate);

		LocalTime time = LocalTime.parse(selectedTime);

		ShowtimeEntity showtime = sr.findByStartDateAndStartTime(date, time);

		if (showtime != null) {
			List<SeatEntity> seats = ss.findSeatsByShowtime(showtime);

			m.addAttribute("theatre", showtime.getTheatre());
			m.addAttribute("seats", seats);
			System.out.println("Available Seats: " + seats.size());
		} else {
			System.out.println("No showtime found for the given date and time!");
		}

		return "seatSelection";
	}
}