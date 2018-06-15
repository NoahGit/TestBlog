<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>black&white用户管理中心</title>
<link href="css/admin_style.css" rel="stylesheet" type="text/css" />
<script language="javascript">

	window.status="EasyBlog 欢迎黑白";
</script>
</head>

<body>
<% 
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

%>
<div style="width:100%;  background-color:#D6D4CE;text-align:center"><table width="800px" align="center" style="margin-bottom:3px;">
	<tr>
		<td align="left"><a href="admin.jsp">[管理中心]</a></td>
		<td align="right"><a href="index.jsp" target="_blank">[我的主页]</a>	<a href="login.jsp">[退出]</a></td>
	</tr>
</table></div>
<div id="Container">


  <div id="Header_admin">
    <div id="Menu"></div>
</div>
	<div id="PageBody">
		<div id="MainBody">
			<table width="600px" height="100%">
			 <tr>
			 	<td width="100px" height="100%">
				<table width="100%" height="100%"  bgcolor="#D2E7F0" cellspacing="3">
					<tr >
						<td width="100%" height="30px" class="lefttd" onmouseover="this.className='lefttdover'" onmouseout="this.className='lefttd'">
							<a href="doDiary_list_list.jsp">个人日记</a>
						</td>
					</tr>
					<tr>
						<td width="100%" height="30px" class="lefttd" onmouseover="this.className='lefttdover'" onmouseout="this.className='lefttd'">
							<a href="photo_list.jsp" style="width:100%;" >个人相册</a>
						</td>
					</tr>
					<tr>
						<td width="100%" height="30px" class="lefttd" onmousemove="this.className='lefttdover'" onmouseout="this.className='lefttd'">
						<a href="#diary_list.jsp">音乐</a>
						</td>
					</tr>
					<tr>
						<td width="100%" height="30px" class="leftbottom" onmouseover="this.className='lefttdover'" onmouseout="this.className='lefttd'">
							<a href="#diary_list.jsp">个人资料</a>
						</td>
					</tr>
					
				</table>
				</td>
				<td width="500px" style="text-align:left; margin-left:10px; margin-top:0px;" valign="top">
				<table>
					<tr>
						<td><img src="images/self.jpg" height="100px" width="95px"  alt="" style=" margin-top:0px;border-width:1px; border-style:solid; border-color:#CCCCCC" /></td>
						<td valign="top">
						<strong style="font-size:17px; font-family:'微软雅黑';margin-left:10px">黑白</strong><br/><br/>
						<span style="margin-left:10px">每日一说： 我一直在这里，请勿远离，或者随时回来 <a href="#edit">修改</a></span><br/><br/>
						<span style="margin-left:10px"><a href="#changeFace" class="ma" onmouseout="this.className='ma'" onmouseover="this.className='maover'">更换头像</a>&nbsp;|&nbsp;<a  class="ma" href="#setting" onmouseout="this.className='ma'" onmouseover="this.className='maover'">个人设置</a></span>
						
						</td>
					</tr>
				
				</table>
				
						
				
				</td>
			 </tr>
			</table>
		
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
	
	
	</div>
</div>
</body>
</html>
