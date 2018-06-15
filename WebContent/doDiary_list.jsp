<%@page import="com.css.jsp.entity.DiaryGroup"%>
<%@page import="com.css.jsp.biz.impl.DiaryGroupBizImpl"%>
<%@page import="com.css.jsp.biz.DiaryGroupBiz"%>
<%@page import="com.css.jsp.biz.impl.UsersBizImpl"%>
<%@page import="com.css.jsp.entity.Users"%>
<%@page import="com.css.jsp.biz.UsersBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	//String userName = (String)session.getAttribute("userName");
	UsersBiz ub = new UsersBizImpl();
	//Users users = ub.findByName(userName);
	Users user = (Users)session.getAttribute("user");
	int userId = user.getUserId();
	String diary_list_title = request.getParameter("diary_list_title");
	DiaryGroupBiz dgb = new DiaryGroupBizImpl();
	DiaryGroup dg = new DiaryGroup(userId,diary_list_title);
	int sign = dgb.add(dg);
	if(sign>0){
		//session.setAttribute("diary_list_title", diary_list_title);
		request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
	}else{
		response.sendRedirect("diary_list.jsp");
	}
%>
	
</body>
</html>