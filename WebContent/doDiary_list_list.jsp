<%@page import="com.css.jsp.entity.DiaryGroup"%>
<%@page import="java.util.List"%>
<%@page import="com.css.jsp.biz.impl.DiaryGroupBizImpl"%>
<%@page import="com.css.jsp.biz.DiaryGroupBiz"%>
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
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	
		Users user = (Users)session.getAttribute("user");
		DiaryGroupBiz dgb = new DiaryGroupBizImpl();
		List<DiaryGroup> list_DiaryGroup = dgb.findByUserId(user.getUserId());
		
		if(list_DiaryGroup.size()>0){
			session.setAttribute("list_DiaryGroup", list_DiaryGroup);
			request.getRequestDispatcher("diary_list.jsp").forward(request, response);
		}else{
			response.sendRedirect("admin/admin.jsp");
		}
		
	%>
	
</body>
</html>