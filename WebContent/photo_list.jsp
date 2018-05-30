<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>black&white's domain相册</title>
<link href="css/dl_css.css" rel="stylesheet" type="text/css" />
<script language="javascript">

	window.status="ray's domain";
</script>
</head>

<body><div style="width:100%; text-align:center"><table width="800px" align="center" style="margin-bottom:3px;">
	<tr>
		
		<td align="right"><a href="admin/login.jsp" target="_blank" class="ta" onmouseover="this.className='taover'" onmouseout="this.className='ta'">[登录EasyBlog]</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.jsp" target="_blank"  class="ta" onmouseover="this.className='taover'" onmouseout="this.className='ta'">[注册EasyBlog用户]</a></td>
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
			<li><a href="photo.jsp">相册</a></li>
			<li class="MenuDiv"></li>
			<li><a href="#">好友</a></li>
			<li class="MenuDiv"></li>
			<li><a href="#">关于我</a></li>
			<li class="MenuDiv"></li>
		</ul>
		</div><br/>
		<div id="Banner"></div>
	</div>

	<div id="PageBody">
		<div id="Sidebar">
			<div class="left">
				<h3>我的相册</h3>
				<div  style="text-align:left">
					<p><img src="images/Folder.png"/><strong><a href="photo_list.jsp"style="color:#000000">明星图片</a></strong></p>
					<p><img src="images/Folder-Closed.png"/><a href="photo_list.jsp"style="color:#000000">我的家人</a></p>
					<p><img src="images/Folder-Closed.png"/><a href="photo_list.jsp"style="color:#000000">我的照照</a></p>
					<p><img src="images/Folder-Closed.png"/><a href="photo_list.jsp" style="color:#000000">宠物照片</a></p>
				</div>
		
				<h3>相册评论</h3>
					
				
			</div>
		
	    </div>
		<div id="MainBody">
			<div id="leftInfo" style="text-align:left">
			<h3>当前分类：明星图片</h3>
			<div class="content">
			<p><a href="gallery.jsp" target="_blank"><img src="images/photo.jpg" /></a></p>
					
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
	
	</div>
</body>
</html>
