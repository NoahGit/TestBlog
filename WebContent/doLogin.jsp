<%@page import="com.css.jsp.biz.impl.UsersBizImpl"%>
<%@page import="com.css.jsp.biz.UsersBiz"%>
<%@page import="com.css.jsp.entity.Users"%>
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
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		
		String vcode = request.getParameter("vcode");
		String rand = (String)session.getAttribute("rand");
		
		UsersBiz ub = new UsersBizImpl();
		Users user = ub.login(name,pwd);
		if(user!=null&&vcode.equals(rand)){
			session.setAttribute("name", name);
			session.setAttribute("pwd", pwd);
			request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
	
</body>
</html>