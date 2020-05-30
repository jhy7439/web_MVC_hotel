package com.hotel.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.board.boardDAO;
import com.hotel.board.boardVO;
import com.hotel.home.CommandService;
import com.hotel.home.member.memberDAO;
import com.hotel.home.member.memberVO;

public class CommandMypageMainOk implements CommandService {

	public CommandMypageMainOk() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		memberVO vo =new memberVO();
		memberDAO dao=new memberDAO();
		String viewFileName="";
		vo.setUser_id(req.getParameter("user_id"));
		vo.setUser_pwd(req.getParameter("user_pwd"));
		
		dao.nowpwd(vo);
		
		// vo 현재: user_id, user_pwd, loginstatus, user_name
			if(vo.getLoginStatus().equals("Y")) {//로그인 성공
				HttpSession ses=req.getSession();
				ses.setAttribute("user_name", vo.getUser_name());
				ses.setAttribute("user_id", vo.getUser_id());
				
				//user_id로 레코드 선택
				dao.getMember(vo);
				req.setAttribute("vo", vo);
				System.out.println("로그인성공");
				viewFileName ="/mypage/mypage_remake.jsp";
		}else {
			System.out.println("로그인실패");
			viewFileName ="/mypage/mypage_main.jsp";
		}
			
		return viewFileName;
		
	}
}
 