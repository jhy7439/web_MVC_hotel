package com.hotel.home.restaurant;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandRestaurantInfo implements CommandService {
	
	public CommandRestaurantInfo() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		return "/cafe&restaurant/restaurant.jsp";
	}
}
