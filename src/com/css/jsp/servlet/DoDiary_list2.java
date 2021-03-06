package com.css.jsp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.css.jsp.biz.DiaryBiz;
import com.css.jsp.biz.impl.DiaryBizImpl;
import com.css.jsp.entity.Diary;

@SuppressWarnings("serial")
public class DoDiary_list2 extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String ldDgName = request.getParameter("ldDgName");
		int ldDgId = Integer.valueOf(request.getParameter("ldDgId"));
		DiaryBiz db = new DiaryBizImpl();
		List<Diary> list_diary = db.findByPageForAdmin(ldDgId,1);
		
		if(null!=ldDgName){
			request.setAttribute("ldDgName", ldDgName);
			request.setAttribute("ldDgId", ldDgId);
			
			request.setAttribute("list_diary", list_diary);
			request.getRequestDispatcher("diary_list2.jsp").forward(request, response);
		}else{
			response.sendRedirect("diary_list.jsp");
		}
		
	}
}
