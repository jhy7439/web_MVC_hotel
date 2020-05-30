package com.hotel.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandView implements CommandService {

	public CommandView() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		boardVO vo = new boardVO();
		vo.setNo(Integer.parseInt(req.getParameter("no")));
		
		PagingVO pVo = new PagingVO();
		pVo.setPageNum(Integer.parseInt(req.getParameter("pageNum")));
		pVo.setSearchKey(req.getParameter("searchKey"));
		pVo.setSearchWord(req.getParameter("searchWord"));
		
		boardDAO dao = new boardDAO();
		dao.boardSelect(vo);
		
		LeadLagVO pnVo = dao.getLeadLagSelect(vo.getNo(), pVo);
		
		req.setAttribute("vo", vo);
		req.setAttribute("pVo", pVo);
		req.setAttribute("pnVo", pnVo);
		
		return "/question/view.jsp";
	}

}
