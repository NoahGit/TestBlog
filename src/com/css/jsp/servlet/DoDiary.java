package com.css.jsp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.css.jsp.biz.DiaryBiz;
import com.css.jsp.biz.impl.DiaryBizImpl;
import com.css.jsp.entity.Diary;

@SuppressWarnings("serial")
public class DoDiary extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String diaryTitle = request.getParameter("diaryTitle");
		DiaryBiz db = new DiaryBizImpl();
		Diary diary = db.findByTitle(diaryTitle);
		
		if(null!=diary){
			request.setAttribute("diaryContent", diary.getDiaryContent());
			request.setAttribute("diaryTitle", diaryTitle);
			request.setAttribute("diaryPublishTime", diary.getDiaryPublishTime());
			request.getRequestDispatcher("diary.jsp").forward(request, response);
		}else{
			response.sendRedirect("diary_list2.jsp");
		}
		
	}
}
