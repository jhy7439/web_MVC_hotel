package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandBedEditOk implements CommandService {

	public CommandBedEditOk() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		BedVO bVo = new BedVO();
		String rateComma = req.getParameter("bed_rate");
		String rate = rateComma.replaceAll(",", "");
		
		bVo.setBed_code(Integer.parseInt(req.getParameter("bed_code")));
		bVo.setBed_type(req.getParameter("bed_type"));
		bVo.setBed_rate(Integer.parseInt(rate));
		
		BedDAO dao = new BedDAO();
		int result = dao.bedUpdate(bVo);
		
		req.setAttribute("result", result);
		return "/admin/bed_edit_ok.jsp";
	}

}
