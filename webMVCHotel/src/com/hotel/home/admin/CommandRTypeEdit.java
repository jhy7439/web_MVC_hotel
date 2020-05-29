package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandRTypeEdit implements CommandService {

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int no = Integer.parseInt(req.getParameter("room_type_code"));
		RTypeVO vo = new RTypeVO();
		vo.setRoom_type_code(no);
		RTypeDAO dao = new RTypeDAO();
		dao.typeSelect(vo);
		
		req.setAttribute("vo", vo);
		return "/admin/r_type_edit.jsp";
	}

}
