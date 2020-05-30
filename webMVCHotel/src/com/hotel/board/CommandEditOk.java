package com.hotel.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEditOk implements CommandService {

	public CommandEditOk() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		boardVO vo = new boardVO();
		req.getParameter("no");
		vo.setNo(Integer.parseInt(req.getParameter("no")));
		vo.setSubject(req.getParameter("subject"));
		vo.setContent(req.getParameter("content"));
		vo.setName(req.getParameter("name"));
		
		PagingVO pVo = new PagingVO();
		pVo.setPageNum(Integer.parseInt(req.getParameter("pageNum")));
		pVo.setSearchKey(req.getParameter("searchKey"));
		pVo.setSearchWord(req.getParameter("searchWord"));
		
		boardDAO dao = new boardDAO();
		int result = dao.boardUpdate(vo);
		
		req.setAttribute("result", result);
		req.setAttribute("no", vo.getNo());
		req.setAttribute("pVo", pVo);
		return "/question/questionEditOk.jsp";
	}

}
