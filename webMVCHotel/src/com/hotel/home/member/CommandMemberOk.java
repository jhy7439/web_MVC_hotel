package com.hotel.home.member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandMemberOk implements CommandService {

	public CommandMemberOk() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		memberVO vo =new memberVO();
		vo.setUser_id(req.getParameter("user_id"));
		vo.setUser_en_name(req.getParameter("user_en_name"));
		vo.setUser_pwd(req.getParameter("user_pwd"));
		vo.setUser_name(req.getParameter("user_name"));
		vo.setTel1(req.getParameter("tel1"));
		vo.setTel2(req.getParameter("tel2"));
		vo.setTel3(req.getParameter("tel3"));
		vo.setEmail_id(req.getParameter("email_id"));
		vo.setEmail_domain(req.getParameter("email_domain"));
		vo.setZipcode(req.getParameter("zipcode"));
		vo.setAddr(req.getParameter("addr"));
		vo.setAddrdetail(req.getParameter("addrdetail"));
		vo.setYear(req.getParameter("year"));
		vo.setMonth(req.getParameter("month"));
		vo.setDay(req.getParameter("day"));
		
		
		



		
		memberDAO dao= new memberDAO();
		int cnt= dao.memberInsert(vo);
		//등록이되면 갈주소 ,실패면 회원가입폼으로 이동
		req.setAttribute("cnt", cnt);
		System.out.println(cnt);
		return "/member/memberOk.jsp";
	}
}
