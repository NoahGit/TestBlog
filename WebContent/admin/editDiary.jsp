<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>admin用户管理中心——修改日记</title>
    
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

	window.status="EasyBlog 欢迎admin";
</script>
  </head>
  
  <body>
  <form action="diary_list.jsp" method="post">
    <div style="width:100%;  background-color:#D6D4CE;text-align:center"><table width="800px" align="center" style="margin-bottom:3px;">
	<tr>
		<td align="left"><a href="admin.jsp">[管理中心]</a></td>
		<td align="right"><a href="../index.jsp" target="_blank">[我的主页]</a>  <a href="login.jsp">[退出]</a></td>
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
					<a style="font-size:24px; font-family:'微软雅黑'; margin-left:45px;" href="../admin/wirteDiray.jsp"><img src="../images/diaryPic.png" style="margin-bottom:-5px;" />&nbsp;<strong>写日记</strong></a>
					
				</td>
				<td align="right">
					<a href="javascript:history.go(-1);" style="margin-right:15px;  font-size:13px;"><img src="../images/back.png"  style="margin-bottom:-5px; border:0px;" />返回</a>
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
							<input type="text" name="title" style="width:470px" value="艾语录"/>						</td>
					</tr>
					<tr>
						<td style="font-weight:bold">分类:</td>
						
						<td><select name="groupid">
						
						  <option value="1"  selected="selected"  >个人日记</option>
						  
						  <option value="2" >黑客知识</option>
						  
						  <option value="3" >软件知识</option>
						  
						  <option value="4" >硬件知识</option>
						  
						  
						  </select>						</td>
					</tr>	
					<tr>
						<td style="font-weight:bold"></td>
						<td>
							<textarea style="height: 240px; width: 520px; font-size: 14px; line-height: 22px;" name="info">如果我们放弃注视和关心周围的人，永远没有公平和正义的一天，谁也不会自由。

“公开化是公民面对专制的利器，仅有的利器。”

“任何一个人，如果不为正义而战，不为所谓的公平而战，他就是非正义和不公正的一部份，这毫无疑问。”

“我每秒钟都受到威胁，因为我生活在一个非常危险性的国度里。”

“为法西斯卖力的人死得比鸿毛还轻。这是法西斯他爹说的。”


“如果绝望、麻木、放弃、不在意了，你变为了你的对手希望你成为的那部份。”


“如果我们放弃注视和关心周围的人，永远没有公平和正义的一天，谁也不会自由。”


“我之所以勇敢，是因为我知道危险就在那里，如果我不行动，危险会越来越强大。”


“立国60年后，面对事实和公理中国还是拒绝承认错误的话，这个国家就是个危险的国家。”


“每天都有事情发生，每天都有拆迁，把人打死、打伤的，但是你们做了什么呢？只能是装着出本艺术杂志，搞搞艺术，回避问题。真正应该面对的是什么你们真的不知道么？”


“中国人习惯了看着他人死去，只要是他人失踪、禁闭、死去，直到有一天这个他人就是自己。”


“你如果希望了解你的祖国，你已经走上了犯罪的道路。”


“这个政权由一些最不要脸的说谎者、拥戴着，他们靠帮腔说谎，蔑视羞辱良知，享受独裁统治下的优惠，这些人是要受到审判的。”  </textarea>			</td>
					</tr>
					<tr>
						<td style="font-weight:bold"></td>
						<td>
							<input type="submit"  value="发 表"  class="btn1_mouseout" onMouseOver="this.className='btn1_mouseover'" onMouseOut="this.className='btn1_mouseout'"/>	
							<input type="button" onClick="close();" name="title" value="关 闭"  class="btn1_mouseout" onMouseOver="this.className='btn1_mouseover'" onMouseOut="this.className='btn1_mouseout'" />	
							
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
</div></form>
  </body>
</html>
