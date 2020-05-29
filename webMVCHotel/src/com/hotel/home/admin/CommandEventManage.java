package com.hotel.home.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEventManage implements CommandService {

	public CommandEventManage() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		EventsDAO dao = new EventsDAO();
		PagingVO pagevo = new PagingVO();
		List<EventsVO> list = dao.EventAllRecord(pagevo);
		req.setAttribute("list", list);
		
		return "/admin/event_manage.jsp";
	}

}
