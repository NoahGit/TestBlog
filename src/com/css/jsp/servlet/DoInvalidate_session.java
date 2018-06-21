package com.css.jsp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class DoInvalidate_session extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("login.jsp");
	}
}
