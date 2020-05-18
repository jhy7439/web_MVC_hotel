package com.hotel.home;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/*.do")
public class ControllerAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String,CommandService> map =new HashMap<String,CommandService>();
    public ControllerAction() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
		//urlMapping.properties 의 key와 value의 문자열을 읽어와 객체를 생성한다음 Map에 주소를 담아놓는다.
		//web.xml의 프로퍼티파일 주소와 파일을 얻어오기
		String propertiesFile = config.getInitParameter("proConfig");
		Properties propObject = new Properties();
		//프로퍼티 파일의 내용 읽어오기
		try {
		FileInputStream fis =new FileInputStream(propertiesFile);
		propObject.load(fis);
		}catch(Exception e) {
		 System.out.println("프로퍼티 입출력에러 ...."+e.getMessage());
		}
		try {
			/////////////
			//키목록 구하기
			Enumeration keyList=propObject.propertyNames();
			while(keyList.hasMoreElements()) {
				String key=(String)keyList.nextElement(); // *.do
				String className=(String)propObject.getProperty(key); //CommandIndex
				System.out.println(key + "="+className);
				Class commandClass=Class.forName(className); //문자열을 클래스생성
				CommandService service=(CommandService)commandClass.getDeclaredConstructors()[0].newInstance();
				map.put(key, service);
			}
		}catch(Exception e) {
			System.out.println("Map에 객체 추가하기오류...."+e.getMessage());
		}
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {


		//uri 구하기
		String uri=req.getRequestURI();//  /webMVC/
		String ctx =req.getContextPath(); // /webMVC
		//접속주소 구하기
		String commandKey = uri.substring(ctx.length());
		//key에 해당하는 command의 객체를 구한다.
		CommandService service = map.get(commandKey);
		String viewFilename =service.processStart(req,res);
		//뷰페이지로 이동처리하는 클래스									//뷰파일명
		RequestDispatcher dispatcher  =req.getRequestDispatcher(viewFilename);
		//페이지동
		dispatcher.forward(req, res);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
