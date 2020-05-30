package com.hotel.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandList implements CommandService {

	public CommandList() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PagingVO pageVO = new PagingVO();
		try {
		//��������ȣ ���ϱ�
		String pageNumStr =req.getParameter("pageNum");
 		
 		//������ ��ȣ�� ���۵Ǹ� ������ ��ȣ�� �����Ѵ�.
 		if(pageNumStr !=null) {
 			pageVO.setPageNum(Integer.parseInt(pageNumStr));
 		}
		}catch(NumberFormatException e) {
			
		}
 		//�˻���, �˻�Ű request
 		pageVO.setSearchKey(req.getParameter("searchKey"));
 		pageVO.setSearchWord(req.getParameter("searchWord"));
 		boardDAO dao = new boardDAO();
 		pageVO.setTotalRecord(dao.getTotalRecord(pageVO));
 		
 		List<boardVO> lst = dao.boardAllRecord(pageVO);
 		
 		req.setAttribute("lst", lst);
 		req.setAttribute("pageVO", pageVO);
		return "/question/questionList.jsp";
	}

}
