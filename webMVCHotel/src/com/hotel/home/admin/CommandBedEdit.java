package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandBedEdit implements CommandService {

	public CommandBedEdit() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		BedVO bVo = new BedVO();
		bVo.setBed_code(Integer.parseInt(req.getParameter("bed_code")));
		
		BedDAO dao = new BedDAO();
		dao.bedSelect(bVo);
		
		req.setAttribute("bVo", bVo);
		return "/admin/bed_edit.jsp";
	}

}
