package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEventEdit implements CommandService {
	
	public CommandEventEdit() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int no = Integer.parseInt(req.getParameter("room_event_code"));
		EventsDAO dao = new EventsDAO();
		EventsVO vo = dao.EventSelect(vo);
		
		req.setAttribute("EventsVO", vo);
		return "/admin/event_edit.jsp";
	}

}
