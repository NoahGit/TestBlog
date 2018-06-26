<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/checkUser.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>black&white's domain 日记列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link href="css/dl_css.css" rel="stylesheet" type="text/css" />
<script language="javascript">

	window.status="ray's domain";
</script>
  </head>
  
  <body>
 <%--  <% 
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

%> --%>
   <div style="width:100%; text-align:center"><table width="800px" align="center" style="margin-bottom:3px;">
	<tr>
		
		<td align="right"><a href="DoInvalidate_session" target="_blank" class="ta" onMouseOver="this.className='taover'" onMouseOut="this.className='ta'">[注销${user.userName }]</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.jsp" target="_blank"  class="ta" onMouseOver="this.className='taover'" onMouseOut="this.className='ta'">[注册EasyBlog用户]</a></td>
	</tr>
</table></div>
<div id="Container">
	<div id="Header">
		<div id="Menu" >
		<ul>
			<li><a href="index.jsp">首页</a></li>
			<li class="MenuDiv"></li>
			<li><a href="diary_list.jsp">日志</a></li>
			<li class="MenuDiv"></li>
			<li><a href="#">音乐</a></li>
			<li class="MenuDiv"></li>
			<li><a href="photo_list.jsp">相册</a></li>
			<li class="MenuDiv"></li>
			<li><a href="#">好友</a></li>
			<li class="MenuDiv"></li>
			<li><a href="about_me.jsp">关于我</a></li>
			<li class="MenuDiv"></li>
		</ul>
		</div><br/>
		<div id="Banner"></div>
	</div>

	<div id="PageBody">
		<div id="Sidebar">
			<div class="left">
				<h3>我的日记</h3>
				<div  style="text-align:left">
					
					
					
					
					<form action="DoDiary_list2" name="DoDiary_list2" id="DoDiary_list2" method="post">
					
					<c:forEach var="ld" items="${list_DiaryGroup}" >
						<p><img src="images/Folder-Closed.png"/>
						<input type="hidden" name="ldDgId" id="ldDgId" value=${ld.dgId }>
						<input type="submit" name="ldDgName" id="ldDgName" value=${ld.dgName }></p>
					</c:forEach>
					
					</form>
					
					
					
					
					<form action="DoDiary_list" name="diary_list_form" id="diary_list_form" method="post">
						<input type="text" name="diary_list_title" id="diary_list_title" size="10">
						<input type="submit" name="diary_list_submit" id="diary_list_submit" value="添加日志分类">
					</form>
					
					
				</div>
		
				<h3>日记评论</h3>
					
				
			</div>
		
	    </div>
		<div id="MainBody">
			<div id="leftInfo" style="text-align:left">
			<h3>当前分类：个人日记</h3>
			<div class="content">
			<!-- <p><u><a class="title" href="diary.jsp">艾语录</a></u>
					<a>日期：2011-04-14 13:23</a></p>
					<p><u><a class="title" href="diary.jsp">战争保卫片</a></u>
					<a>日期：2011-04-14 13:23</a></p>
			<p><u><a class="title" href="diary.jsp">溃散在薄雾中</a></u>
					<a>日期：2011-04-14 13:23</a></p>
					<p><u><a class="title" href="diary.jsp">时况无辜</a></u>
					<a>日期：2011-02-27 12:42</a></p>
					<p><u><a class="title" href="diary.jsp">全城堵死</a></u>
					<a>日期：2010-11-03 12:53</a></p>
                    <p><u><a class="title" href="diary.jsp">呐喊</a></u>
					<a>日期：2011-04-14 13:23</a></p>
                    <p><u><a class="title" href="diary.jsp">About Android</a></u>
					<a>日期：2010-10-28 13:09</a></p>
                    <p><u><a class="title" href="diary.jsp">跟着自己，始终坚持，你知道</a></u>
					<a>日期：2010-10-13 18:22</a></p> -->
					
			</div>
			<div class="page">
				<a href="diary_list2.jsp">&lt;&lt;上一页</a>  <a href="diary_list2.jsp">下一页&gt;&gt;</a> </div>
			</div>
			
			

		</div>
		
		</div>
	</div>
	<div id="Footer">
		<p> <a href="#">RSS Feed</a> |
		 <a href="#">Contact</a> | 
		 <a href="#">Accessibility</a> | 
		 <a href="#">Products</a> | 
		 <a href="#">Disclaimer</a> |
		 <a href="#">CSS</a> and <a href="#">XHTML</a><br/>
		&copy; Easy Blog. 版权所有.  <a href="mailto:in.think@163.com">Black&White</a>设计.</p>
	${iy }
	</div>
  </body>
</html>
