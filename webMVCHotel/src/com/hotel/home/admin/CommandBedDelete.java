package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandBedDelete implements CommandService {

	public CommandBedDelete() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		BedVO bVo = new BedVO();
		bVo.setBed_code(Integer.parseInt(req.getParameter("bed_code")));
		
		BedDAO dao = new BedDAO();
		int result = dao.bedDelete(bVo.getBed_code());
		
		req.setAttribute("result", result);
		
		return "/admin/bed_delete_ok.jsp";
	}

}
