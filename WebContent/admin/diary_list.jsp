<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>admin用户管理中心——日记</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link href="../css/dl_style.css" rel="stylesheet" type="text/css" />
<script language="javascript">

	window.status="EasyBlog 欢迎admin";
</script>
  </head>
  
  <body>
   <div style="width:100%;  background-color:#D6D4CE;text-align:center"><table width="800px" align="center" style="margin-bottom:3px;">
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
					<span style="font-size:24px; font-family:'微软雅黑'; margin-left:45px;"><img src="../images/diaryPic.png" style="margin-bottom:-5px;" /><strong>日记</strong></span>
					<hr color="#CCCCCC" width="97%" align="center"/>
				</td>
			</tr>
			
			 <tr>
			 	<td width="100px" height="470px" valign="top" style="font-family:'微软雅黑'; font-size:13px;">
				
				<table style="margin-left:28px">
					<tr>
						<td><br/>
						<a href="../admin/wirteDiary.jsp"><img src="../images/writeDiary.PNG" onMouseOver="this.src='../images/writeDiaryover.PNG'"  onmouseout="this.src='../images/writeDiary.PNG'" style="border:0px;"/></a><br/><br/></td></tr>
						
						<tr><td>
						<a href="../admin/diary_list.jsp"  style=" font-weight:bold; font-size:14px;"   >个人日记
						</a><br/></td></tr>
						

						<tr><td>
						<a href="../admin/diary_list.jsp" >黑客知识
						</a><br/></td></tr>
						

						<tr><td>
						<a href="../admin/diary_list.jsp" >软件知识
						</a><br/></td></tr>
						

						<tr><td>
						<a href="../admin/diary_list.jsp" >硬件知识
						</a><br/></td></tr>
						


					
					
						<tr><td><br/><br/><a href="../admin/diaryGroup.jsp">类别管理</a></td>
					</tr>
				</table>
				
				
					
				</td>
				<td style="text-align:left; margin-left:20px; margin-top:0px;" valign="top">
				<table style="margin-left:20px">
					<tr><td width="575px">
						&nbsp;&nbsp;&nbsp;&nbsp;<span style=" font-weight:bold; font-size:14px;font-family:'微软雅黑';">个人日记</span>
						<hr  color="#dddddd"/>
						</td>
					</tr>
					
					<tr>
						<td width="575px">
						
							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2010年12月12日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>艾语录</u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2010年07月09日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>About Android  </u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2010年02月15日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>呐喊  </u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2009年09月12日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>全城堵死  </u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2009年09月09日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>怀念校友 </u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2009年09月05日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>时况无辜 </u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2009年08月09日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>溃散在薄雾中 </u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							<table width="100%" style="font-family:'微软雅黑'">
								<tr>
									<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;2009年07月09日</td>
									
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="../admin/editDiary.jsp" style="color:#337289; font-size:13px;"><u>战争保卫片 </u></a>
									</td>
									
									<td align="right" style="margin-right:20px">
										<div><a href="../diary.jsp" target="_blank">查看</a>&nbsp;&nbsp;<a href="../admin/editDiary.jsp">修改</a>&nbsp;&nbsp;<a href="#" onClick="if(!confirm('确定要删除该日志？')){return false;}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</td>
								</tr>
								<tr><td colspan="2" valign="top" align="right">
									<hr  color="#dddddd" style="margin-right:0px; text-align:right" width="555px"size="1"/>
									</td>
					</tr>
							</table>

							
							
						
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
