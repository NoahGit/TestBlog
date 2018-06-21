package com.css.jsp.servlet;

import java.io.IOException;
import java.util.List;

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
public class DoDiary_list_list extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		/**
		 * 原来doDiary_list_list.jsp页面的代码提出来
		 */
		Users user = (Users)session.getAttribute("user");
		DiaryGroupBiz dgb = new DiaryGroupBizImpl();
		List<DiaryGroup> list_DiaryGroup = dgb.findByUserId(user.getUserId());
		
		if(list_DiaryGroup.size()>0){
			session.setAttribute("list_DiaryGroup", list_DiaryGroup);
			request.getRequestDispatcher("diary_list.jsp").forward(request, response);
		}else{
			response.sendRedirect("diary_list.jsp");
		}
	}
}

