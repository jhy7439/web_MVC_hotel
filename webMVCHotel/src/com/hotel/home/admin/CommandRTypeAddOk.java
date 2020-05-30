package com.hotel.home.admin;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.hotel.home.CommandService;


public class CommandRTypeAddOk implements CommandService {

	public CommandRTypeAddOk() {
		
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException { 
		req.setCharacterEncoding("UTF-8");
		
		//디스크상의 프로젝트 실제 경로 얻기
		String path = req.getServletContext().getRealPath("/upload");
		//메인 이미지 서버로 업로드
		int maxSize = 1024*1024*2;//2메가 바이트
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		//이미지 파일 업로드 완료
		MultipartRequest mr = new MultipartRequest(req, path, maxSize,"UTF-8", policy);
		
		
		RTypeVO rtVo = new RTypeVO();
		rtVo.setRoom_type(mr.getParameter("room_type"));
		rtVo.setView(mr.getParameter("view"));
		rtVo.setRoom_size(mr.getParameter("room_size"));
		rtVo.setRoom_loc(mr.getParameter("room_loc"));
		rtVo.setMainCont(mr.getParameter("mainCont"));
		rtVo.setSubCont(mr.getParameter("subCont"));
		rtVo.setChkBox1(mr.getParameter("chkBox1"));
		rtVo.setChkBox2(mr.getParameter("chkBox2"));
		rtVo.setChkBox3(mr.getParameter("chkBox3"));
		rtVo.setChkBox4(mr.getParameter("chkBox4"));
		rtVo.setChkBox5(mr.getParameter("chkBox5"));
		rtVo.setChkBox6(mr.getParameter("chkBox6"));
		rtVo.setChkBox7(mr.getParameter("chkBox7"));
		rtVo.setChkBox8(mr.getParameter("chkBox8"));
		rtVo.setChkBox9(mr.getParameter("chkBox9"));
		rtVo.setChkBox10(mr.getParameter("chkBox10"));
		rtVo.setChkBox11(mr.getParameter("chkBox11"));
		
		//이미지파일 이름 반환
		Enumeration fileList = mr.getFileNames();
		List<String> newFileList = new ArrayList<>();
		
		while(fileList.hasMoreElements()) {
			String oldFileName = (String) fileList.nextElement();
			String newFileName = mr.getFilesystemName(oldFileName);
			
			if(newFileName!=null) {
				newFileList.add(newFileName);
				System.out.println("파일명 변경 : "+oldFileName+ "// 변경 후 ----->"+newFileName);
				System.out.println("새로운 파일명 리스트 : "+ newFileList);
			}
		}
		// 이미지이름이 역순으로 담긴다
		if(newFileList.size()>0) {
			//리스트에 담긴 이미지이름을 역순으로 재정렬
			Collections.reverse(newFileList);
			
			rtVo.setRoomImgList(newFileList.subList(0, newFileList.size()-1));
			System.out.println("subList : "+newFileList.subList(0, newFileList.size()));
			System.out.println("vo에 담긴 이미지 리스트 : "+ rtVo.getRoomImgList());
		}
	
		System.out.println("커맨드에서  vo 확인///////////");
		System.out.println("객실타입 : " + rtVo.getRoom_type());
		
		RTypeDAO dao = new RTypeDAO();
		int result = dao.typeInsert(rtVo);
		
		//레코드 추가 실패시
		if(result <=0) {
			for(String delFile : newFileList) {
				//파일 삭제
				if(delFile != null) {
					try {
						File f = new File(path, delFile);
						f.delete();
					}catch (Exception e) {
						System.out.println("파일 삭제 에러");
						e.printStackTrace();
					}
				}
			}
		}
		
		req.setAttribute("result", result);
		return "/admin/r_type_add_ok.jsp";
	}
}



//Random ran = new Random();
////디스크상의 프로젝트 실제 경로 얻기
//String path = req.getServletContext().getRealPath("/upload");
//
////메인 이미지 서버로 업로드
//int maxSize = 1024*1024*5;//5메가 바이트
//
//
//try {
//	File dir = new File(path);
//	DiskFileItemFactory df = new DiskFileItemFactory();
//	/*	setRepository
//	 *  메모리 저장 최대 크기를 넘길 경우 파일을 생성할 디렉터리를 지정.
//	 *  지정하지 않을 경우 시스템의 기본 임시 디렉터리를 사용.
//	 *  ( System.getProperty("java.io.tmpdir") 로 기본임시 디렉터리를 구할 수 있음 )
//	 */
//	df.setRepository(dir);
//	//업로드 요청을 처리하는 ServletFileUpload생성			
//	ServletFileUpload fileupload = new ServletFileUpload(df);
//	//이미지 1개당 5메가 바이트
//	fileupload.setFileSizeMax(maxSize);
//	//업로드 요청파싱해서 FileItem 목록 구함
//	List<FileItem> items = fileupload.parseRequest(req);
//	for(FileItem item : items) {
//		if(item.isFormField()) {//파일이 아닐경우
//			System.out.println(item.getFieldName()+ "=" +item.getString("UTF-8"));
//		}else {//파일인 경우
//			if(item.getSize()>0) {
//				//item.getName() : 원래파일명
//				String separator = File.separator;
//				int index = item.getName().lastIndexOf(".");
//				String fileName = item.getName().substring(0, index);
//				String extName = item.getName().substring(index + 1);
//				File uploadFile = new File(path, fileName + "." + extName);
//				
//				while(uploadFile.exists()) {
//					//업로드 파일명
//					uploadFile = new File(path, fileName +"_"+(ran.nextInt(500)+1)+"."+extName);
//				}
//				//업로드
//				System.out.println("업로드 파일명 : "+ uploadFile.getName());
//				item.write(uploadFile);
//			}
//		}
//	}
//}catch(Exception e) {
//	e.printStackTrace();
//}
