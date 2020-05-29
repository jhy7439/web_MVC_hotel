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
		//������ ��ȣ ���ϱ�
		String pageNumString = req.getParameter("pageNum");
		PagingVO pageVO = new PagingVO();
		
		//������ ��ȣ�� ���۵� ��츸 ������ ��ȣ�� �����Ѵ�.
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
