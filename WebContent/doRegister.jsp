<%@page import="com.css.jsp.entity.Users"%>
<%@page import="com.css.jsp.biz.impl.UsersBizImpl"%>
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
		String rename = request.getParameter("rename");
		String repwd = request.getParameter("repwd");
		
		String label = request.getParameter("label");
		Users users = new Users(rename,repwd,label);
		UsersBiz ub = new UsersBizImpl();
		int sign = ub.add(users);
		if(sign>0){
			session.setAttribute("name", rename);
			session.setAttribute("pwd", repwd);
			request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
		}else{
			response.sendRedirect("register.jsp");
		}
	%>
</body>
</html>