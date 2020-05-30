package com.hotel.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandDel implements CommandService {

	public CommandDel() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int no = Integer.parseInt(req.getParameter("no"));
		
		boardDAO dao = new boardDAO();
		int result = dao.boardDelete(no);
		req.setAttribute("result", result);
		return "/question/questionDel.jsp";
	}

}
