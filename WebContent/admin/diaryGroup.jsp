<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>black&white用户管理中心——日记分类</title>
    
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
	
			function checkText(){
				var aut=document.forms[0].groupName;
				
				if(aut.value=="请输入分类名"){
					aut.value="";
					aut.className="black";
				}else{

				if(aut.value==""){
					aut.value="请输入分类名";
					aut.className="gray";
				}
				}
			}
			var layer;
			function showDiv(oldname){
			document.getElementById("changeName").style.display='block';
			document.getElementById("gname").innerHTML=oldname;
var isIE = (document.all) ? true : false;
var isIE6 = isIE && ([/MSIE (\d)\.0/i.exec(navigator.userAgent)][0][1] == 6);
layer=document.createElement("div");
layer.id="layer";
layer.style.width=layer.style.height="100%";
layer.style.position= !isIE6 ? "fixed" : "absolute";
layer.style.top=layer.style.left=0;
layer.style.backgroundColor="#000";
layer.style.zIndex="9998";
layer.style.opacity="0.2";
document.body.appendChild(layer);
var sel=document.getElementsByTagName("select");
for(var i=0;i<sel.length;i++){        
sel[i].style.visibility="hidden";
}

function layer_iestyle(){      
layer.style.width=Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth)
+ "px";
layer.style.height= Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight) +
"px";
}
if(isIE){layer.style.filter ="alpha(opacity=20)";}
if(isIE6){  
layer_iestyle()
newbox_iestyle();
window.attachEvent("onscroll",function(){                              
newbox_iestyle();
})
window.attachEvent("onresize",layer_iestyle)          
}  

}

function closeChangeName(){
	document.getElementById("changeName").style.display='none';
	layer.style.display="none";
	var sel=document.getElementsByTagName("select");
	for(var i=0;i<sel.length;i++){
		sel[i].style.visibility="visible";
	}
}
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
				<td align="left" width="400px">
					<span style="font-size:24px; font-family:'微软雅黑'; margin-left:45px;"><img src="../images/diaryPic.png" style="margin-bottom:-5px;" />&nbsp;<strong>日记</strong></span><span style="font-size:14px; font-family:'微软雅黑'; margin-left:5px; color:#666666">—分类管理</span>				</td>
				<td align="right">
										<a href="diary_list.jsp" style="margin-right:15px;  font-size:13px;"><img src="../images/back.png" width="21" height="21"  style="margin-bottom:-5px; border:0px;" />返回</a>				</td>
			</tr>
			<tr><td colspan="2"><hr color="#CCCCCC" width="97%" align="center" size="1"/></td></tr>
				</table>			</td>
			</tr>
			
			 <tr>
			 	
				<td style="text-align:left; margin-left:20px; margin-top:0px;" valign="top">
				<table style="margin-left:20px; font-size:12px">
					<tr>
						<td style="font-weight:bold" valign="middle">
						<form action="#" method="post">
						<input type="text" name="groupName" class="gray" value="请输入分类名" onBlur="checkText()" onFocus="checkText()" />
						<input type="submit" value="增加分类"  />
						</form>						</td>
					</tr>
					<tr>
						<td >
							<table align="center">
								<tr style=" font-weight:bold; color:#333333; font-family:'微软雅黑'; font-size:13px;">
									<td width="600px">分类名</td>
									<td width="50px">改名</td>
									<td width="50px">删除</td>
								</tr>
								
								<tr>
									<td colspan="3"><hr class="myhr" size="1"/></td>
								</tr>
								<tr>
									<td width="600px" class="myn" style="cursor:pointer"><u>个人日记</u></td>
									<td width="50px" class="myg"><a href="javascript:void(0)" onClick="showDiv('个人日记')">改名</a></td>
									<td width="50px" class="myg"><a href="#" onClick="return confirm('是否删除该分类？')" >删除</a></td>
								</tr>
								
								
								<tr>
									<td colspan="3"><hr class="myhr" size="1"/></td>
								</tr>
								<tr>
									<td width="600px" class="myn" style="cursor:pointer"><u>个人文章</u></td>
									<td width="50px" class="myg"><a href="javascript:void(0)" onClick="showDiv('个人文章')">改名</a></td>
									<td width="50px" class="myg"><a href="#" onClick="return confirm('是否删除该分类？')" >删除</a></td>
								</tr>
								
								<tr>
									<td colspan="3"><hr class="myhr" size="1"/></td>
								</tr>
								<tr>
									<td width="600px" class="myn" style="cursor:pointer"><u>软件积累</u></td>
									<td width="50px" class="myg"><a href="javascript:void(0)" onClick="showDiv('软件积累')">改名</a></td>
									<td width="50px" class="myg"><a href="#" onClick="return confirm('是否删除该分类？')" >删除</a></td>
								</tr>
								
								
								<tr>
									<td colspan="3"><hr class="myhr" size="1"/></td>
								</tr>
								<tr>
									<td width="600px" class="myn" style="cursor:pointer"><u>网络文章</u></td>
									<td width="50px" class="myg"><a href="javascript:void(0)" onClick="showDiv('网络文章')">改名</a></td>
									<td width="50px" class="myg"><a href="#" onClick="return confirm('是否删除该分类？')" >删除</a></td>
								</tr>
								
							</table>						</td>
					</tr>
				</table>				</td>
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


<div id="changeName" style="position:absolute;left:50%;top:50%;width:400px;height:170px;margin:-85px 0 0 -200px; background-color:#FFFFFF;  font-family:'微软雅黑'; display:none; z-index:9999">
  <p style="text-align:left;"><strong>系统提示</strong></p>
  <p>
    <span id='editGroupMsg'>将“<span id='oldgroupname' style='color:red'><span id="gname"></span></span>”分类名改为:</span><br>
    <br>
    <input type='text' maxlength='20' name='gname' id='gname'>
    <input type='hidden' value='"+gid+"' name='gid_old' id='gid_old'>
    <br>
    <br>
    <input type=button class='mybtn' value='确 定'>
  &nbsp;&nbsp;
    <input type=button class='mybtn2' onClick="closeChangeName()" value='取 消'/>
      </p>
</div>
  </body>
</html>
