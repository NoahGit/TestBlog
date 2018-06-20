package com.css.jsp.servlet;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.css.jsp.biz.UsersBiz;
import com.css.jsp.biz.impl.UsersBizImpl;
import com.css.jsp.entity.Users;

@SuppressWarnings("serial")
public class DoLogin extends HttpServlet {
	public void destroy(){
		System.out.println("销毁！");
		super.destroy();
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		this.doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		ServletContext application = this.getServletContext();
		application.setAttribute("COUNT", 1);
		
		
		/**
		 * 原来doLogin.jsp页面的代码提出来
		 */
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		
		String vcode = request.getParameter("vcode");
		String rand = (String)session.getAttribute("rand");
		
		UsersBiz ub = new UsersBizImpl();
		Users user = ub.login(name,pwd);
		if(user!=null&&vcode.equals(rand)){
			session.setAttribute("user", user);
			request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
		}else{
			response.sendRedirect("login.jsp");
		}
	}
	
	public void init() throws ServletException {
		System.out.println("初始化");
	}
}
	

