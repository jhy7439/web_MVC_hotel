package com.hotel.home.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;
import com.hotel.home.DBConn;

public class CommandIdCheck implements CommandService {

	public CommandIdCheck() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String user_id = req.getParameter("user_id");
		//db 아이디 체크
		memberDAO dao =new memberDAO();
		int result =dao.getIdCheck(user_id);
		
		//검색 결과,userid 를 뷰페이지로 보내기
		req.setAttribute("user_id", user_id);
		req.setAttribute("idresult", result);
		
		
		return "/member/idCheck.jsp";
	}

}
