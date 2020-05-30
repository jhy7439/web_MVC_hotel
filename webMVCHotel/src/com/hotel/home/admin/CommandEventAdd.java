package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEventAdd implements CommandService {
	
	public CommandEventAdd() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		return "/admin/event_add.jsp";
	}
}
