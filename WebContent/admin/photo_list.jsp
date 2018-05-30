<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>admin用户管理中心——相册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link href="../css/dl_style.css" rel="stylesheet" type="text/css" />


<link href="../css/photo.css" rel="stylesheet" type="text/css" />


<script language="javascript" src="../js/jquery-1.7.min.js"></script>
<script language="javascript" src="../js/glob.js"></script>
<script language="javascript" src="../js/photo_li.js"></script>
<script language="javascript">

	window.status="EasyBlog 欢迎admin";
</script>
  </head>
  
  <body>
   <div style="width:100%;  background-color:#D6D4CE;text-align:center;"><table width="800px" align="center" style="margin-bottom:3px;">
	<tr>
		<td align="left"><a href="admin.jsp">[管理中心]</a></td>
		<td align="right"><a href="../index.jsp" target="_blank">[我的主页]</a>  <a href="../login.jsp">[退出]</a></td>
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
				<td align="left" colspan="2"  valign="middle">
					<span style="font-size:24px; font-family:'微软雅黑'; margin-left:45px;"><img  src="../images/camera.jpg" style="margin-bottom:-5px;" /><strong>   相册</strong></span>
					<hr color="#CCCCCC" width="97%" align="center"/>
				</td>
			</tr>
			
			 <tr>
			 	<td width="100px" height="470px" valign="top" style="font-family:'微软雅黑'; font-size:13px;">
				
				<table style="margin-left:28px" cellpadding="5">
					<tr>
						<td><br/>
						<a href="../admin/upload_photo.jsp"> <div class="btn_creatnew" onmouseover="this.className='btn_creatnew_hover'" onmouseout="this.className='btn_creatnew'"						></div>
					</a><br/><br/></td></tr>
						
						<tr><td>
						<a href="../admin/photo_list.jsp"  style=" font-weight:bold; font-size:14px;"   >明星图片
						</a><br/></td></tr>
						

						<tr><td>
						<a href="../admin/photo_list.jsp" >我的家人
						</a><br/></td></tr>
						

						<tr><td>
						<a href="../admin/photo_list.jsp" >我的照照
						</a><br/></td></tr>
						

						<tr><td>
						<a href="../admin/photo_list.jsp" >宠物照片
						</a><br/></td></tr>
						


					
					
						<tr><td><br/><br/><a href="../admin/photoGroup.jsp">类别管理</a></td>
					</tr>
				</table>
				
				
					
				</td>
				<td style="text-align:left; margin-left:20px; margin-top:0px;" valign="top">
				<div class="allphotos clear">
				<ul class="clear">
					<li>
						<h1 title="牡丹">牡丹 </h1>
						<div class="photo"><a href="../gallery.jsp" target="_blank"><img alt="标题:牡丹 
内容: 
上传日期:2011-04-16" src="../images/574bd462.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
	
					<li>
						<h1 title="牡丹园">牡丹园 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:牡丹园 
内容: 
上传日期:2011-04-16" src="../images/97a09f11.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
	
					<li>
						<h1 title="白牡丹">白牡丹 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:白牡丹 
内容: 
上传日期:2011-04-16" src="../images/574bd462.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
					<li>
						<h1 title="牡丹">牡丹 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:牡丹 
内容: 
上传日期:2011-04-16" src="../images/574bd462.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
	
					<li>
						<h1 title="牡丹园">牡丹园 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:牡丹园 
内容: 
上传日期:2011-04-16" src="../images/97a09f11.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
	
					<li>
						<h1 title="白牡丹">白牡丹 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:白牡丹 
内容: 
上传日期:2011-04-16" src="../images/574bd462.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
					<li>
						<h1 title="牡丹">牡丹 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:牡丹 
内容: 
上传日期:2011-04-16" src="../images/574bd462.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
	
					<li>
						<h1 title="牡丹园">牡丹园 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:牡丹园 
内容: 
上传日期:2011-04-16" src="../images/97a09f11.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
	
					<li>
						<h1 title="白牡丹">白牡丹 </h1>
						<div class="photo">
		                            <a href="../gallery.jsp" target="_blank">
		                            	<img alt="标题:白牡丹 
内容: 
上传日期:2011-04-16" src="../images/574bd462.jpg" onload="if (this.width>130) this.width=130;if (this.height > 130) this.height=130;">
		                            </a>
		                        </div>
								
								  <div class="photocontrol">
		                       
		                        	<a href="javascript:void(0)" onclick="editMyPhoto('100155109'); return false;" title="修改标题和简介">改</a>
		                        	<a href="javascript:void(0)" onclick="delMyPhoto('100155109',1);return false;" title="删除">删</a>
		                        	<a href="javascript:void(0)" onclick="moveMyPhoto('100155109');return false;" title="移到其他分类">移</a>
		                        	排序：<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','1');return false;" title="向前跳几位">↑</a>&nbsp;<a href="javascript:void(0)" style="font-family: Times New Roman;" onclick="sortMyPhoto('100155109','-1');return false;" title="向后跳几位">↓</a>
		                        </div>
					</li>
				</ul>
							</div>
						
						</td>
					</tr>
					<tr>
						<td align="right" colspan="2" style="color:#337289;font-family:'微软雅黑'; font-size:13px;">
						
						
							当前第<strong>1</strong>页/共2页  
                <a href="../admin/diary_list.jsp?uid=1&groupid=1&pageNo=0"  class="pagebtn">&lt;&lt;上一页</a> 
                 <a href="../admin/diary_list.jsp?uid=1&groupid=1&pageNo=2" class="pagebtn">下一页&gt;&gt;</a> 
                 跳到<input id="toPage" type="text" style="width: 30px;" />页
                 <input type="button" value="GO" class="pagebtn" onClick="window.location.href='diary_list.jsp?uid=1&groupid=1&pageNo='+toPage.value"/>
                 </div></td>
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
