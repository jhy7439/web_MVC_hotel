package com.hotel.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandService {

		// ¹ÝÈ¯Çü : view filename
	public String processStart(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException;
	
	
}
