package com.hotel.home.cafe;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandCafeInfo implements CommandService {
	
	public CommandCafeInfo() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		return "/cafe&restaurant/cafe.jsp";
	}

}
