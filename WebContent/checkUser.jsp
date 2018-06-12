<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("/TestBlog/login.jsp");
	}
%>
