package com.hotel.home.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandRoomAdd implements CommandService {

	public CommandRoomAdd() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("커멘드 : room add");
		//침대 정보
		BedDAO bedDao = new BedDAO();
		List<BedVO> bedList = bedDao.bedList();
		
		//객실 타입 정보
		RTypeDAO tDao = new RTypeDAO();
		List<RTypeVO> typeList = tDao.typeList();
		
		req.setAttribute("bedList", bedList);
		req.setAttribute("typeList", typeList);
		return "/admin/room_add.jsp";
	}

}
