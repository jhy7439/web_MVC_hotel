package com.hotel.home.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEventDelete implements CommandService {
	
	public CommandEventDelete() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		EventsVO vo = new EventsVO();
		vo.setRoom_event_code(Integer.parseInt(req.getParameter("room_event_code")));
		
		EventsDAO dao = new EventsDAO();
		int cnt = dao.EventDelete(vo);
		if(cnt>0) {
			String path = req.getServletContext().getRealPath("/upload");
			File f = new File(path, vo.getEvent_img());
			if(f.exists()) {
				f.delete();
				System.out.println("파일 삭제됨.");
			}else {
				System.out.println("파일이 존재하지 않습니다.");
			}
		}
		req.setAttribute("cnt", cnt);
		return "/admin/event_delete.jsp";
	}

}
