package com.hotel.home.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;

public class CommandRTypeDelete implements CommandService {

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RTypeVO vo = new RTypeVO();
		vo.setRoom_type_code(Integer.parseInt(req.getParameter("room_type_code")));
		
		RTypeDAO dao = new RTypeDAO();
		int result = dao.typeDelete(vo);
		if(result>0) {
			String path = req.getServletContext().getRealPath("/upload");
			for(String imgName : vo.getRoomImgList()) {
				if(imgName != null) {
					File f = new File(path, imgName);
					f.delete();
				}
			}
		}
		req.setAttribute("result", result);
		return "/admin/r_type_delete_ok.jsp";
	}

}
