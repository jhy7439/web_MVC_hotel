package com.hotel.home.events;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEventMain implements CommandService {
	
	public CommandEventMain() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//페이지 번호 구하기
		String pageNumString = req.getParameter("pageNum");
		PagingVO pageVO = new PagingVO();
		
		//페이지 번호가 전송된 경우만 페이지 번호를 변경한다.
		if(pageNumString != null) {
			pageVO.setPageNum(Integer.parseInt(pageNumString));
		}
		
		EventsDAO dao = new EventsDAO();
		
		pageVO.setTotalRecord(dao.getTotalRecord());
		
		List<EventsVO> lst = dao.EventAllRecord(pageVO);
		
		req.setAttribute("lst", lst);
		req.setAttribute("pageVO", pageVO);
		
		return "/events/events_main.jsp";
	}
}
