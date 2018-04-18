<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'all' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/jquery.js"></script>
	<style>
		.selected{
			color:#0f0;
			background: #00eaea;
		}
		ul,li,ol{
			list-style:none;
		}
		ul li{
			float:left;
			width: 40px;
			height: 40px;
			background: #eaeaea;
			margin-left: 5px;
		}
		ul li a{
			display:inline-block;
			width:40px;
			line-height: 40px;
			text-align: center;
			text-decoration: none;
		}
	</style>
  </head>
  
  <body>
  	<div style="width: 300px;height:50px;margin-bottom: 20px;margin-top: 20px;margin-left: auto;margin-right: auto;">
		<input type="text" name="key" id="keyword">
		<button onclick="search()">搜索</button>
	</div>
	<div style="width: 1200px;height:50px;margin-left: auto;margin-right: auto;margin-top: 20px;margin-bottom: 20px;">
		<ul id="pageul"></ul>
	</div>
	<div id="content" style="width: 1200px;margin-left: auto;margin-right: auto;">
		<div style="margin-top: 20px;"><div><span>jieawngyingji戒网瘾</span></div><hr><div>
				<img width="24%" height="260px" style="margin-left: 2px;margin-top:5px; border: 1px solid;" src="http://img.doutula.com/production/uploads/image//2017/08/26/20170826745239_ROeDSN.jpg" alt="你有网瘾！">
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		var pageul=document.getElementById("pageul");
		//var pageMax=${pageMax};/*第一次载入时获得页码上限*/
		var pageMax=100;
		var page=1;
		var contextPath="${pageContext.request.contextPath}";
		
		function onc(p){
			$("#content").html("");
			$.ajax({url:contextPath+"/ajaxttimgs.action?page="+p,
				success:function(data){
					for(var i in data){
						var html='<div style="margin-top: 20px;"><div><span>'+data[i].title+'</span></div><hr><div>';
						var html2="";
						if(data[i].ttimgs.length<4){
							for(var j=0;j<data[i].ttimgs.length;j++){
								html2=html2+"<img width='24%' height='260px' style='margin-left: 2px;margin-top:5px; border: 1px solid;' src='"+data[i].ttimgs[j].src+"' alt='"+data[i].ttimgs[j].alt+"'>"
							}
						}else{
							for(var j=0;j<4;j++){
								html2=html2+"<img width='24%' height='260px' style='margin-left: 2px;margin-top:5px; border: 1px solid;' src='"+data[i].ttimgs[j].src+"' alt='"+data[i].ttimgs[j].alt+"'>"
							}
						}
						$("#content").append(html+html2+"</div>");
					}
					page=p;
					showPage();
				}
			});
			
		}
		window.onload=function(){
			$("#content").html("");
			$.ajax({url:contextPath+"/ajaxttimgs.action?page=1",
				success:function(data){
					for(var i in data){
						var html='<div style="margin-top: 20px;"><div><span>'+data[i].title+'</span></div><hr><div>';
						var html2="";
						if(data[i].ttimgs.length<4){
							for(var j=0;j<data[i].ttimgs.length;j++){
								html2=html2+"<img width='24%' height='260px' style='margin-left: 2px;margin-top:5px; border: 1px solid;' src='"+data[i].ttimgs[j].src+"' alt='"+data[i].ttimgs[j].alt+"'>"
							}
						}else{
							for(var j=0;j<4;j++){
								html2=html2+"<img width='24%' height='260px' style='margin-left: 2px;margin-top:5px; border: 1px solid;' src='"+data[i].ttimgs[j].src+"' alt='"+data[i].ttimgs[j].alt+"'>"
							}
						}
						$("#content").append(html+html2+"</div>");
					}
				}
			}
			);
			showPage();
		}
		
		function search(){
			var keyword=$("#keyword").val();
			window.open("imgsbykey.action?page=1&key="+keyword); 
		}
		
		function showPage(){
			$("#pageul").html("");
			if(pageMax<12){
				typeFour()
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
			for(var i=1;i<page;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaxttimgs.action?page="+page,page,"selected");
			
			for(var i=page+1;i<9;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","");
			var n=pageMax-1;
			createPageLi("/ajaxttimgs.action?page="+n,n,"");
			createPageLi("/ajaxttimgs.action?page="+pageMax,pageMax,"");
		}
		
		function typeTwo(){
			for(var i=1;i<3;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","");
		
			for(var i=page-2;i<page;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaxttimgs.action?page="+page,page,"selected");
			
			for(var i=page+1;i<page+3;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","");
			var n=pageMax-1;
			createPageLi("/ajaxttimgs.action?page="+n,n,"");
			createPageLi("/ajaxttimgs.action?page="+pageMax,pageMax,"");
		}
		
		function typeThree(){
			for(var i=1;i<3;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
			createPageLi("javascript:void(0);","...","");
		
			for(var i=pageMax-7;i<page;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
		
			createPageLi("/ajaxttimgs.action?page="+page,page,"selected");
			
			for(var i=page+1;i<pageMax+1;i++){
				createPageLi("/ajaxttimgs.action?page="+i,i,"");
			}
		}
		
		function typeFour(){
			for(var i=1;i<pageMax+1;i++){
				if(i==page){
					createPageLi("/ajaxttimgs.action?page="+i,i,"selected");
				}else{
					createPageLi("/ajaxttimgs.action?page="+i,i,"");
				}
				
			}
		}
		
		function createPageLi(aHref,aHtml,className){
			var li=document.createElement("li");
			var a=document.createElement("a");
			a.href="javascript:void(0);";
			a.setAttribute("onclick", "onc("+aHtml+")");
			a.innerHTML=aHtml+"";
			a.className=className;
			li.appendChild(a);
			pageul.appendChild(li);
		}
	</script>
  </body>
</html>
