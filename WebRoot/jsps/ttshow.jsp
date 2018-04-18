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
    
    <title>斗图帮-系列图详细展示</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/yl.css" />
	</head>

	<body style="background:#eee;">
	<jsp:include page="head2.jsp"></jsp:include>

		<div class="container" style="margin-top: 60px;">
			<div class="row" id="content" style="background:#fff;">
				<c:forEach var="imgb" items="${list }">
					<a onclick="copy(this)" class="col-xs-4 col-md-3 cntA">
						<span><img class="img-responsive" style="position: absolute;width: 100%;border: solid 1px #fff;" src="imgs/loading.gif" data-original="${imgb.src }" alt="${imgb.alt }"></span>
						<div class="cntBack"></div>
						<div class="cntText1"><span class="glyphicon glyphicon-copy text-center copyicon" style="font-size: 40px;"></span></div>
						<div class="cntText2"><span class="text-center copytext">点击复制</span></div>
					</a>
				</c:forEach>
				
			</div>
		</div>
	<jsp:include page="bottom.jsp"></jsp:include>
		<script type="text/javascript">
		var contextPath="${pageContext.request.contextPath}";
		window.onload=function(){
			$("img").lazyload({effect: "fadeIn"});
			new Clipboard('.cntA', {
			    target: function(trigger) {
					   var childArr=trigger.children;
					    for(var i=0,len=childArr.length;i<len;i++){
					        if(childArr[i].nodeName=='SPAN'){
					            return childArr[i];
					        }
					    }
			    }
			});
		}
		
		
	</script>
		<script type="text/javascript" charset="utf-8">
		  $(function() {
		  	
		    var wid=document.documentElement.clientWidth;
			if(wid<991){
				$(".cntBack").remove();
				$(".cntText1").remove();
				$(".cntText2").remove();
				//$(".cntA").removeChild($(".cntBack"));//.remove($(".cntText1")).remove($(".cntText2"));console.log("移除");
				console.log("移除");
			}
		  });
		</script>
		<script>
			var one=true;
			window.onresize = function(){
				var wid=document.documentElement.clientWidth;
				if(wid<991 && one){
					$(".cntBack").remove();
					$(".cntText1").remove();
					$(".cntText2").remove();
					//$(".cntA").removeChild($(".cntBack"));//.remove($(".cntText1")).remove($(".cntText2"));console.log("移除");
					console.log("移除");
					one=false;
				}
				if(wid>991 && !one){
					var htm='<div class="cntBack"></div><div class="cntText1"><span class="glyphicon glyphicon-copy text-center copyicon" style="font-size: 40px;"></span></div><div class="cntText2"><span class="text-center copytext">点击复制</span></div>';
					$(".cntA").append(htm);one=true;
					console.log("加入");
				}
			}
		</script>
	</body>

</html>
