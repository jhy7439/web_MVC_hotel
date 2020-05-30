package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandRTypeView implements CommandService {

	public CommandRTypeView() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		RTypeVO vo = new RTypeVO();
	
		vo.setRoom_type_code(Integer.parseInt(req.getParameter("room_type_code")));
		
		RTypeDAO dao = new RTypeDAO();
		
		dao.typeSelect(vo);
		System.out.println("RTypeView 커멘드");
		req.setAttribute("vo", vo);
		return "/admin/r_type_view.jsp";
	}

}
