package com.css.jsp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.css.jsp.biz.UsersBiz;
import com.css.jsp.biz.impl.UsersBizImpl;
import com.css.jsp.entity.Users;

@SuppressWarnings("serial")
public class DoRegister extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		/**
		 * 原来doRegister.jsp页面的代码提出来
		 */
		String rename = request.getParameter("rename");
		String repwd = request.getParameter("repwd");
		
		String label = request.getParameter("label");
		Users users = new Users(rename,repwd,label);
		UsersBiz ub = new UsersBizImpl();
		int sign = ub.add(users);
		if(sign>0){
			session.setAttribute("user", users);
			request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
		}else{
			response.sendRedirect("register.jsp");
		}
	}
}
