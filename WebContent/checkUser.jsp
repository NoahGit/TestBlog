<%
	if(session.getAttribute("user")==null){
		response.sendRedirect("/TestBlog/login.jsp");
	}
%>
