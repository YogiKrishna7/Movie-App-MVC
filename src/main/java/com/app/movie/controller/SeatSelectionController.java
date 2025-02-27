package com.app.movie.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.movie.entity.SeatEntity;
import com.app.movie.entity.ShowtimeEntity;
import com.app.movie.entity.UserEntity;
import com.app.movie.service.SeatService;
import com.app.movie.service.ShowtimeService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/movieapp")
public class SeatSelectionController {
	
	@Autowired
	private ShowtimeService sr;
	
	@Autowired
	private SeatService ss;
	
	@GetMapping("/seat-selection/{selectedDate}/{selectedTime}/{theatreId}")
	public String viewSeats(@PathVariable String selectedDate, @PathVariable String selectedTime, @PathVariable int theatreId, Model m, HttpSession session, HttpServletResponse response) throws ParseException {
		
        
        UserEntity user = (UserEntity) session.getAttribute("user");

        if (user == null) {
			try {
				response.sendRedirect("/movieapp/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = dateFormat.parse(selectedDate);
		LocalTime time = LocalTime.parse(selectedTime);

		ShowtimeEntity showtime = sr.findByStartDateAndStartTime(date, time, theatreId);

		if (showtime != null) {
			List<SeatEntity> seats = ss.findByShowtimeAndIsBooked(showtime, "N");

			m.addAttribute("theatre", showtime.getTheatre());
			m.addAttribute("showtimeId", showtime);
			m.addAttribute("seats", seats);
		} else {
			System.out.println("No showtime found for the given date and time!");
		}

		return "seatSelection";
	}
	
	@GetMapping("/seat-selection-movie/{selectedDate}/{selectedTime}/{theatreId}")
	public String viewSeatsMovie(@PathVariable String selectedDate, @PathVariable String selectedTime, @PathVariable int theatreId, Model m, HttpSession session, HttpServletResponse response) throws ParseException {
		
        
        UserEntity user = (UserEntity) session.getAttribute("user");

        if (user == null) {
        	try {
				response.sendRedirect("/movieapp/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = dateFormat.parse(selectedDate);
		LocalTime time = LocalTime.parse(selectedTime);

		ShowtimeEntity showtime = sr.findByStartDateAndStartTime(date, time, theatreId);

		if (showtime != null) {
			List<SeatEntity> seats = ss.findByShowtimeAndIsBooked(showtime, "N");

			m.addAttribute("theatre", showtime.getTheatre());
			m.addAttribute("movieInfo", showtime.getMovie());
			m.addAttribute("showtimeId", showtime);
			m.addAttribute("seats", seats);
			
		} else {
			System.out.println("No showtime found for the given date and time!");
		}

		return "movieSeatSelection";
	}
}