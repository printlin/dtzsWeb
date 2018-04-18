<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>斗图帮-系列图-套路图</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/yl.css" />
	</head>

	<body  style="background:#eee;">
		<jsp:include page="head2.jsp"></jsp:include>
		<div id="content" class="container" style="margin-top: 60px;">
		</div>
	<jsp:include page="bottom.jsp"></jsp:include>
		<jsp:include page="totop.jsp"></jsp:include>
		<script type="text/javascript">
		var pageul;
		var pageMax=${pageMax};/*第一次载入时获得页码上限*/
		var page=1;
		var contextPath="${pageContext.request.contextPath}";
		function onc(p){
			$("#content").html("");
			$.ajax({url:contextPath+"/ajaxttimgs.action?page="+p,
				success:function(data){
					for(var i in data){
						var ttb=data[i];
						var time=ftime(ttb[0].uptime);
						var html='<div class="row" style="background:#fff;margin-top: 30px;border:1px solid #ddd;border-radius:20px;padding:4px;"><h3><span class="glyphicon glyphicon-link" ></span> <a href="'
							+contextPath+'/jumptt.action?ttId='+ttb[0].tid+'"  target="_blank" class="tttitle">'+ttb[0].title+'</span><span class="tttime">'
							+time+'</span></h3><hr/>';
						var html2="";
						for(var j=0;j<ttb.length;j++){
							html2=html2+'<a class="col-xs-3 cntA"><span><img class="img-responsive" src="imgs/loading.gif" data-original="'
								+ttb[j].src+'" alt="'+ttb[j].alt+'"></span><div class="cntBack"></div><div class="cntText1"><span class="glyphicon glyphicon-copy text-center copyicon" style="font-size: 40px;"></span></div><div class="cntText2"><span class="text-center copytext">点击复制</span></div>';
						}
						$("#content").append(html+html2+"</div>");
					}
					$("img").lazyload({effect: "fadeIn"});
					page=p;
					$("#content").append('<div class="row"><div class="col-xs-12"><nav aria-label="Page navigation"><div class="text-center"><ul class="pagination pagination-lg" id="pageul"></ul></div></nav></div></div>');
					pageul=document.getElementById("pageul");
					showPage();
				}
			});
			
		}
		function ftime(time){
			if(time!=null){
				var d=new Date(parseInt(time));
				var y=d.getFullYear();
				var m=d.getMonth()+1;
				return y+"-"+m+"-"+d.getDate();
			}else{
				return "";
			}
		}
		window.onload=function(){
			$("#content").html("");
			$.ajax({url:contextPath+"/ajaxttimgs.action?page=1",
				success:function(data){
					for(var i in data){
						var ttb=data[i];
						var t=ftime(ttb[0].uptime);
						
						var html='<div class="row" style="background:#fff;margin-top: 30px;border:1px solid #ddd;border-radius:20px;padding:4px;"><h3><span class="glyphicon glyphicon-link" ></span> <a href="'
							+contextPath+'/jumptt.action?ttId='+ttb[0].tid+'"  target="_blank" class="tttitle">'+ttb[0].title+'</span><span class="tttime">'
							+t+'</span></h3><hr/>';
						var html2="";
						for(var j=0;j<ttb.length;j++){
							html2=html2+'<a class="col-xs-3 cntA"><span><img class="img-responsive" src="imgs/loading.gif" data-original="'
								+ttb[j].src+'" alt="'+ttb[j].alt+'"></span><div class="cntBack"></div><div class="cntText1"><span class="glyphicon glyphicon-copy text-center copyicon" style="font-size: 40px;"></span></div><div class="cntText2"><span class="text-center copytext">点击复制</span></div>';
						}
						$("#content").append(html+html2+"</div>");
					}
					$("img").lazyload({effect: "fadeIn"});
					$("#content").append('<div class="row"><div class="col-xs-12"><nav aria-label="Page navigation"><div class="text-center"><ul class="pagination pagination-lg" id="pageul"></ul></div></nav></div></div>');
					pageul=document.getElementById("pageul");
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
			}
			);
			
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
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaxttimgs.action?page="+page,page,"active");
			
			for(var i=page+1;i<9;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
			var n=pageMax-1;
			createPageLi("/ajaxttimgs.action?page="+n,n,"");
			createPageLi("/ajaxttimgs.action?page="+pageMax,pageMax,"");
			var xx=page+1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
		}
		
		function typeTwo(){
			var yy=page-1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			for(var i=1;i<3;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
		
			for(var i=page-2;i<page;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaxttimgs.action?page="+page,page,"active");
			
			for(var i=page+1;i<page+3;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
			var n=pageMax-1;
			createPageLi("/ajaxttimgs.action?page="+n,n,"");
			createPageLi("/ajaxttimgs.action?page="+pageMax,pageMax,"");
			var xx=page+1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
		}
		
		function typeThree(){
			var yy=page-1;
			$("#pageul").append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			for(var i=1;i<3;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			createPageLi("javascript:void(0);","...","disabled");
		
			for(var i=pageMax-7;i<page;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaxttimgs.action?page="+page,page,"active");
			
			for(var i=page+1;i<pageMax+1;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
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
					createPageLi("/ajaxttimgs.action?page="+i,i,"active");
				}else{
					createPageLi("/ajaxttimgs.action?page="+i,i,"");
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
