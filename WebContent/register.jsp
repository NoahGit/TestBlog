<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>EasyBlog 用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/login_style.css">
  </head>
  
  <body>
 <img src="images/log_reg.png" style="margin-top:-50px"/>
<form name="loginform" id="loginform" action="doRegister.jsp" method="post"><div align="center">
<table style="background:#E7DFDE; margin-top:-100px" width="350px" height="200" align="center">
  <tr valign="bottom">
    <td width="200px" align="left"><div class="lbl"><div style="color:#FF0000; display:inline">*</div>用户名</div></td>
	</tr>
	<tr>
    <td  align="left" valign="top"><input type="text" name="rename" id="rename" class="txt" style="width:325px" size="20" tabindex="10" /></td>
  </tr>
  <tr valign="bottom">
    <td align="left"><div class="lbl"><div style="color:#FF0000; display:inline">*</div>密码</div></td></tr>
	<tr>
    <td  align="left" valign="top"><input type="password" name="repwd" id="repwd" class="txt"  style="width:325px" size="20" tabindex="10" />    </td>
  </tr>
   <tr valign="bottom">
    <td align="left"><div class="lbl"><div style="color:#FF0000; display:inline">*</div>确认密码</div></td></tr>
	<tr>
    <td  align="left" valign="top"><input type="password" name="repwd2" id="repwd2" class="txt"  style="width:325px" size="20" tabindex="10" />    </td>
  </tr>
    <tr valign="bottom">
    <td align="left"><div class="lbl">个性签名</div></td></tr>
	<tr>
    <td  align="left" valign="top"><input type="text" name="label" id="label" class="txt"  style="width:325px" size="20" tabindex="10" type="text" />    </td>
  </tr>
    <tr valign="middle">
    <td><br/>
	<DIV align="center">
     <input value=" 注 册 " type="submit" class="loginbtn2" onmouseover="this.className='loginbtnover'"  onmouseout="this.className='loginbtn2'" />
	 &nbsp;&nbsp;&nbsp;&nbsp;
	      <input value=" 登 录 " type="button" onclick="window.location.href='login.jsp'" class="loginbtn" onmouseover="this.className='loginbtnover'"  onmouseout="this.className='loginbtn'" />
	 </DIV><br/>
    </td>
  </tr>
</table>
</div>
</form>
<div id="Container">
<div id="Footerlogin" align="center">
		<p> <a href="#">RSS Feed</a> |
		 <a href="#">Contact</a> | 
		 <a href="#">Accessibility</a> | 
		 <a href="#">Products</a> | 
		 <a href="#">Disclaimer</a> |
		 <a href="#">CSS</a> and <a href="#">XHTML</a><br/>
		&copy; Easy Blog. 版权所有.  <a href="mailto:in.think@163.com">Black&White</a>设计.</p>
	
	</div></div>
  </body>
</html>
