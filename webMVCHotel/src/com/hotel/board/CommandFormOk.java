package com.hotel.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.home.CommandService;

public class CommandFormOk implements CommandService {

	public CommandFormOk() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		boardVO vo = new boardVO();
		
		vo.setSubject(req.getParameter("subject"));//제목
		vo.setContent(req.getParameter("content"));//글내용
		vo.setName(req.getParameter("name"));
		vo.setTel(req.getParameter("tel"));
		vo.setWriteDate(req.getParameter("writeDate"));
		vo.setQuestionType(req.getParameter("questionType"));//질문유형
		vo.setPublicPrivate(req.getParameter("publicPrivate"));//공개여부
		
		
		HttpSession ses = req.getSession();
		
		
		
		boardDAO dao = new boardDAO();
		int cnt = dao.boardInsert(vo);
		
		req.setAttribute("cnt", cnt);
		return "/question/questionFormOk.jsp";
	}

}
