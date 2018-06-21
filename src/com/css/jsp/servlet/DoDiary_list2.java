package com.css.jsp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class DoDiary_list2 extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String ldDgName = request.getParameter("ldDgName");
		if(null!=ldDgName){
			request.setAttribute("ldDgName", ldDgName);
			request.getRequestDispatcher("diary_list2.jsp").forward(request, response);
		}else{
			response.sendRedirect("diary_list.jsp");
		}
		
	}
}
