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
		//urlMapping.properties �� key�� value�� ���ڿ��� �о�� ��ü�� �����Ѵ��� Map�� �ּҸ� ��Ƴ��´�.
		//web.xml�� ������Ƽ���� �ּҿ� ������ ������
		String propertiesFile = config.getInitParameter("proConfig");
		Properties propObject = new Properties();
		//������Ƽ ������ ���� �о����
		try {
		FileInputStream fis =new FileInputStream(propertiesFile);
		propObject.load(fis);
		}catch(Exception e) {
		 System.out.println("������Ƽ ����¿��� ...."+e.getMessage());
		}
		try {
			/////////////
			//Ű��� ���ϱ�
			Enumeration keyList=propObject.propertyNames();
			while(keyList.hasMoreElements()) {
				String key=(String)keyList.nextElement(); // *.do
				String className=(String)propObject.getProperty(key); //CommandIndex
				System.out.println(key + "="+className);
				Class commandClass=Class.forName(className); //���ڿ��� Ŭ��������
				CommandService service=(CommandService)commandClass.getDeclaredConstructors()[0].newInstance();
				map.put(key, service);
			}
		}catch(Exception e) {
			System.out.println("Map�� ��ü �߰��ϱ����...."+e.getMessage());
		}
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {


		//uri ���ϱ�
		String uri=req.getRequestURI();//  /webMVC/
		String ctx =req.getContextPath(); // /webMVC
		//�����ּ� ���ϱ�
		String commandKey = uri.substring(ctx.length());
		//key�� �ش��ϴ� command�� ��ü�� ���Ѵ�.
		CommandService service = map.get(commandKey);
		String viewFilename =service.processStart(req,res);
		//���������� �̵�ó���ϴ� Ŭ����									//�����ϸ�
		RequestDispatcher dispatcher  =req.getRequestDispatcher(viewFilename);
		//��������
		dispatcher.forward(req, res);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
