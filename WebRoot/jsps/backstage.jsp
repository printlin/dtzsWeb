<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎访问斗图帮</title>
<meta name=”renderer” content=”webkit”>
<meta http-equiv=”X-UA-Compatible” content=”IE=Edge,chrome=1″>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

<style>
body {
	padding-top: 50px;
	padding-bottom: 40px;
	color: #5a5a5a;
}

/* 下面是左侧导航栏的代码 */
.sidebar {
	position: fixed;
	top: 51px;
	bottom: 0;
	left: 0;
	z-index: 1000;
	display: block;
	padding: 20px;
	overflow-x: hidden;
	overflow-y: auto;
	background-color: #ddd;
	border-right: 1px solid #eee;
}

.nav-sidebar {
	margin-right: -21px;
	margin-bottom: 20px;
	margin-left: -20px;
}

.nav-sidebar>li>a {
	padding-right: 20px;
	padding-left: 20px;
}

.nav-sidebar>.active>a, .nav-sidebar>.active>a:hover, .nav-sidebar>.active>a:focus
	{
	color: #fff;
	background-color: #428bca;
}

已久

        .main {
	padding: 20px;
}

.main .page-header {
	margin-top: 0;
}
.msk{
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.6;
	filter:Alpha(opacity=60);	
	position: absolute;
	top: 0px;
	left: 0px; 
	z-index: 1100;
}
.xg{
	width: 560px;
	height: 360px;
	background: #DCB5FF;
	padding: 50px 70px 30px;
	position: fixed;
	top: 70px;
	left: 220px;
	z-index: 1110;
	
}
.close{
	position: fixed;
	top: 70px;
	right: 220px;
	z-index: 1110;
</style>
</head>

<body>
	<!--下面是顶部导航栏的代码-->
	<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">斗图帮管理系统</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">首页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">功能<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li class="dropdown-header">业务功能</li>
						<li><a href="#">信息建立</a></li>
						<li><a href="#">信息查询</a></li>
						<li><a href="#">信息管理</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">系统功能</li>
						<li><a href="#">设置</a></li>
					</ul></li>
				<li><a href="#">帮助</a></li>
			</ul>
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="用户名...">
					<input type="text" class="form-control" placeholder="密码...">
				</div>
				<button type="submit" class="btn btn-default">登录</button>
			</form>
		</div>
	</div>
	</nav>

	<!—自适应布局-->
	<div class="container-fluid">
		<div class="row">
			<!—左侧导航栏-->

			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">首页</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="javascript:void(0);" onclick="userQuery(1,0,0)">用户查询</a></li>
					<li><a href="javascript:void(0);" onclick="queryTtinfo(1,0,0)">套图管理</a></li>
					<li><a href="javascript:void(0);" onclick="queryMessage(1,0)">信息管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="#">设置</a></li>
					<li><a href="#">帮助</a></li>
				</ul>
			</div>
			<!—右侧管理控制台-->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">管理控制台</h1>
				<!-- 內容 -->
				<div id="mainContent">
					<div
						style="width:300px;height: 50px;margin-left: auto;margin-right: auto;margin-bottom: 30px;"
						id="div_serchuser">
						<div class="form-group">
							<input type="text" id="keyword" name="key" class="form-control"
								placeholder="搜索内容" style="width:280px;border-radius: 20px;" /><input
								type="hidden" value="" id="userkey" />
						</div>
					</div>
					<table class="table table-condensed" id="table_content">
					</table>
					<!-- 分页按钮 -->
					<div style="text-align: center;" id="div_pageFenYe"></div>
					<!-- 分页按钮 -->
				</div>
				<!-- 內容  end -->
			</div>
			<!-- 遮蔽层 -->
				<div class="msk" onclick="clos()"></div>
			<!-- 遮蔽层 end-->
			<!-- 弹出框 -->
				<div class="xg">
				<h3 > 编号:0</h3><br/>'+'标题:<input type="text" class="form-control" style="width:280px;border-radius: 20px;" id="title"/><br/>
				tag:<input type="text" class="form-control" style="width:280px;border-radius: 20px;" id="tag"/><br/>
				</div>
			<!-- 弹出框end -->
			<!-- 关闭 -->
			 <div class="close" onclick="clos()">x</div>
		<!-- 关闭 -->


			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript" src="js/bootstrap.min.js"></script>
			<script type="text/javascript">
					//遮蔽层初始化
					$(document).ready(function(){
						$(".msk").hide();
						$(".close").hide();	
						$(".xg").hide();	
							//页面高度
						var byh=$(document.body).outerHeight();
						var byw=$(document.body).outerWidth();
						$(".msk").css("height",byh);
						$(".msk").css("height",byw);	
						
							//可看高度
						var shei=$(window).height();
						//可看宽度
						var swi=$(window).width();
						//实际div高
						var sc=$(".xg").height()+80;
						//实际div 宽
						var sw=$(".xg").width()+140;
						$(".close").css("top",(shei-sc)/2+34);
						$(".close").css("right",(swi-sw)/2-8);	
						//	alert(sw)
						//设置宽高
						$(".xg").css("top",(shei-sc)/2);
						$(".xg").css("left",(swi-sw)/2);
					
					});
					function clos(){				
						$(".xg").hide();
						$(".msk").hide();
						$(".close").hide();
					}
			</script>
			<!-- 键盘与用户操作 -->
			<script type="text/javascript">
				$("#div_serchuser").hide();
				//var html0='<div class="form-group"><input type="text" id="keyword" name="key" class="form-control"placeholder="搜索用户" style="width:280px;border-radius: 20px;"  /></div>';
				function userQuery(page, str, uid) {
					$("#div_serchuser").show();
					//设置键盘事件的种类
					var userKey = document.getElementById("userkey");
					userKey.value = "userkey";
					//console.log(document.getElementById("userkey").value);
					if (str == 3) {
						if (confirm("确定删除?")) {
						} else {
							return;
						}
					}
					$.ajax({
						//str判断修改内容用数字2表示重置密码操作，3表示删除，4表示改状态，uid 判断用户 显示用户不要这2个属性
						url : "showadmin.action?page=" + page + "&&rest=" + str + "&&uid=" + uid,
						success : function(data) {
							//console.log(data);
							$("#table_content").html("");
							var html = '<tr> <td class="active">用户编号</td> <td class="success">姓名</td> <td class="warning">上次登录地点</td> <td class="danger">上次登录时间</td> <td class="info">登录总次数</td> <td class="active">权限</td><td class="success">安全问题</td> <td class="warning">操作1</td> <td class="danger">操作2</td> </tr>';
							var list = data.list;
			
							var html2 = "";
							//console.log(list[0]);
							var l = 0;
							for (; l < list.length; l++) {
								html2 = html2 + '<tr> <td>' + list[l].uid + '</td> <td>' + list[l].username + ' </td> <td>' + list[l].lastip + '</td> <td>' + list[l].lasttime + '</td><td>' + list[l].logintimes + '</td> <td>' + list[l].state + '</td> <td>' + list[l].question + '</td> <td><a href="javascript:void(0);" onclick="userQuery(' + page + ',2,' + list[l].uid + ')" >重置密码(初始密码为123456)</a></td> <td> <a href="javascript:void(0);" onclick="userQuery(' + page + ',3,' + list[l].uid + ')" >删除</a> / <select  id="state" onchange="user(this.value)"> <option value="userQuery(' + page + ',4,' + list[l].uid + ')" >修改权限</option> <option value="userQuery(' + page + ',5,' + list[l].uid + ')">管理员</option><option value="userQuery(' + page + ',6,' + list[l].uid + ')" >会员</option> <option value="userQuery(' + page + ',7,' + list[l].uid + ')" >正常用户</option><option value="userQuery(' + page + ',8,' + list[l].uid + ')" >限制</option><option value="userQuery(' + page + ',9,' + list[l].uid + ')" >禁止</option></select></td></tr>';
							}
							$("#table_content").append(html + html2);
							$("#div_pageFenYe").html("");
							var pageCount = data.pagecount;
							var pageNow = data.page;
							//console.log(pageNow);
							if (page == 1) {
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="userQuery(1,0,0)"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							} else {
								var numo = pageNow - 1;
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="userQuery(' + numo + ',0,0)"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							}
							var html4 = "";
							for (var i = 1; i <= pageCount; i++) {
								html4 = html4 + '<li> <a href="javascript:void(0);" onclick="userQuery(' + i + ',0,0)">' + i + '</a></li>';
							}
							if (page == pageCount) {
								var html5 = '  <li>  <a href="javascript:void(0);" onclick="userQuery(' + page + ',0,0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							} else {
								var num = pageNow + 1;
								var html5 = ' <li>  <a href="javascript:void(0);" onclick="userQuery(' + num + ',0,0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							}
							$("#div_pageFenYe").append(html3 + html4 + html5);
							//操作的返回信息;
							if (data.message != "" && data.message != null) {
								alert(data.message);
								data.message = "";
							}
						}
					});
				}
				//绑定键盘事件
				$("#keyword").bind('keypress', function(event) {
					$("#div_serchuser").show();
					//得到键盘的种类
					var userkey = document.getElementById("userkey");
					if (userkey.value == "userkey") {
						//13是键盘上面固定的回车键				
						if (event.keyCode == 13) {
							var username = document.getElementById("keyword").value;
							if (username == "" || username == null || username == "搜索内容") {
								userQuery(1, 0, 0);
								return;
							}
							//解决中文问题 编码
							username = encodeURI(encodeURI(username));
							$.ajax({
								url : "selectUserLike.action?username=" + username,
								success : function(data) {
									//console.log(data);
									$("#table_content").html("");
									var html = '<tr> <td class="active">用户编号</td> <td class="success">姓名</td> <td class="warning">上次登录地点</td> <td class="danger">上次登录时间</td> <td class="info">登录总次数</td> <td class="active">权限</td><td class="success">安全问题</td> <td class="warning">操作1</td> <td class="danger">操作2</td> </tr>';
									var list = data.li;
									var html2 = "";
									for (var l = 0; l < list.length; l++) {
										html2 = html2 + '<tr> <td>' + list[l].uid + '</td> <td>' + list[l].username + ' </td> <td>' + list[l].lastip + '</td> <td>' + list[l].lasttime + '</td><td>' + list[l].logintimes + '</td> <td>' + list[l].state + '</td> <td>' + list[l].question + '</td> <td><a href="javascript:void(0);" onclick="userQuery(1,2,' + list[l].uid + ')"  >重置密码</a>(初始密码为123456)</td><td> <a href="javascript:void(0);" onclick="userQuery(1,3,' + list[l].uid + ')">删除</a> /<select name="state" id="state" onchange="user(this.value)"><option value="userQuery(' + 1 + ',4,' + list[l].uid + ')" >修改权限</option> <option value="userQuery(' + 1 + ',5,' + list[l].uid + ')" >管理员</option><option value="userQuery(' + 1 + ',6,' + list[l].uid + ')" >会员</option> <option value="userQuery(' + 1 + ',7,' + list[l].uid + ')" >正常用户</option><option value="userQuery(' + 1 + ',8,' + list[l].uid + ')" >限制</option><option value="userQuery(' + 1 + ',9,' + list[l].uid + ')" >禁止</option></select></td></tr>';
									}
									var likecount = data.likecount;
									$("#table_content").append(html + html2);
									$("#div_pageFenYe").html("");
									//console.log(likecount);
									var html3 = '<nav aria-label="Page navigation"> <ul class="pagination"><li><a href="javascript:void(0);" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a> </li><li> <a href="javascript:void(0);">1(共' + likecount + '条数据)</a></li><li><a href="javascript:void(0);" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li></ul></nav>';
									$("#div_pageFenYe").append(html3);
									//判断是否重置操作
									if (data.message != "" && data.message != null) {
										alert(data.message);
										data.message = "";
									}
								}
							});
						}
					} //种类
					else if (userkey.value == "ttinfokey") {
						//13是键盘上面固定的回车键				
						if (event.keyCode == 13) {
							var title = document.getElementById("keyword").value;
							if (title == "" || title == null || title == "搜索内容") {
								queryTtinfo(1,0,0);
								return;
							}
							//解决中文问题 编码
							title = encodeURI(encodeURI(title));
							$.ajax({	
								url : "likettinfo.action?title=" + title+"&&page=1",
								success : function(data) {
								//console.log(data);
								$("#table_content").html("");
								//var html = '<tr> <td class="active">套图编号</td> <td class="success">套图标题</td> <td class="warning">下载次数</td> <td class="danger">访问次数</td> <td class="info">上传类型</td> <td class="active">上传状态</td><td class="success">上传者</td> <td class="warning">操作1</td> <td class="danger">操作2</td> </tr>';	
								var html = '<tr> <td class="active">套图编号</td> <td class="success">套图标题</td> <td class="warning">下载次数</td> <td class="danger">访问次数</td> <td class="info">上传类型</td> <td class="active">上传状态</td><td class="success">上传者</td> <td class="warning">操作1</td> <td class="danger">操作2</td> </tr>';
							var list=data[1];
							//console.log(list);
							var html2="";							
							for(var l=0;l<list.length;l++){				
							var html2=html2+'<tr> <td>' + list[l].tid + '</td> <td>' + list[l].title + ' </td> <td>' + list[l].downloadtimes + '</td> <td>' + list[l].looktimes + '</td><td>' + list[l].uptype + '</td> <td>' + list[l].state + '</td> <td>' + list[l].username + '</td> <td><a href="javascript:void(0);" onclick="queryOneTtinfo('+list[l].tid +')" >查看</a></td> <td> <a href="javascript:void(0);" onclick="ttinfoupdate(1,'+list[l].tid+',1)"  >修改</a> / <a href="javascript:void(0);" onclick="" >删除</a></td></tr>';																										
							}
							$("#table_content").append(html + html2);
							$("#div_pageFenYe").html("");
							var pageCount=data[0][0].pageCount;
							var pageNow=data[0][0].page;
							//console.log(pageCount);	
							if (pageNow == 1) {
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="queryTtinfo(1,0)"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							} else {
								var numo = pageNow - 1;
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="queryTtinfo(' + numo + ')"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							}
							var html4 = "";
							for (var i = 1; i <= pageCount; i++) {
								html4 = html4 + '<li> <a href="javascript:void(0);" onclick="queryTtinfo(' + i + ',0,0)">' + i + '</a></li>';
							}
							if (pageNow == pageCount) {
								var html5 = '  <li>  <a href="javascript:void(0);" onclick="queryTtinfo(' + pageNow + ',0,0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							} else {
								var num = pageNow + 1;
								var html5 = ' <li>  <a href="javascript:void(0);" onclick="queryTtinfo(' + num + ',0,0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							}
							$("#div_pageFenYe").append(html3 + html4 + html5);
							//操作的返回信息;						
								}//处理ajax返回信息函数
							});
							}//键盘事件结束
					}else if(userkey.value=="messagekey"){
						if (event.keyCode == 13) {
							var title = document.getElementById("keyword").value;
							if (title == "" || title == null || title == "搜索内容") {
								queryMessage(1);
								return;
							}
							//解决中文问题 编码
							title = encodeURI(encodeURI(title));
							$.ajax({	
								url : "querylikemessage.action?mtext=" + title,
								success : function(data) {
									$("#table_content").html("");
							$("#div_pageFenYe").html("");
							var html = '<tr> <td class="active">消息编号</td> <td class="success">消息内容</td> <td class="warning">上传时间</td> <td class="danger">重发消息</td> <td class="info">重发时间</td> <td class="active">发送者</td><td class="success">发送者权限</td> <td class="warning">操作1</td> <td class="danger">操作2</td> </tr>';
							var html2="";
							console.log(data.length)	;						
							for(var l=0;l<data.length;l++){	
							 html2=html2+'<tr> <td>' + data[l].mid + '</td> <td>' + data[l].mtext + ' </td> <td>' + data[l].mtime + '</td> <td>' + data[l].rmtext + '</td><td>' + data[l].rmtime + '</td> <td>' + data[l].username + '</td> <td>' + data[l].state + '</td> <td><a href="javascript:void(0);" onclick="" >查看</a></td> <td> <a href="javascript:void(0);" onclick="queryMessage('+data[l].mid+')" >删除</a></td></tr>';																										
							}
							$("#table_content").append(html + html2);
								}
								});
							
							}
					}
				});
				function user(e) {
					//将字符串 转换为 可执行函数			
					eval(e);
				}
			</script>
			<!-- 套图操作 -->
			<script type="text/javascript">
				function queryTtinfo(page,tid,str){
				clos();
				var title=document.getElementById("title");
		
				var tit=title.value;
						console.log(tit);
					tit = encodeURI(encodeURI(tit));
		
			
				var tag=document.getElementById("tag");
				
				var tg=tag.value;
					tg = encodeURI(encodeURI(tg));
				console.log(tg);
							
					
				//套图管理
					$("#div_serchuser").show();
					//设置键盘事件的种类
					var userKey=document.getElementById("userkey");
					userKey.value="ttinfokey";
					//console.log(document.getElementById("userkey").value);
					$.ajax({
						url: "getttinfo.action?page="+page+"&&tid="+tid+"&&str="+str+"&&title="+tit+"&&tag="+tg,
						success : function(data) {
							//console.log(data);
							$("#table_content").html("");
							var html = '<tr> <td class="active">套图编号</td> <td class="success">套图标题</td> <td class="warning">下载次数</td> <td class="danger">访问次数</td> <td class="info">上传类型</td> <td class="active">上传状态</td><td class="success">上传者</td> <td class="warning">操作1</td> <td class="danger">操作2</td> </tr>';
							var list=data[1];
							//console.log(list);
							var html2="";							
							for(var l=0;l<list.length;l++){				
							var html2=html2+'<tr> <td>' + list[l].tid + '</td> <td>' + list[l].title + ' </td> <td>' + list[l].downloadtimes + '</td> <td>' + list[l].looktimes + '</td><td>' + list[l].uptype + '</td> <td>' + list[l].state + '</td> <td>' + list[l].username + '</td> <td><a href="javascript:void(0);" onclick="queryOneTtinfo('+list[l].tid +')" >查看</a></td> <td> <a href="javascript:void(0);" onclick="ttinfoupdate('+page+','+list[l].tid+',1)" >修改</a> / <a href="javascript:void(0);" onclick="queryTtinfo('+page+','+list[l].tid+',0 )" >删除</a></td></tr>';																										
							}
							$("#table_content").append(html + html2);
							$("#div_pageFenYe").html("");
							var pageCount=data[0][0].pageCount;
							var pageNow=data[0][0].page;
							//console.log(pageCount);	
							if (page == 1) {
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="queryTtinfo(1,0,0)"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							} else {
								var numo = pageNow - 1;
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="queryTtinfo(' + numo + ',0,0)"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							}
							var html4 = "";
							for (var i = 1; i <= pageCount; i++) {
								html4 = html4 + '<li> <a href="javascript:void(0);" onclick="queryTtinfo(' + i + ',0,0)">' + i + '</a></li>';
							}
							if (page == pageCount) {
								var html5 = '  <li>  <a href="javascript:void(0);" onclick="queryTtinfo(' + page + ',0,0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							} else {
								var num = pageNow + 1;
								var html5 = ' <li>  <a href="javascript:void(0);" onclick="queryTtinfo(' + num + ',0,0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							}
							$("#div_pageFenYe").append(html3 + html4 + html5);
							//操作的返回信息;
							var message =data[0][0].message;
							//console.log(message);
							if (message != "" && message != null) {
										alert(message);
										data[0][0].message = "";
									}
						}
					});
				}
				//查看套图信息
				function queryOneTtinfo(tid){
				$("#div_serchuser").hide();
					$.ajax({
						url: "queryOneTtinfo.action?tid="+tid,
						success : function(data) {
							//console.log(data);
							$("#div_pageFenYe").html("");
							$("#table_content").html("");
							var html='<tr> <td class="active" colspan="4" align="center" >套图</td></tr>';
							var html2='<tr> <td colspan="2">'+data[0][0].title+'</td><td colspan="2" align="center">'+data[0][0].uptime+'</td></tr>'
							var html3="<tr>";
							var html4="<tr>";
							var list=data[0];
							//console.log(list);						
							for(var l=0;l<4;l++){					
							var html3=html3+' <td ><img src='+list[l].src+' alt='+list[l].alt+' style="width: 180px;height: 170px; "/></td> ';																																								
							}
							html3=html3+"</tr>";
							if(list.length>8){
							for(var l=4;l<8;l++){					
							var html4=html4+' <td><img src='+list[l].src+' alt='+list[l].alt+' style="width: 180px;height: 170px;"/></td>';	
																																														
							}
							html4=html4+" </tr>";
							html4=html4+" <tr>";	
							for(var l=8;l<list.length;l++){					
							var html4=html4+' <td><img src='+list[l].src+' alt='+list[l].alt+' style="width: 180px;height: 170px;"/></td>';																																								
							}
							html4=html4+" </tr>";	
							}else{
								for(var l=4;l<list.length;l++){					
								var html4=html4+' <td><img src='+list[l].src+' alt='+list[l].alt+' style="width: 180px;height: 170px;"/></td>';																																															
							}
							html4=html4+" </tr>";
							}							
							var html5='<tr> <td class="active" colspan="4" align="center" >套图信息</td>';
							var html6='<tr> <td class="active">套图编号</td> <td class="success">说明</td><td class="warning">上传状态</td>  <td class="info">上传者</td>  </tr>';
							var html7='<tr><td>'+data[0][0].tid+'</td><td>'+data[0][0].title+'</td><td>'+data[0][0].state+'</td><td>'+data[0][0].username+'</td></tr>';
							var html8='<tr><td colspan="4" align="center" ><a href="javascript:void(0);" onclick="queryTtinfo(1,0,0)">返回</a></td></tr>';
							$("#table_content").append(html+html2+html3+html4+html5+html6+html7+html8);
						}
						});
				}
				
				//修改套图 
				function ttinfoupdate(page,title,str){
						$(".xg").html("");
						//可看高度
						var shei=$(window).height();
						//可看宽度
						var swi=$(window).width();
						//实际div高
						var sc=$(".xg").height()+80;
						//实际div 宽
						var sw=$(".xg").width()+140;
						//	alert(sw)
						//设置宽高
						$(".xg").css("top",(shei-sc)/2);
						$(".xg").css("left",(swi-sw)/2);
						var html1='<h3 > 编号:'+title+'</h3><br/>'+'标题:<input type="text" class="form-control" style="width:280px;border-radius: 20px;" id="title"/><br/> ';
						var html2='tag:<input type="text" class="form-control" style="width:280px;border-radius: 20px;" id="tag"/><br/>';
						
						var html3='<a  href="javascript:void(0);" onclick="queryTtinfo('+page+','+title+','+str+')">修改</a>';
						$(".xg").append(html1+html2+html3);
							$(".msk").show();
						$(".close").show();	
						$(".xg").fadeIn();	
				}
				//修改成功与否
			</script>
			<!-- 消息操作 -->
			<script type="text/javascript">
			//消息管理
			function queryMessage(page,mid){
			$("#div_serchuser").show();
			//设置查询输入框
				var userKey=document.getElementById("userkey");
				userKey.value="messagekey";
			
			console.log(userKey.value);
			if (mid !=0) {
						if (confirm("确定删除?")) {
						} else {
							return;
						}
					}
					$.ajax(
					{
						url: "querymessage.action?page="+page+"&&mid="+mid,
						success : function(data) {
						console.log(data);
							$("#table_content").html("");
							$("#div_pageFenYe").html("");
							var html = '<tr> <td class="active">消息编号</td> <td class="success">消息内容</td> <td class="warning">上传时间</td> <td class="danger">重发消息</td> <td class="info">重发时间</td> <td class="active">发送者</td><td class="success">发送者权限</td> <td class="warning">操作1</td> <td class="danger">操作2</td> </tr>';
							var html2="";
							console.log(data.length)	;						
							for(var l=2;l<data.length;l++){	
							 html2=html2+'<tr> <td>' + data[l].mid + '</td> <td>' + data[l].mtext + ' </td> <td>' + data[l].mtime + '</td> <td>' + data[l].rmtext + '</td><td>' + data[l].rmtime + '</td> <td>' + data[l].username + '</td> <td>' + data[l].state + '</td> <td><a href="javascript:void(0);" onclick="" >查看</a></td> <td> <a href="javascript:void(0);" onclick="queryMessage('+page+','+data[l].mid+')" >删除</a></td></tr>';																										
							}
							$("#table_content").append(html + html2);
							//分页
							var m=data[0];
							console.log(m);
								$("#div_pageFenYe").html("");
							var pageCount = m.pageCount;
							var pageNow = m.page;
							if (page == 1) {
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="queryMessage(1,0)"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							} else {
								var numo = pageNow - 1;
								var html3 = '<nav aria-label="Page navigation"> <ul class="pagination">  <li>  <a href="javascript:void(0);" onclick="queryMessage(' + numo + ',0)"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
							}
							var html4 = "";
							for (var i = 1; i <= pageCount; i++) {
								html4 = html4 + '<li> <a href="javascript:void(0);" onclick="queryMessage(' + i + ',0)">' + i + '</a></li>';
							}
							if (page == pageCount) {
								var html5 = '  <li>  <a href="javascript:void(0);" onclick="queryMessage(' + page + ',0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							} else {
								var num = pageNow + 1;
								var html5 = ' <li>  <a href="javascript:void(0);" onclick="queryMessage(' + num + ',0)"  aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
							}
							var message=data[1].message ;
							$("#div_pageFenYe").append(html3+html4+html5);
								if (message != "" && message != null) {
										alert(message);
										data[1].message = "";
										}
						}
					}
					);
			}
			</script>
</body>

</html>
