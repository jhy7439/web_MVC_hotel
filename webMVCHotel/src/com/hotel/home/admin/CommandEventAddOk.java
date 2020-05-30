package com.hotel.home.admin;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.home.CommandService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommandEventAddOk implements CommandService {
	
	public CommandEventAddOk() {
		
	}
	
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String path = req.getServletContext().getRealPath("/upload");
		int maxSize = 1024*1024*1024;
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(req, path, maxSize, "UTF-8", policy);
		
		EventsVO vo = new EventsVO();
		vo.setRoom_event_name(mr.getParameter("subject"));
		vo.setEvent_type(mr.getParameter("eventType"));
		vo.setDsp(mr.getParameter("content"));
		vo.setSub_dsp(mr.getParameter("sub_content"));
		vo.setAction(mr.getParameter("action"));
		vo.setEvent_start_date(mr.getParameter("start_date"));
		vo.setEvent_end_date(mr.getParameter("end_date"));
		
		Enumeration fileList = mr.getFileNames();

		String oldFilename = (String)fileList.nextElement();
		String newFilename = mr.getFilesystemName(oldFilename);
		
		vo.setEvent_img(newFilename);
		
		EventsDAO dao = new EventsDAO();
		int result = dao.EventInsert(vo);
		
		if(result<=0) {
			System.out.println(2222);
			if(newFilename!=null) {
				try {
					File f = new File(path, newFilename);
				}catch(Exception e) {
					System.out.println("파일 삭제 에러");
				}
			}
		}

		
		req.setAttribute("result", result);
		return "/admin/event_add_ok.jsp";
	}

}
