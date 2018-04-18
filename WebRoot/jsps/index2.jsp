<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎访问斗图帮</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/yl.css" />
	</head>

	<body style="background:#eee;">
	<jsp:include page="head2.jsp"></jsp:include>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" data-toggle="collapse" data-target="#collapseNav1">
					<!--navbar-toggle  当导航栏缩小到不能显示时  本元素替换navbar-collapse指定的内容显示-->
					<!--data-toggle指以什么事件触发    data-target指事件的目标   一起使用就是代表data-target所指的元素以data-toggle指定的形式显示-->
						<span class="icon-bar"></span><!--三条线  字体图片-->
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href=""><strong>YangLin</strong>.com</a>
					<!--navbar-brand  导航栏图标-->
				</div>
				<div class="collapse navbar-collapse" id="collapseNav1">
					<!--欲折叠的部分   id方便找到这个欲折叠部分-->
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">首页</a>
						</li>
						<li>
							<a href="#">简介</a>
						</li>
						<li>
							<a href="#">联系我们</a>
						</li>
					</ul>
					<form action="" method="post" class="navbar-form navbar-right yl-nav-form">
						<input type="text" class="form-control yl-nav-input" placeholder="请输入搜索内容" />
						<button type="submit" class="yl-nav-button">
							<span class="glyphicon glyphicon-search"></span><!--搜索图标-->
						</button>
					</form>
				</div>
			</div>
		</nav>
	<jsp:include page="bottom.jsp"></jsp:include>
	<jsp:include page="totop.jsp"></jsp:include>
	</body>

</html>
