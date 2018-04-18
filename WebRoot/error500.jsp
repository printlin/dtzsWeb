<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>斗图帮-500错误</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
		.clear{
			clear:both;
			height:0;
			font-size:0;
			line-height:0;
			overflow:hidden;
		}
		.content{
			width: 95%;
			margin-left: auto;
			margin-right: auto;
			margin-top: 50px;
			margin-bottom: 50px;
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
		.textAll{
			width:100%;
		}
		.text0{
			margin-top:20px;
			font-size: 80px;
			color:#df3e3e;
			text-align: center;
		}
		.text1{
			margin-top:20px;
			font-size: 25px;
			color:#616b6f;
			text-align: center;
		}
		.buttonAll{
			margin-top:10px;
			width:100%;
			text-align: center;
		}
		.returnI{
			display:inline-block;
			width: 130px;
			height: 50px;
			text-align:center;
			line-height: 50px;
			color: #ffffff;
			background-color: #e7691e;
			margin-top: 10px;
			box-shadow: 2px 2px 3px #e0e0e0;
		}
		.returnI:HOVER {
			background-color: #f5b50a;
			box-shadow: 2px 2px 3px #bfbfbf;
		}
	</style>
  </head>
  
  <body>
  	<div class="content">
  		<img class="img1" src="${pageContext.request.contextPath}/imgs/error/500.jpg" width="400px" height="380px"/>
  		<div class="textAll">
  			<h1 class="text0">500</h1>
  			<h2 class="text1">系统内部错误,程序员正在抢修中...</h2>
  			<div class="buttonAll">
  				<a class="returnI" href="${pageContext.request.contextPath }/index.action">返回首页</a>
  			</div>
  		</div>
  		<div class="clear"></div>
  	</div>
  	<div class="error">
  		message:<%=exception==null?"":exception.getMessage()%><br>
  		LocalizedMessage:<%=exception==null?"":exception.getLocalizedMessage()%><br>
  	</div>
  	<jsp:include page="bottom.jsp"></jsp:include>
  	
  </body>
</html>
