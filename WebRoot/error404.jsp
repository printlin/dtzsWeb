<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>斗图帮-404错误</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" type="image/x-icon" href="images/static/title_logo_03.png" media="screen" /> 
	
	<style type="text/css">
		.clear{
			clear:both;
			height:0;
			font-size:0;
			line-height:0;
			overflow:hidden;
		}
		.content{
			width: 100%;
			margin-left: auto;
			margin-right: auto;
			margin-bottom: 180px;
		}
		.img1{
			display:block;
			width:100%;
			height:auto;
			max-width:500px;
			max-height:400px;
			margin-left: auto;
			margin-right: auto;
		}
		.buttonAll{
			margin-top:0px;
			width:100%;
			text-align: center;
			top:500px;
		}
		.returnI{
			display:inline-block;
			width: 130px;
			height: 50px;
			text-align:center;
			line-height: 50px;
			color: #ffffff;
			background-color: #4d4949;
			margin-top: 30px;
			box-shadow: 2px 2px 3px #e0e0e0;
		}
		.returnI:HOVER {
			background-color: #999191;
			box-shadow: 2px 2px 3px #d1feba;
			color: #000;
		}
	</style>
  </head>
  
  <body>
  	<div class="content">
  		<img class="img1" src="${pageContext.request.contextPath}/imgs/error/error404.jpg" width="1200px" height="600px"/>
  		<div class="textAll">
  			<div class="buttonAll">
  				<a class="returnI" href="${pageContext.request.contextPath }/index.action">返回首页</a>
  			</div>
  		</div>
  		<div class="clear"></div>
  	</div>
  	<jsp:include page="bottom.jsp"></jsp:include>
  	
  </body>
</html>
