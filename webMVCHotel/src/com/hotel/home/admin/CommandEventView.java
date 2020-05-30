package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEventView implements CommandService {
	
	public CommandEventView() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		EventsVO vo = new EventsVO();
		vo.setRoom_event_code(Integer.parseInt(req.getParameter("room_event_code")));
		
		EventsDAO dao = new EventsDAO();
		dao.EventSelect(vo);
		
		req.setAttribute("vo", vo);
		
		return "/admin/event_view.jsp";
	}

}
