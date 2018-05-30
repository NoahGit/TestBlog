

// 显示编辑照片
function editMyPhoto(id)
{
	//var gid = $('#init_photo_gid').get(0).value;
	//var page = $('#init_photo_page').get(0).value;
	//var title = $('#edit_title_'+id).get(0).value;
	//var memo = $('#edit_memo_'+id).get(0).value;
	var title="title";
	var memo="memo";
	title = title.replace(/'/g,'&#39;')
	
	var fontColor = "";
	if( !title )
	{
		title = "无标题";
		fontColor = 'color:#8C8C8C;';
	}
	var	cont="<div id='editMyPhotoMsg' style='padding:20px 0;'><table cellpadding='0' cellspacing='0' border='0' style='text-align:center;'><tr><td width='100' align='right'>标题：</td><td align='left'><input type='text' maxlength='50' onfocus='javascript:hideNotitleNew(this)' name='edit_photo_title' id='edit_photo_title' value='"+title+"' style='width:270px;"+ fontColor+"'></td></tr><tr><td align='right'>简介：</td><td align='left'><br /><textarea id='edit_photo_memo' name='edit_photo_memo' style='width:270px;height:135px'>"+memo+"</textarea></td></tr><tr><td colspan='2'><br /><input type=button class='g_layer_alert_btn' onclick='chkEditMyPhoto("+id+");' value='确定'>&nbsp;&nbsp;<input type=button class='g_layer_alert_btn' onclick='hidePopWin(false)' value='取消'></td></tr></table></div>";
	winOpen({width:450, height:280, title:'修改照片',msg:cont,align:'center'});
}

//++ by ws 20080623
function hideNotitleNew(o)
{
	if( o.value == '无标题' )
	{
		o.value = "";
		o.style.cssText = "width:270px;";
	}
}

// 确认编辑照片
function chkEditMyPhoto(id)
{
	var title = $('#edit_photo_title').get(0);
	hideNotitleNew(title);
	var memo = $('#edit_photo_memo').get(0);
	var gid  = $('#init_photo_gid').get(0);
	var page = $('#init_photo_page').get(0);
	var post_obj = [
	{"item_id" : "post_photo_title", "item_name" : "post_photo_title", "item_value" : title.value.replace(/"/g,'&quot;')} ,
	{"item_id" : "post_photo_memo", "item_name" : "post_photo_memo", "item_value" : memo.value.replace(/"/g,'&quot;')} ,
	{"item_id" : "post_photo_id", "item_name" : "post_photo_id", "item_value" : id} ,
	{"item_id" : "post_photo_gid", "item_name" : "post_photo_gid", "item_value" : gid.value} ,
	{"item_id" : "post_photo_page", "item_name" : "post_photo_page", "item_value" : page.value}
	];
	var post_url = '/photo/photo_doing.php?action=edit';
	
	if (title.value.length>50)
	{
		title.focus();
		alert("照片标题最多只能写50个字!");
		return false;
	}
     
	if (memo.value.length>500)
	{
		memo.focus();
		alert("照片描述最多只能写500个字!");
		return false;
	}
    
	var fnWhenDone = function(oXML)
	{
		var resFunc=function()
		{
			window.location.href = "photo_list.php?groupid="+gid.value+"&page="+page.value;
		}

		if( oXML && oXML.innerHTML && oXML.innerHTML.match("成功") ) {
			ajaxSuccDialog(oXML.innerHTML, resFunc);
		}
		else if(oXML && oXML.innerHTML && oXML.innerHTML == "锁定" ) {
			alert('您发布非法信息，已被锁定!');
			top.location='http://passport.51.com/passport.5p?gourl=http://www.51.com';
			return;
		}
		else {
			ajaxFailDialog(oXML.innerHTML, resFunc);
		}
	}
	ajaxIframePost(post_obj,post_url,fnWhenDone);
}

// 显示删除照片
function delMyPhoto(id, is_first)
{
	var gid = $('#init_photo_gid').get(0).value;
	var page = $('#init_photo_page').get(0).value;
	var title = $('#edit_title_'+id).get(0).value;

	if(haveSecondPassword && haveSecondPassword_Mod)
	{
		showSecondPasswordLayer(function (status) {
			if (status === true) {
				if (window.confirm('确定要删除吗？如果这张图片曾经被贴到日记、群组中，将无法再显示。')) {
					delMyPhotoDo(id, $('#second_pwd').val(), is_first);
				}
			}
		});
	}
	else
	{
		//var info="<div id=delPhoto style='font:14px'><b>确定要删除吗？</b>如果这张图片曾经被贴到日记、群组中，将无法再显示。<br/><br/><input type=button value='确定' onclick=\"delMyPhotoDo('"+id+"',false)\" class='g_layer_alert_btn'>&nbsp;&nbsp;<input type=button value='取消' onclick='hidePopWin(false)' class='g_layer_alert_btn'></div>";
		//winOpen({width:480, height:300, title:'删除照片', msg:info});
		var res = window.confirm('确定要删除吗？如果这张图片曾经被贴到日记、群组中，将无法再显示。');
		if(res){
			delMyPhotoDo(id,false, is_first);
		}
	}
}

// 删除照片检查密码
function chkDelPhotoPwd(obj)
{
	var pwd = $("#second_pwd").get(0);
	var id = $("#del_photo_id").get(0).value;
	var title = $('#edit_title_'+id).get(0);

	if(pwd.value=="")
	{
		pwd.focus();
		return false;
	}

	var fnWhenDone = function(oXML) {
		hidePopWin(false);
		if(oXML=="1") {
			//$("#popupMsg").get(0).style.display="none";
			//var cont="<div id=delPhoto style='font:14px'><b>确定要删除吗？</b>如果这张图片曾经被贴到日记、群组中，将无法再显示。<br/><br/><input type=button value='确定' onclick=\"delMyPhotoDo('"+id+"','"+pwd.value+"')\" class='g_layer_alert_btn'>&nbsp;&nbsp;<input type=button value='取消' onclick='hidePopWin(false)' class='g_layer_alert_btn'></div>";
			//$("#popupCont").get(0).innerHTML=cont;
			var res = window.confirm('确定要删除吗？如果这张图片曾经被贴到日记、群组中，将无法再显示。');
			if(res){
				delMyPhotoDo(id,pwd.value, 1);
			}
		}
		else {
			//$("#popupMsg").get(0).innerHTML="密码错误,请重新输入";
			//$("#popupMsg").get(0).style.display="";
			//obj.value = "确定";
			//obj.disabled = false;
			alert('密码错误,请重新输入');
		}
	}
	$.get("/photo/photo_check_passwd.php", "sceondPassword=" + pwd.value, fnWhenDone);
	try{
		obj.value = "验证中...";
		obj.disabled = true;
	}catch(e){}
}

// 删除照片
function delMyPhotoDo(id,pwd, is_first)
{
	var page = $('#init_photo_page').get(0).value;
	var gid = $('#init_photo_gid').get(0).value;
	var post_str = 'id='+id+'&second_pass='+pwd+'&page='+page+'&gid='+gid + '&is_first=' + is_first;
	var post_url = '/photo/photo_doing.php?action=del';

	var fnWhenDone = function(oXML)
	{
		var resFunc=function()
		{
			window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
		}

		if(oXML)
		{
			ajaxSuccDialog(oXML,resFunc);
		}
		else
		{
			ajaxFailDialog("删除失败",resFunc);
		}
	}

	$.post( post_url, post_str, fnWhenDone);
}

// 显示移动照片
function moveMyPhoto(id)
{
	/*
	if(top.global_photo.length<=1)
	{
	ModalAlert("无法移动到其他分类中，因为您的相册图库中只有一个分类!");
	return false;
	}
	*/
	var gid = $('#init_photo_gid').get(0).value;
	var page = $('#init_photo_page').get(0).value;
	var glist = getGroupSelectList(gid);

	var info='<div id="move_photo" style="padding-top:20px; text-align:center;font-size:12px;">转移到分类: <select id="new_gid"       style="visibility: visible;">'+glist+'</select><br><br><input type="button" value="确定" onclick="moveMyPhotoDo(\''+id+'\')" class="g_layer_alert_btn">&nbsp;&nbsp;<input type="button" value="取消" onclick="hidePopWin(false)" class="g_layer_alert_btn"></div>';
	winOpen({width:300, height:120, title:'转移照片', msg:info, align:'center'});
}

// 移动照片
function moveMyPhotoDo(id)
{
	var old_gid = $('#init_photo_gid').get(0).value;
	var new_gid = $("#new_gid").get(0).value;
	var page = $('#init_photo_page').get(0).value;
	var post_str = 'id='+id+'&old_gid='+old_gid+'&new_gid='+new_gid+'&page='+page;
	var post_url = '/photo/photo_doing.php?action=move';

	$("#move_photo").get(0).innerHTML="<div style='text-align:center;font-size:12px;'>正在迁移...<br><img src='http://static.51img1.com/i/uc/load.gif'></div>";
	var fnWhenDone = function(oXML)
	{
		var resFunc=function()
		{
			window.location.href = "photo_list.php?groupid="+old_gid+"&page="+page;
		}
		if(oXML)
		{
			ajaxSuccDialog( oXML,resFunc );
		}
		else
		{
			ajaxSuccDialog( "移动失败!",resFunc );
		}
	}
	$.post( post_url, post_str, fnWhenDone);
}

// 生成分类列表
function getGroupSelectList(gid)
{
	var resp = $.ajax({
		url: "photo_group.php?action=getGSelectList",
		type: "post",
		data: "gid="+gid,
		async: false
	});

	if(resp.status == 200)
	{
		return resp.responseText;
	}else{
		return "<option value=''>未找到</option>";
	}
}

// 显示排序照片
function sortMyPhoto(id,swap)
{
	var gid = $('#init_photo_gid').get(0).value;
	var page = $('#init_photo_page').get(0).value;

	var msg = "";
	if (swap>0){
		msg = "向前移动";
	}else if (swap<0){
		msg = "向后移动";
	}else {
		return false;
	}

	var	cont="<form action='javascript:void(0)' onsubmit='javascript:sortMyPhotoDo(\""+id+"\",\""+swap+"\");'><div style='text-align:center;padding:15px;'>" + msg + "&nbsp;<input type='text' name='swapnum' id='swapnum' value='1' size='4'>&nbsp;位</div><div style='text-align:center;padding:7px;'><input type='button' onclick=\"sortMyPhotoDo('"+id+"','"+swap+"');\" name='swap_submit' id='swap_submit' value='确定' class='g_layer_alert_btn'>&nbsp;&nbsp;<input type=button onclick='hidePopWin(false)' value='取消' class='g_layer_alert_btn'></div></form>";
	winOpen({width:300, height:120, title:'系统提示',msg:cont});
}

// 排序照片
function sortMyPhotoDo(id,swap)
{
	var obj = $('#swapnum').get(0);
	var obj_s = $('#swap_submit').get(0);
	var gid = $('#init_photo_gid').get(0).value;
	var page = $('#init_photo_page').get(0).value;
	var post_str = 'id=' + id + '&swap=' + obj.value * swap + '&gid=' + gid + "&page=" + page;
	var post_url = '/photo/photo_doing.php?action=sort';

	var fnWhenDone = function(oXML)
	{
		var resFunc=function()
		{
			window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
		}
		if(oXML && oXML.match("成功"))
		{
			ajaxSuccDialog(oXML,resFunc);
		}
		else
		{
			ajaxFailDialog(oXML,resFunc);
		}
	}

	if(obj.value == '' 
		|| obj.value == null 
		|| obj.value=='undefined'
		|| isNaN(parseInt(obj.value)) )
	{
		alert("请输入数字");
		obj.focus();
		return false;
	}
	else
	{
		obj_s.disabled = true;
		obj_s.value = "正在处理...";
		$.post( post_url, post_str, fnWhenDone);
	}
}

// 显示设置形象照
function setGoodPhoto(pid,url,webUrl,gid,uploadKey)
{
	if(have_setted){
		Alert({width:430, height:160, title:'系统提示',msg:"<span style='font-size:14px;'>您刚提交的形象照可能正在审核中，请刷新后重试。</span>",enter:reloadthispage});
		return false;
	}
	
	if(comitting) {
		alert('设置形象照提交中……');
		return false;
	}

	
	//var info="<div id=getGP><font color='red'>必须是您本人的照片才能设为形象照，其它图片请不要设为形象照。<br><br>此操作将替换您以前设置过的形象照!确定执行吗?</font><br><br><input type=button value='确定' onclick=\"setGoodPhotoDo('"+pid+"','"+url+"','"+webUrl+"','"+gid+"')\" class='g_layer_alert_btn'>&nbsp;&nbsp;<input type=button value='取消' onclick='hidePopWin(false)' class='g_layer_alert_btn'></div>";
	//winOpen({width:450, height:200, title:'设置形象照', msg:info});
	//var res = confirm("此次操作将替换您以前的形象照。");
	//if(res){
		setGoodPhotoDo(pid,url,webUrl,gid,uploadKey);
	//}
}

var pub_key = '';
var pub_time = '';
var pub_user = '';
var pub_url = '';
var pub_cool = 0;

// 设置形象照
function setGoodPhotoDo(pid,url,webUrl,gid,uploadKey)
{

	pub_key = $('#setgp_key_'+pid).get(0).value;
	pub_time = $('#setgp_time').get(0).value;
	pub_user = $('#setgp_user').get(0).value;
    
	var img	= new Image();
	img.src = webUrl;
	if(img.width){
		if(img.width <= 130 && img.height <= 130){
			setFace(url);//存储地址
		}else{
			portraitCutImg(webUrl,pid,gid,uploadKey);
		}
	}else{
		img.onload = function(){
			img.onload = function(){};
			if(img.width <= 130 && img.height <= 130){
				setFace(url);//存储地址
			}else{
				portraitCutImg(webUrl,pid,gid,uploadKey);
			}
		}
		img.onerror = function(){
			portraitCloseIframe("获取图片失败，请重试一次！" );
		}
	}
}
function setFace(url){
	comitting = true;
	pub_url = url;
	var resp = $.ajax({
		url: "http://setface.51.com/php/userface3.php",
		dataType: "jsonp",
		data: 	"url="+encodeURIComponent(url)
		+"&time="+pub_time
		+"&user="+pub_user
		+"&key="+pub_key,
		async: false,
		success: setGoodPhotoDo_Done
	});
}
function getPhotoCutUploadInfo(pid){
	return {
	'user' : pub_user,
	'time' : pub_time,
	'key'  : pub_key
	}
}
function cutPhoto_Done(msg){
	var gid = $('#init_photo_gid').get(0).value;
	var page = $('#init_photo_page').get(0).value;
	var resFunc=function()
	{
		window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
	}
	var photoInfo = msg.split(':');
	var ret  = photoInfo[0];
	if("success" == ret){
		var url  = photoInfo[1];
		pub_user = photoInfo[2];
		pub_time = photoInfo[3];
		pub_key  = photoInfo[4];
		pub_cool = photoInfo[5];
		setFace(url);//存储地址
	}else{
		ajaxFailDialog( "设置失败!", resFunc);
	}
}

function setGoodPhotoDo_Done (data){
	var gid = $('#init_photo_gid').get(0).value;
	var page = $('#init_photo_page').get(0).value;
	var resFunc=function()
	{
		window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
	}
	if(0 == data.ret){
		setGoodPhotoDo_two(pub_url, data.token, data.time);
	}else{
		ajaxFailDialog( "设置失败!", resFunc);
	}
}

function portraitCutImg(url,photoid,groupid,uploadKey){
	if(!FlashPortraitVersion) FlashPortraitVersion = '20100902';
	var checkInfo = getPhotoCutUploadInfo(photoid);
	var para_str = "?v="+FlashPortraitVersion+"&vip="+isVip+"&url="+encodeURIComponent(url)+"&photoid="+photoid+"&groupid="+groupid+"&user="+checkInfo.user+"&time="+checkInfo.time+"&key="+uploadKey+"&cbSet=cutPhoto_Done&cbCancel=hidePopWin" ;
	hidePopWin(false);
	html_str = '<div id="portrait_photo_cut"></div>';
	winOpen({width:700, height:475, title:'设置形象照', msg:html_str});
	var so = new SWFObject("http://static.51img1.com/v3/photo/swf/cut_photo.swf"+para_str, 'head', '700', '430', '9', '', 'high');
	so.addParam('allowScriptAccess', 'always');
	so.write('flash_tmp');
	so = null;
	$("#portrait_photo_cut").html($("#flash_tmp").html());
	$("#flash_tmp").empty();
}
function nothing($a, $b){

}
function setGoodPhotoDo_two(url, token, time)
{
	var page = $('#init_photo_page').get(0).value;
	var gid = $('#init_photo_gid').get(0).value;
	var post_str = 'url='+encodeURIComponent(url)+'&page='+page+'&gid='+gid+'&token='+ token+ '&time='+ time+'&cool='+pub_cool;
	var post_url = '/photo/photo_doing.php?action=setgp';
    var resFunc=function()
	{
    	window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
	}
	var setGoodPhotoDo_two_Done = function(get_two)
	{
		var data = get_two.split("|");
		if(0 == data[0])
		{
			setGoodPhotoDo_tre(url);
			showSetFaceSuss();
			/*
	    	if (pub_cool == 1) {
	    		ajaxSuccDialog( '酷炫形象照设置成功！', resFunc);
	    	}
	    	else {
	    	    ajaxSuccDialog( '形象照设置成功！', resFunc);
	    	}
			*/
			return false;
		}
		else
		{
			ajaxFailDialog( "设置失败!", resFunc);
		}
	}

	$.post( post_url, post_str, setGoodPhotoDo_two_Done );
}

function setGoodPhotoDo_tre(url)
{
	var get_obj = [
	{"item_id" : "url", "item_name" : "url", "item_value" : url}
	];
	var get_url = 'http://my.51.com/comm/userface.php';
	try{
		$.ajax({
			dataType: 'jsonp',
			url: "http://my.51.com/comm/userface.php",
			data: "url="+encodeURIComponent(pub_url),
			async: false
		});
	}catch(e){
		alert(e);
	}
	/*
	var setGoodPhotoDo_tre_Done = function(data)
	{
	return false;
	}

	ajaxIframePost(get_obj,get_url,setGoodPhotoDo_tre_Done,'get');
	*/
}

// 照片推荐到首页
function recommendPhoto(url,id)
{
	var page = $('#init_photo_page').get(0).value;
	var gid = $('#init_photo_gid').get(0).value;
	var post_str = 'url='+encodeURIComponent(url)+'&page='+page+'&gid='+gid+'&id='+id;
	var post_url = '/photo/photo_doing.php?action=recdp';

	var resFunc = function() 
	{
		window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
	}

	var info="<div id=getGP style='padding-top:20px;text-align:center;font-size:12px;'>正在设置，请稍等...<br><img src='http://static.51img1.com/i/uc/load.gif'></div>";
	winOpen({width:500, height:140, title:'照片推荐到主页', msg:info, 'hideHook': refreshPage, align:'center'});
	
	var fnWhenDone = function(oXML)
	{
		if(oXML)
		{
			$("#getGP").get(0).innerHTML = oXML+"<br><br><span class='g_btn_w'><input type=button value='管理推荐照片' onclick='goToRecommend();' class='g_btn'></span>&nbsp;&nbsp;<span class='g_btn_w_gray'><input type=button value='关闭' onclick='refreshPage();' class='g_btn_gray'></span>";
		}
		else
		{
			ajaxFailDialog( "推荐失败!",resFunc);
		}
	}

	$.post( post_url, post_str, fnWhenDone);
}

function goToRecommend()
{
	window.location.href = "photo_recommend.php";
}

// 取消照片推荐到首页
function unRecommendPhoto(id)
{
	var page = $('#init_photo_page').get(0).value;
	var gid = $('#init_photo_gid').get(0).value;
	var post_str = 'page='+page+'&gid='+gid+'&id='+id;
	var post_url = '/photo/photo_doing.php?action=unrecdp';

	var info="<div id=getGP style='text-align:center;font-size:12px;'>正在设置，请稍等...<br><img src='http://static.51img1.com/i/uc/load.gif'></div>";
	winOpen({width:450, height:200, title:'照片推荐到主页', msg:info});

	var fnWhenDone = function(oXML)
	{
		var resFunc=function()
		{
			window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
		}
		if(oXML)
		{
			ajaxSuccDialog(oXML, resFunc);
		}
		else
		{
			ajaxFailDialog("取消推荐失败!", resFunc);
		}
	}

	$.post( post_url, post_str, fnWhenDone);
}

function hideCutImg() {

	$("#showblack").hide();
	$("#cut_img_div").hide();
	$("#div_container").remove();

	$("#cut_img_tt").html("");
	$("#preview").html("");
}

function editImg(id)
{
	var url = "http://photo.51.com/photo/photo_editor.php?pid="+ encodeURIComponent(id);
	
	doEditImg(url);
}
function doEditImg(url){
	var cont = '<iframe width="810" scrolling="no" height="540" frameborder="0" align="middle" marginwidth="0" marginheight="0" src="'+url+'" style="background-color:transparent; padding:20px 0px 0px 30px;" allowtransparency="true" id="iframepage"></iframe>';
	
	winOpen( {	msg : cont,
		title: '',
		align:'center',
		width: '870',
		height: '600',
		title: '美化照片'
	}); 
	$('.close').unbind('mousedown').bind('mousedown', function() {
		if(window.confirm("您辛苦编辑的照片还未保存,是否确定要关闭？")){
			hidePopWin(false);
			return false;
		}else{
			return false;
		}
	})

}

function cutImg(id, src, recomm)
{
	if(src.match(/gif$/)) {
		alert("GIF 格式的文件暂时无法生成缩略图!");
		return;
	}

	hideCutImg();
	$("#cut_img_div").css({
		left: Math.min(300, jQuery("body").width()/2 - 400),
		top: top.document.body.scrollTop +50
	});

	$("#showblack").css("height",document.body.scrollHeight);
	$("#showblack").show();
	$("#cut_img_div").show();
	
	/*
	if(!window.img_cut_innerhtml)
	{
		window.img_cut_innerhtml = $("#img_cut_html").html();
		$("#img_cut_html").html('');
	}
	winOpen( {'msg':window.img_cut_innerhtml, 'height':400, 'width':600, cancel:hideCutImg});
	*/
	var cut_sel = { x: 0, y: 0, w: 0, h: 0};
	var max_img_size = { w: 325, h: 225};

	$cut_img = jQuery('<img />');
	$cut_img.appendTo($("#cut_img_tt"));
	InitCutImage($cut_img, $("#preview"), cut_sel, max_img_size);
	$cut_img.attr("src", src);

	window.cutImgSubmit = function() {
		var pub_user = $('#setgp_user').get(0).value;
		var page = $('#init_photo_page').get(0).value;
		var gid = $('#init_photo_gid').get(0).value;

		var cb = function(o, msg) {
			if( !o || (typeof(o)=='object' && o.err_msg) ) {
				if(o.err_msg)
				alert(o.err_msg)
				else
				alert( "生成缩略图失败." );
				hideCutImg();
				return;
			}
			alert( "重新生成缩略图成功." );
			window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
		}
		
		var resp = $.ajax({
			url: "http://zoom.51.com/up_v2/zoom_pic.php",
			dataType: "jsonp",
			data: 	"sdofijwner=woe98xsdf&"+
			"id="+ id +
			"&groupid="+gid +
			"&user="+pub_user+
			"&w="+ cut_sel.w+
			"&h="+ cut_sel.h+
			"&url="+ encodeURIComponent(src)+
			"&x="+ cut_sel.x+
			"&y="+ cut_sel.y+
			"&recommend="+ recomm+
			"&fix_w=130&fix_h=104",		//125,150
			async: false,
			success: cb
		});
	
	}
}

function refreshPage() {
	var page = $('#init_photo_page').get(0).value;
	var gid = $('#init_photo_gid').get(0).value;
	window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
}

//2周更新一次形象照提示
function canNOTsetFace(last,next){
	
	var strlast = "";
	var strnext = "";
	if(last.substr(0,4) == next.substr(0,4)) {
		strlast = (last.substr(4,2)) + "月" + last.substr(6,2) + "日";
		strnext = (next.substr(4,2)) + "月" + next.substr(6,2) + "日";
	}else{
		strlast = last.substr(0,4) + "年" + (last.substr(4,2)) + "月" + last.substr(6,2) + "日";
		strnext = next.substr(0,4) + "年" + (next.substr(4,2)) + "月" + next.substr(6,2) + "日";
	}

	var msg = '<p style="margin-top:20px; text-align:center; font-size:14px;"><strong>两周才能更换一次形象照</strong></p><p style="margin-top:20px; text-align:center; font-size:14px;">上次更换的时间是'+strlast+'，你可以在<strong>'+strnext+'</strong>再次更换。</p><p style="margin-top:20px; text-align:center;"><input type=button class="g_layer_alert_btn" onclick="reloadthispage();" value="确定"></p>';
	winOpen({width:550, height:180, title:'系统提示', msg:msg});
}

function reloadthispage(){
	var page = $('#init_photo_page').get(0).value;
	var gid = $('#init_photo_gid').get(0).value;
	window.location.href = "photo_list.php?groupid="+gid+"&page="+page;
}

function showSetFaceSuss(){
	var set_face_suss_content = '';
	set_face_type = 2;
	if(set_face_type==2) {
		have_setted = true;
		set_face_suss_content = '<style type="text/css">' +
			'.success{text-align:center;}' +
			'.setphoto{width:130px;height:130px;margin:30px auto 0;}' +
			'.setphoto p{position:absolute;top:0;left:0;background:url("http://static.51img1.com/v3/jiaoyou/images/photobg.png") no-repeat;width:130px;height:130px;margin:0;}' +
			'*html .setphoto p{filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=scale,src="http://static.51img1.com/v3/jiaoyou/images/photobg.png");background:none;}' +
			'</style>' +
			'<div class="success">' +
			//'	<div style="position:relative;" class="setphoto"><img src="' + set_face_url + Math.random() + '" width="130" height="130"/><p>&nbsp;</p></div>' +
			'	<h2 style="font-size:16px;margin:40px 0;font-family:微软雅黑;">形象照设置成功!</h2>' +
			//'	<p style="color:#828282;">注：审核一般几分钟就好了</p>' +
			'	<p style="margin:20px 0 0;"><a href="javascript:void(null)" onclick="location.reload();">关闭页面并返回</a></p>' +
			'</div>';
		var height = '150';
	} else {
		set_face_suss_content = '<style type="text/css">' +
			'.success {height:350px; margin:0 auto;}' +
			'.success h3{margin:15px; font-size:14px;border-bottom:1px solid #DDDDDD;padding:0 0 5px;}' +
			'.setphoto{width:130px;height:130px;margin:30px auto 0;}' +
			'.success .ok{background:url(http://static.51img1.com/v3/my/images/success.jpg) no-repeat; padding-left:60px;width:100px;margin:30px auto 0;text-align:left;}' +
			'.success .ok p{font-size:14px; margin:0 0 15px 0;}' +
			'</style>' +
			'<div class="success">' +
			'	<div class="setphoto"><img src="' + set_face_url + Math.random() + '" width="130" height="130"/></div>' +
			'	<div class="ok">' +
			'		<p>设置成功！</p>' +
			'		<a href="javascript:void(null)" onclick="location.reload();">关闭页面并返回</a>' +
			'	</div>' +
			'</div>';
		var height = 380;
	}
	comitting = false;
	winOpen({width:550, height:height, title:'系统提示',msg:set_face_suss_content});
}
