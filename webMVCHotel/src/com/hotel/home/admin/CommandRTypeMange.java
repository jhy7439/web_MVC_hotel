package com.hotel.home.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandRTypeMange implements CommandService {

	public CommandRTypeMange() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		RTypeDAO dao = new RTypeDAO();
		List<RTypeVO> lst = dao.typeList();
		
		req.setAttribute("lst", lst);
		return "/admin/r_type_manage.jsp";
	}

}
