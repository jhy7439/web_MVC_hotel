package com.hotel.home.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.home.CommandService;

public class CommandLogout implements CommandService {

	public CommandLogout() {

	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//·Î±×¾Æ¿ô
		HttpSession ses =req.getSession();
		ses.invalidate();
		
		return "/main/main.jsp";
	}

}
