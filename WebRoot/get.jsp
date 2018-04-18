<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'get.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery.js"></script>
	<script type="text/javascript">
		
		function onc(){
			$("#sss").html("");
			$.ajax({url:"${pageContext.request.contextPath}/ajaximgs.action?page=1",
				success:function(data){
					for(var i in data){
						var html="<img width='24%' height='260px' style='margin-left: 2px;margin-top:5px; border: 1px solid;' src='"+data[i].src+"' alt='"+data[i].alt+"'>";
						$("#sss").append(html);
						console.log(html);
					}
				}
			}
			);
			
			
		}
	</script>

  </head>
  
  <body>
    <form action="ttimgsbykey.action" method="post">
    	<input type="text" name="page">
    	<input type="text" name="key">
    	<input type="submit" value="huoqu">
    </form>
    <button onclick="onc()">Huoqu</button>
    <div id="sss" style="width: 1200px;margin-left: auto;margin-right: auto;"></div>
  </body>
</html>
