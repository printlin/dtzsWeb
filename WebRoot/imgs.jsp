<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>斗图帮-最新图片列表</title>
		<meta name=”renderer” content=”webkit”>
		<meta http-equiv=”X-UA-Compatible” content=”IE=Edge,chrome=1″ >
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/yl.css" />

	</head>

	<body>

	<jsp:include page="head.jsp"></jsp:include>
		<div class="container" style="margin-top: 60px;">
			<div class="row" id="content">
				
			</div>
			<div class="row">
				<div class="col-xs-12">
					<nav aria-label="Page navigation">
						<div class="text-center">
						<ul class="pagination pagination-lg" id="pageul">
						</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	<jsp:include page="bottom.jsp"></jsp:include>

		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script src="js/jquery.lazyload.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/clipboard.min.js"></script>  
		<script type="text/javascript">
		var pageul=document.getElementById("pageul");
		var pageMax=${pageMax};/*第一次载入时获得页码上限*/
		var page=1;
		var contextPath="${pageContext.request.contextPath}";
		function onc(p){
			$("#content").html("");
			$.ajax({url:contextPath+"/ajaximgs.action?page="+p,
				success:function(data){
					for(var i in data){
						var html='<a class="col-xs-4 col-md-3 cntA"><span><img class="img-responsive" style="position: absolute;width: 100%;" src="imgs/loading.gif" data-original="'+data[i].src+'" alt="'+data[i].alt+'"></span><div class="cntBack"></div><div class="cntText1"><span class="glyphicon glyphicon-copy text-center copyicon" style="font-size: 40px;"></span></div><div class="cntText2"><span class="text-center copytext">点击复制</span></div></a>';
						$("#content").append(html);
						console.log(html);
					}
					$("img").lazyload({effect: "fadeIn"});
					page=p;
					showPage();
				}
			});
			
		}
		window.onload=function(){
			$("#content").html("");
			$.ajax({url:contextPath+"/ajaximgs.action?page=1",
				success:function(data){
					for(var i in data){
						var html='<a class="col-xs-4 col-md-3 cntA"><span><img class="img-responsive" style="position: absolute;width: 100%;" src="imgs/loading.gif" data-original="'+data[i].src+'" alt="'+data[i].alt+'"></span><div class="cntBack"></div><div class="cntText1"><span class="glyphicon glyphicon-copy text-center copyicon" style="font-size: 40px;"></span></div><div class="cntText2"><span class="text-center copytext">点击复制</span></div></a>';
						$("#content").append(html);
					}
					$("img").lazyload({effect: "fadeIn"});
				}
			}
			);
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
			showPage();
		}

		
		function showPage(){
			$("#pageul").html("");
			if(pageMax<12){
				typeFour();
			}else{
				if(page<7){
					typeOne();
				}else if(page>(pageMax-7)){
					typeThree();
				}else{
					typeTwo();
				}
			}
		}
		
		
		
		function typeOne(){
			if(page==1){
				$("#pageul").append('<li class="disabled"><a href="javascript:void(0);" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}else{
				var yy=page-1;
				$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}
			for(var i=1;i<page;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaximgs.action?page="+page,page,"active");
			
			for(var i=page+1;i<9;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
			var n=pageMax-1;
			createPageLi("/ajaximgs.action?page="+n,n,"");
			createPageLi("/ajaximgs.action?page="+pageMax,pageMax,"");
			var xx=page+1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
		}
		
		function typeTwo(){
			var yy=page-1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			for(var i=1;i<3;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
		
			for(var i=page-2;i<page;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaximgs.action?page="+page,page,"active");
			
			for(var i=page+1;i<page+3;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
			var n=pageMax-1;
			createPageLi("/ajaximgs.action?page="+n,n,"");
			createPageLi("/ajaximgs.action?page="+pageMax,pageMax,"");
			var xx=page+1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
		}
		
		function typeThree(){
			var yy=page-1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			for(var i=1;i<3;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
			createPageLi("javascript:void(0);","...","disabled");
		
			for(var i=pageMax-7;i<page;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaximgs.action?page="+page,page,"active");
			
			for(var i=page+1;i<pageMax+1;i++){
				createPageLi("/ajaximgs.action?page="+i,i,"");
			}
			if(page==pageMax){
				$("#pageul").append('<li class="disabled"><a href="javascript:void(0);" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
				
			}else{
				var xx=page+1;
				$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
			}
		}
		
		function typeFour(){
			if(page==1){
				$("#pageul").append('<li class="disabled"><a href="javascript:void(0);" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}else{
				var yy=page-1;
				$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}
			for(var i=1;i<pageMax+1;i++){
				if(i==page){
					createPageLi("/ajaximgs.action?page="+i,i,"active");
				}else{
					createPageLi("/ajaximgs.action?page="+i,i,"");
				}
			}
			if(page==pageMax){
				$("#pageul").append('<li class="disabled"><a href="javascript:void(0);" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
			}else{
				var xx=page+1;
				$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
			}
		}
		
		function createPageLi(aHref,aHtml,className){
			var li=document.createElement("li");
			var a=document.createElement("a");
			a.href="javascript:void(0);";
			a.setAttribute("onclick", "onc("+aHtml+")");
			a.innerHTML=aHtml+"";
			li.className=className;
			li.appendChild(a);
			pageul.appendChild(li);
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
