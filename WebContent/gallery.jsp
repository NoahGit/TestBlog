<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <head>

    <title>Gallery</title>

<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


<link rel="stylesheet" type="text/css" href="css/style.css">
   <link href='css/carousel.css' id="carouselCSS" type="text/css" rel="stylesheet" media="screen" />

    <link href='css/layout.css' type="text/css" rel="stylesheet" media="all" />
	    <style type="text/css">

     #myImg{ margin:5px auto;   width:760px; border:1px;}
	 body{ background-image:url(images/19.gif)}
	#photo_group{
		margin-left:5px;
		margin-bottom:5px;
		
		color:#1E64D5;
		 
		}
     </style>
    <script src="js/gallery.js" type="text/jscript"></script>

     <script type="text/javascript">

	var imgs=new Array();

	var index=0;

   window.onload=function(){

		 

		 imgs[0]="images/3.jpg";	 

		 

		 imgs[1]="images/4.jpg";	 

		 

		 imgs[2]="images/7.jpg";	 

		 

		 imgs[3]="images/8.jpg";	 

		 

		 imgs[4]="images/10.jpg";	 

		 

		 imgs[5]="images/12.jpg";	 

		 

		 showimages(0);

	}

	//指定索引显示图片

	function showimages(ind){
		
		var newImg=new Image();
		newImg.src=imgs[ind];
	
		document.getElementById("myImg").innerHTML="<img src='"+imgs[ind]+"' id='theimg'/>" ;  

		//必须在图片加载完后进行处理，否则图片未加载完(complete为false)就读取宽度信息会是0

		document.getElementById("theimg").onload=function(){
			document.getElementById("myImg").style.width=document.getElementById("theimg").width+10+"px";   //div和图片宽度相同

			document.getElementById("myImg").align="center";

		}

	}

	

	//onmousemove 鼠标移上显示切换图标

	function showChange(e){

		//确定鼠标光标图标

		if(position(e).nowX<document.getElementById("theimg").width/2){

			document.getElementById("myImg").style.cursor='url(images/mouseleft.cur), pointer';

		}else{

			document.getElementById("myImg").style.cursor='url(images/mouseright.cur), pointer';

		}

	}

	/*

	获取鼠标相对图片的X，Y坐标

	*/

	var position=function(e){

		var p={

			nowX:0,

			nowY:0

		}

		

		p.nowX=e.offsetX;  //相对于触发事件的对象，鼠标位置的水平坐标

		p.nowY=e.offsetY  //相对于触发事件的对象，鼠标位置的垂直坐标

		

		if(e.offsetY==undefined){  //firefox不支持offsetY和offsetX

			p.nowX=e.pageX-document.getElementById("myImg").offsetLeft;

			p.nowY=e.pageY-document.getElementById("myImg").offsetTop;

		}

		return p;

	};

	

	

	//点击切换

	function changeImg(e){

		//确定鼠标光标图标

		if(position(e).nowX<document.getElementById("theimg").width/2){

			if(index>0){

				index--;

				showimages(index);

			}

			

		}else{

			if(index<imgs.length-1){

				index++;

				showimages(index);

			}

		}

	}



 </script>



  </head>

  

  <body>   <div id="carousel">
<div id="photo_group" align="left" >相册分类：偶像图片</div>
  <hr style="margin-bottom:5px;"/>
<a href="/BookInfo/photo/Dophoto.jsp?type=list&pageno=1">
<img src="images/carousel_btn_lastpic.gif" id="carousel_btn_lastpic" alt="上一组" onClick="prevGroup();" style="cursor:pointer;"/></a>

<div id="carousel_container">

	 <ul id="samples_list">

	 

		<li onClick="javascript:showimages(0)"><img src="images/kof-03.jpg" alt="11" /></li>

	

		<li onClick="javascript:showimages(1)"><img src="images/kof-04.jpg" alt="22" /></li>

	

		<li onClick="javascript:showimages(2)"><img src="images/mm-07.jpg" alt="33" /></li>

	

		<li onClick="javascript:showimages(3)"><img src="images/kof-08.jpg" alt="44" /></li>

	

		<li onClick="javascript:showimages(4)"><img src="images/mm-10.jpg" alt="55" /></li>

	

		<li onClick="javascript:showimages(5)"><img src="images/kof-12.jpg" alt="66" /></li>

	

	</ul>

</div>

<a href="/BookInfo/photo/Dophoto.jsp?type=list&pageno=2"><img src="images/carousel_btn_nextpic.gif" id="carousel_btn_nextpic" alt="下一组" onClick="nextGroup();" style="cursor:pointer;"/></a>

</div>
<div align="center">

            <table border="1" cellpadding="0" cellspacing="0"  align="center"  bordercolor="#950505">
            <tr>
              <td><table >
                  <tr>
                    <td align="center" bgcolor="#EFEDEE"   width="730px" ><span style="font-size: 14px;
	font-weight: bold;">与你多年</span> </td>
                  </tr>
                  <tr>
                    <td><font color="#950505">初见惊艳，再见依然</font></td>
                  </tr>
                </table></td>
            </tr>
          </table>
          
          </div>
<div id="myImg" onClick="changeImg(event)" onMouseMove="showChange(event)" align="center" >



</div>


  <div align="center">
  <div style="display:none">
  <input type="button" value="上一张"/>&nbsp;&nbsp;&nbsp;4/50&nbsp;&nbsp;&nbsp;<input type="button" value="下一张"/>
      </div>
      <table>
        <tr>
           <td>

           <DIV style="font-size:12px;font-weight: bold; margin-top:10px; margin-bottom:4px;">发表评论</DIV>
            
                    <FORM id="pub_comment_forms" name="pub_comment_forms" action="" method="post">
                      <TEXTAREA name="comment_info_memo" cols="59" rows="4" id="comment_info_memo" >大量刷留言评论、恶意发布脏话等将被处罚，严重者将删除帐号（用户），请勿抱侥幸心理。</TEXTAREA>
                      <BR>
                      <INPUT id="pub_comment_submit" type="submit" value="提交评论" name="SubmitComment">
                   
                      <INPUT id="comment_info_hidden_checkbox" type="checkbox" name="comment_info_hidden_checkbox">
                      <LABEL for="comment_info_hidden_checkbox">悄悄话</LABEL>
                
                 
                    </FORM>
           
            
            
            
            <DIV>
              <DIV>
                <div align="left" style="margin-top:8px"><strong>相册评论</strong></div>
              </DIV>
              <DIV>
                <table>
                    <tr>
                        <td></td>
                    </tr>
                </table>
                </DIV>
              </DIV>
            
        </td>
        
        </tr>
        
      </table>
      </div>

</body>



</html>