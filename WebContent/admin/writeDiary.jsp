<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>black&white用户管理中心——写日记</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link href="../css/wr_style.css" rel="stylesheet" type="text/css" />
<script language="javascript">

	window.status="EasyBlog 欢迎黑白";
</script>
  </head>
  
  <body>
    <div style="width:100%;  background-color:#D6D4CE;text-align:center"><table width="800px" align="center" style="margin-bottom:3px;">
	<tr>
		<td align="left"><a href="admin.jsp">[管理中心]</a></td>
		<td align="right"><a href="../index.jsp" target="_blank">[我的主页]</a>	<a href="../login.jsp">[退出]</a></td>
	</tr>
</table></div>
<div id="Container">


  <div id="Header_admin">
    <div id="Menu"></div>
</div>
	<div id="PageBody">
		<div id="MainBody">
			<table width="800px" height="100%" style="background-color:#FFFFFF">
			<tr>
			
			<td>
				<table width="100%">
				<tr>
				<td align="left" width="200px">
					<span style="font-size:24px; font-family:'微软雅黑'; margin-left:45px;"><img src="../images/diaryPic.png" style="margin-bottom:-5px;" />&nbsp;<strong>写日记</strong></span>
					
				</td>
				<td align="right">
					<a href="diary_list.jsp" style="margin-right:15px;  font-size:13px;"><img src="../images/back.png"  style="margin-bottom:-5px; border:0px;" />返回</a>
				</td>
			</tr>
			<tr><td colspan="2"><hr color="#CCCCCC" width="97%" align="center"/></td></tr>
				</table>
			</td>
			</tr>
			
			 <tr>
			 	
				<td style="text-align:left; margin-left:20px; margin-top:0px;" valign="top">
				<table style="margin-left:20px; font-size:12px">
					<tr>
						<td style="font-weight:bold">标题:</td>
						<td>
							<input type="text" name="title" style="width:470px"/>						</td>
					</tr>
					<tr>
						<td style="font-weight:bold">分类:</td>
						<td><select name="diaryGroup">
						  <option>个人日记</option>
						  <option>个人文章</option>
						  <option>软件积累</option>
						  <option>网络文章</option>
						  </select>						</td>
					</tr>	
					<tr>
						<td style="font-weight:bold"></td>
						<td>
							<textarea style="height: 240px; width: 520px; font-size: 14px; line-height: 22px;"></textarea>			</td>
					</tr>
					<tr>
						<td style="font-weight:bold"></td>
						<td>
							<input type="button" name="title" value="发 表"  class="btn1_mouseout" onMouseOver="this.className='btn1_mouseover'" onMouseOut="this.className='btn1_mouseout'"/>	
							<input type="button" name="title" value="关 闭"  class="btn1_mouseout" onMouseOver="this.className='btn1_mouseover'" onMouseOut="this.className='btn1_mouseout'" />	
							
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
