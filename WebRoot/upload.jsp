<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>斗图帮-文件上传</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/yl.css" />
	<script src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/layer.js"></script>
	
	<!-- 文件上传插件 -->
	
	<link rel="stylesheet" href="uploadJs/fileUpload.css" type="text/css">
	<!-- 引用核心层插件 -->
	<script type="text/javascript" src="uploadJs/fileUpload.js"></script>

  </head>
  
  <body>
  	<jsp:include page="head.jsp"></jsp:include>
  	
	<div class="container" style="margin-top: 60px;">
		
		<div class="row">
			<div class="login form">
				<div class="group">
					<div class="group-con tel">
						<input type="text" name="title" id="title" class="con" placeholder="请输入标题" required>
					</div>
					<div class="group-con password">
						<input type="text" name="tag" id="tag" class="con" placeholder="请输入描述" required>
					</div>
					<!-- 验证码 -->
					<div class="group-con verify">
						<input type="text" name="chackCode" id="imgchackCode" class="chackCode" placeholder="请输入验证码" required>
						<img id="imgchackImg" class="chackImg" src="chackcode.action">
					</div>
					<!-- 验证码 end -->
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 20px;">
			<div id="fileUploadContent" class="fileUploadContent"></div>
		</div>
		<div class="row">
			<div class="button">
				<button type="button" class="login-btn register-btn button_s" id="imgbutton" value="提交">提交</button>
			</div>
		</div>
	</div>
  	<jsp:include page="bottom.jsp"></jsp:include>
	    
	    
	    <script type="text/javascript">
	    	var uploadImgs="";
	    	$("#imgchackImg").click(function(){
				var time=new Date();
				$("#imgchackImg").attr("src","chackcode.action?flag="+time.getTime());
			});
			$("#imgbutton").click(function(){
				console.log(uploadImgs);
				/*var imgs="[";
				for(var i=0;i<uploadImgs.length;i++){
					imgs=imgs+uploadImgs[i]+",";
				}
				imgs=imgs.substring(0,imgs.lastIndexOf(","));
				imgs=imgs+"]";
				console.log(imgs);*/
				$.post("upload.action",
			    	{
			    		title:$("#title").val(),
			    		tag:$("#tag").val(),
			    		chackcode:$("#imgchackCode").val(),
			    		imgs:uploadImgs
			    	},
			    	function(data,status){
				    	if(data.indexOf("成功")>-1){
				    		layer.msg('成功', {icon: 1});
				    	}else if(data.indexOf("未登录")>-1){
				    		$("#modal_login").modal('show');
				    	}else{
				    		layer.msg(data, {icon: 1});
				    	}
			    		/*if(status==200){
				    		layer.confirm('上传成功', {icon: 1},{
							  btn: ['继续上传','返回'] //按钮
							}, function(){
							  location.reload();
							}, function(){
							  window.location.href="index.action";
							});
				    	}*/
			    	}
			    );
			});
			
    function onUploadFun(opt,data){
        uploadImgs=data;
		layer.msg('图片上传成功', {icon: 1});
    }
			
			$(function(){
				$("#fileUploadContent").initUpload({
			        "uploadUrl":"uploadimgs.action",//上传文件信息地址
			        //"size":350,//文件大小限制，单位kb,默认不限制
			        //"maxFileNumber":3,//文件个数限制，为整数
			        "filelSavePath":"uploadimgs.action",//文件上传地址，后台设置的根目录
			       // "beforeUpload":beforeUploadFun,//在上传前执行的函数
			        "onUpload":onUploadFun,//在上传后执行的函数
			        "autoCommit":true,//文件是否自动上传
			        "fileType":['png','jpg','jpeg','bmp','gif']//文件类型限制，默认不限制，注意写的是文件后缀
			    });
			});
		
		</script> 
	</body>
</html>

