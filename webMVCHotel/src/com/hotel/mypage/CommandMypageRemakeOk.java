package com.hotel.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import com.hotel.home.CommandService;
import com.hotel.home.member.memberDAO;
import com.hotel.home.member.memberVO;

public class CommandMypageRemakeOk implements CommandService {

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		memberVO vo= new memberVO();
		req.setCharacterEncoding("UTF-8");
		
		HttpSession ses = req.getSession();
		
		vo.setUser_id((String)ses.getAttribute("user_id"));//아이디만 세션에서 가져옴		
		vo.setUser_name(req.getParameter("user_name"));
		vo.setTel1(req.getParameter("tel1"));
		vo.setTel2(req.getParameter("tel2"));
		vo.setTel3(req.getParameter("tel3"));
		vo.setEmail_id(req.getParameter("email_id"));
		vo.setEmail_domain(req.getParameter("email_domain"));
		memberDAO dao= new memberDAO();
	int result =dao.MemberUpdate(vo);

		req.setAttribute("result", result);
		return "/mypage/mypage_remakeOk.jsp";
	}

}
