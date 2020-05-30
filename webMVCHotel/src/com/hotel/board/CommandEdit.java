package com.hotel.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandEdit implements CommandService {

	public CommandEdit() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		boardVO vo = new boardVO();
		vo.setNo(Integer.parseInt(req.getParameter("no")));//"no"변수명getParameter객체라서 int값으로 형변환
		
		PagingVO pVo = new PagingVO();
		pVo.setPageNum(Integer.parseInt(req.getParameter("pageNum")));
		pVo.setSearchKey(req.getParameter("searchKey"));
		pVo.setSearchWord(req.getParameter("searchWord"));
		
		boardDAO dao = new boardDAO();
		dao.boardSelect(vo);
		
		req.setAttribute("vo", vo);
		req.setAttribute("pVo", pVo);
		return "/question/questionEdit.jsp";
	}

}
