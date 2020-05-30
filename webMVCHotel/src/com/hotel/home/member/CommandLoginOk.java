package com.hotel.home.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.home.CommandService;

public class CommandLoginOk implements CommandService {

	public CommandLoginOk() {

	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		memberVO vo =new memberVO();
		memberDAO dao=new memberDAO();
		String viewFileName="";
		vo.setUser_id(req.getParameter("user_id"));
		vo.setUser_pwd(req.getParameter("user_pwd"));
		
		
		dao.memberlogin(vo);
		if(vo.getLoginStatus().equals("Y")) {//로그인 성공
			HttpSession ses=req.getSession();
			ses.setAttribute("user_name", vo.getUser_name());
			ses.setAttribute("user_id", vo.getUser_id());
			ses.setAttribute("logStatus",vo.getLoginStatus());
			viewFileName ="/main/main.jsp";
		}else {
			System.out.println("로그인실패");
			viewFileName ="/member/login.jsp";
		}
		return viewFileName;
	}

}
