<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EasyBlog 用户登录</title>
    
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
   <img src="images/logo_login.png" style="margin-top:-50px"/>
<form name="loginform" id="loginform" action="doLogin.jsp" method="post"><div align="center">
<table style="background:#E7DFDE; margin-top:-100px" width="350px" height="200" align="center">
  <tr valign="bottom">
    <td width="88" align="left"><div class="lbl">用户名</div></td>
	</tr>
	<tr>
    <td  align="left" valign="top"><input type="text" name="uname" id="uname" class="txt" style="width:325px" size="20" tabindex="10" /></td>
  </tr>
  <tr valign="bottom">
    <td align="left"><div class="lbl">密&nbsp;&nbsp;&nbsp;&nbsp;码</div></td></tr>
	<tr>
    <td  align="left" valign="top">
    	<input type="password" name="upwd" id="user_login" class="txt"  style="width:325px" size="20" tabindex="10" />
    </td>
  </tr>
  
  <tr valign="bottom">
    <td align="left"><div class="lbl">验证码</div></td></tr>
	<tr>
    <td  align="left" valign="top">
    	<input type="text" name="vcode" id="vcode" class="txt"  style="width:100px" size="20" tabindex="10" />
    	<img src="VerifyCode.jsp" id="vc"/>
  		<a href="#" onclick="document.getElementById('vc').src='VerifyCode.jsp?r='+Math.random();return false;">看不清，换一张</a>
    </td>
  </tr>

    <tr valign="middle">
    <td>
	<DIV align="center">
     <input value=" 登 录 " type="submit" class="loginbtn" onmouseover="this.className='loginbtnover'"  onmouseout="this.className='loginbtn'" />
	 </DIV>
    </td>
  </tr>
</table>






<p id="nav">

<a class="alignleft" href="register.jsp">注册</a> |

<a class="alignright" href="#findpwd.jsp" title="Password Lost and Found">密码丢失?</a>

</p>
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
