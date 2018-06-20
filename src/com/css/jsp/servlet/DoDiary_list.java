package com.css.jsp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.css.jsp.biz.DiaryGroupBiz;
import com.css.jsp.biz.impl.DiaryGroupBizImpl;
import com.css.jsp.entity.DiaryGroup;
import com.css.jsp.entity.Users;

@SuppressWarnings("serial")
public class DoDiary_list extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		/**
		 * 原来doDiary_list.jsp页面的代码提出来
		 */
		Users user = (Users)session.getAttribute("user");
		int userId = user.getUserId();
		String diary_list_title = request.getParameter("diary_list_title");
		DiaryGroupBiz dgb = new DiaryGroupBizImpl();
		DiaryGroup dg = new DiaryGroup(userId,diary_list_title);
		int sign = dgb.add(dg);
		if(sign>0){
			request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
		}else{
			try {
				response.sendRedirect("diary_list.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
	}
}
