package com.hotel.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.home.CommandService;
import com.hotel.home.member.memberDAO;
import com.hotel.home.member.memberVO;

public class CommandMypagePwd implements CommandService {

	public CommandMypagePwd() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession ses= req.getSession();
		memberVO vo =new memberVO();
		memberDAO dao= new memberDAO();
		vo.setUser_id((String)ses.getAttribute("user_id"));
		dao.getMember(vo);
		req.setAttribute("vo", vo);
		return "/mypage/mypage_pwd.jsp";
	}

}
