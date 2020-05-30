package com.hotel.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.hotel.home.CommandService;
import com.hotel.home.member.memberDAO;
import com.hotel.home.member.memberVO;

public class CommandMypagePwdOk implements CommandService {

	public CommandMypagePwdOk() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		memberVO vo = new memberVO();
		req.setCharacterEncoding("UTF-8");
		
		HttpSession ses = req.getSession();
		
		vo.setUser_id((String)ses.getAttribute("user_id"));//아이디만 세션에서 가져옴		
		vo.setUser_pwd(req.getParameter("user_pwd"));
	
		memberDAO dao= new memberDAO();
		
		int result = dao.MypageMemberUpdate(vo);
		req.setAttribute("result", result);
		return "/mypage/mypage_pwdOk.jsp";
		
	}

}
