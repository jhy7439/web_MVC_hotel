package com.hotel.home.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandBedManage implements CommandService {

	public CommandBedManage() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		BedDAO dao = new BedDAO();
		List<BedVO> lst = dao.bedList();
		req.setAttribute("lst", lst);
		
		return "/admin/bed_manage.jsp";
	}

}
