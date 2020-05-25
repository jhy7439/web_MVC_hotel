package com.hotel.home.admin;

import java.io.File;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.hotel.home.CommandService;


public class CommandRTypeAddOk implements CommandService {

	public CommandRTypeAddOk() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException { 
		req.setCharacterEncoding("UTF-8");
		
		Random ran = new Random();
		//디스크상의 프로젝트 실제 경로 얻기
		String path = req.getServletContext().getRealPath("/upload");
		
		//메인 이미지 서버로 업로드
		int maxSize = 1024*1024*5;//5메가 바이트
		
		
		try {
			File dir = new File(path);
			DiskFileItemFactory df = new DiskFileItemFactory();
			/*	setRepository
			 *  메모리 저장 최대 크기를 넘길 경우 파일을 생성할 디렉터리를 지정.
			 *  지정하지 않을 경우 시스템의 기본 임시 디렉터리를 사용.
			 *  ( System.getProperty("java.io.tmpdir") 로 기본임시 디렉터리를 구할 수 있음 )
			 */
			df.setRepository(dir);
			//업로드 요청을 처리하는 ServletFileUpload생성			
			ServletFileUpload fileupload = new ServletFileUpload(df);
			//이미지 1개당 5메가 바이트
			fileupload.setFileSizeMax(maxSize);
			//업로드 요청파싱해서 FileItem 목록 구함
			List<FileItem> items = fileupload.parseRequest(req);
			for(FileItem item : items) {
				if(item.isFormField()) {//파일이 아닐경우
					System.out.println(item.getFieldName()+ "=" +item.getString("UTF-8"));
				}else {//파일인 경우
					if(item.getSize()>0) {
						//item.getName() : 원래파일명
						String separator = File.separator;
						int index = item.getName().lastIndexOf(".");
						String fileName = item.getName().substring(0, index);
						String extName = item.getName().substring(index + 1);
						File uploadFile = new File(path, fileName + "." + extName);
						
						while(uploadFile.exists()) {
							//업로드 파일명
							uploadFile = new File(path, fileName +"_"+(ran.nextInt(500)+1)+"."+extName);
						}
						//업로드
						System.out.println("업로드 파일명 : "+ uploadFile.getName());
						item.write(uploadFile);
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}		
		
		
		RTypeVO rtVo = new RTypeVO();
		rtVo.setRoom_type(req.getParameter("room_type"));
		rtVo.setRoom_size(req.getParameter("room_size"));
		rtVo.setRoom_loc(req.getParameter("room_loc"));
		rtVo.setContent(req.getParameter("content"));
		
		
		
		
				
		return null;
	}

}
