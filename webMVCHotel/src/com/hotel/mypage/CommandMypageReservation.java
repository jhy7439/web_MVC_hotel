package com.hotel.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandMypageReservation implements CommandService {

	public CommandMypageReservation() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return "/mypage/mypage_reservation.jsp";
	}

}
