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
		//페이지번호 구하기
		String pageNumStr =req.getParameter("pageNum");
 		
 		//페이지 번호가 전송되면 페이지 번호를 변경한다.
 		if(pageNumStr !=null) {
 			pageVO.setPageNum(Integer.parseInt(pageNumStr));
 		}
		}catch(NumberFormatException e) {
			
		}
 		//검색어, 검색키 request
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
