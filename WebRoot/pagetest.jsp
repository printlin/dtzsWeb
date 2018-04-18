<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pagetest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/yl.css" />
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script src="js/jquery.lazyload.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/clipboard.min.js"></script>  
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
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
    <script type="text/javascript">
    
    function page(element,maxPage,url){
    	this.element=element;
    	this.maxPage=maxPage;
    	this.url=url;
    	function showPage(){
			element.html("");
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
				element.append('<li class="disabled"><a href="javascript:void(0);" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}else{
				var yy=page-1;
				element.append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}
			for(var i=1;i<page;i++){
				createPageLi(url+"?page="+i,i,"");
			}
		
			createPageLi(url+"?page="+page,page,"active");
			
			for(var i=page+1;i<9;i++){
				createPageLi(url+"?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
			var n=pageMax-1;
			createPageLi(url+"?page="+n,n,"");
			createPageLi(url+"?page="+pageMax,pageMax,"");
			var xx=page+1;
			element.append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
		}
		
		function typeTwo(){
			var yy=page-1;
			element.append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			for(var i=1;i<3;i++){
				createPageLi(url+"?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
		
			for(var i=page-2;i<page;i++){
				createPageLi(url+"?page="+i,i,"");
			}
		
			createPageLi(url+"?page="+page,page,"active");
			
			for(var i=page+1;i<page+3;i++){
				createPageLi(url+"?page="+i,i,"");
			}
			
			createPageLi("javascript:void(0);","...","disabled");
			var n=pageMax-1;
			createPageLi(url+"?page="+n,n,"");
			createPageLi(url+"?page="+pageMax,pageMax,"");
			var xx=page+1;
			element.append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
		}
		
		function typeThree(){
			var yy=page-1;
			element.append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			for(var i=1;i<3;i++){
				createPageLi(url+"?page="+i,i,"");
			}
			createPageLi("javascript:void(0);","...","disabled");
		
			for(var i=pageMax-7;i<page;i++){
				createPageLi(url+"?page="+i,i,"");
			}
		
			createPageLi(url+"?page="+page,page,"active");
			
			for(var i=page+1;i<pageMax+1;i++){
				createPageLi(url+"?page="+i,i,"");
			}
			if(page==pageMax){
				element.append('<li class="disabled"><a href="javascript:void(0);" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
				
			}else{
				var xx=page+1;
				element.append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
			}
		}
		
		function typeFour(){
			if(page==1){
				element.append('<li class="disabled"><a href="javascript:void(0);" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}else{
				var yy=page-1;
				element.append('<li><a href="javascript:void(0);" onclick="onc('+yy+')" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			}
			for(var i=1;i<pageMax+1;i++){
				if(i==page){
					createPageLi(url+"?page="+i,i,"active");
				}else{
					createPageLi(url+"?page="+i,i,"");
				}
			}
			if(page==pageMax){
				element.append('<li class="disabled"><a href="javascript:void(0);" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
			}else{
				var xx=page+1;
				element.append('<li><a href="javascript:void(0);" onclick="onc('+xx+')" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>');
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
    }
    	var pagew=new page($("#pageul",10,"/ajaximgs.action"));
    pagew.showPage();
    </script>
  </body>
</html>
