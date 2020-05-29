package com.hotel.home.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandRoomAddOk implements CommandService {

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		RoomVO vo = new RoomVO();
		
		//객실호수
		vo.setRoom_num(req.getParameter("room_num"));
		//객실이름
		vo.setRoom_name(req.getParameter("room_name"));
		//객실최대인원(어른)
		vo.setMax_adult(Integer.parseInt(req.getParameter("max_adult")));
		//객실최대인원(아이)
		vo.setMax_child(Integer.parseInt(req.getParameter("max_child")));
		//객실타입
		vo.setRoom_type_code(Integer.parseInt(req.getParameter("room_type")));
		//침대타입
		vo.setBed_code(Integer.parseInt(req.getParameter("bed")));
		//객실상태
		vo.setRoom_status(req.getParameter("room_status"));
		
		//관리자 아이디
		
		RoomDAO dao = new RoomDAO();
		int result = dao.roomInsert(vo);
		req.setAttribute("result", result);
		return "/admin/room_add_ok.jsp";
	}

}
