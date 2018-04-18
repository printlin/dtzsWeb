<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" data-toggle="collapse" data-target="#collapseNav">
					<!--navbar-toggle  当导航栏缩小到不能显示时  本元素替换navbar-collapse指定的内容显示-->
					<!--data-toggle指以什么事件触发    data-target指事件的目标   一起使用就是代表data-target所指的元素以data-toggle指定的形式显示-->
						<span class="icon-bar"></span><!--三条线  字体图片-->
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href=""><strong>斗图帮</strong></a>
					<!--navbar-brand  导航栏图标-->
				</div>
				<div class="collapse navbar-collapse" id="collapseNav">
					<!--欲折叠的部分   id方便找到这个欲折叠部分-->
					<ul class="nav navbar-nav">
						<li id="sy">
							<a href="${pageContext.request.contextPath}/index.action">首页</a>
						</li>
						<li id="zx">
							<a href="${pageContext.request.contextPath}/imgs.action">最新图片</a>
						</li>
						<li id="xl">
							<a href="${pageContext.request.contextPath}/ttimgs.action">系列图片</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right" ${user==null?"":"style='display:none;'" }>
			        	<li><a href="" data-toggle="modal" data-target="#modal_login" onclick="loginBtnClick()">登录</a></li>
			        	<li><a href="" data-toggle="modal" data-target="#modal_regist" onclick="registBtnClick()">注册</a></li>
			        </ul>
			        <ul class="nav navbar-nav navbar-right" ${user==null?"style='display:none;'":"" }>
			        	<li><a href="user/userinfo.jsp">${user.username}</a></li>
			        </ul>
					<form action="" method="POST" class="navbar-form navbar-right yl-nav-form">
						<input type="text" id="keyword" name="key" class="form-control yl-nav-input" placeholder="请输入搜索内容" />
						<button onclick="search()" class="yl-nav-button">
							<span class="glyphicon glyphicon-search"></span><!--搜索图标-->
						</button>
					</form>
				</div>
			</div>
		</nav>
		
		<div class="modal fade" id="modal_login" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
						<h3>登录窗口</h3>
					</div>
					<div class="modal-body">
						<div class="login form">
							<div class="group">
								<div class="group-con tel">
									<input type="text" name="username" id="username" class="con" placeholder="请输入账号" required>
								</div>
								<div class="group-con password">
									<input type="password" name="password" id="password" class="con" placeholder="请输入密码" required>
								</div>
								<!-- 验证码 -->
								<div class="group-con verify">
									<input type="text" name="chackCode" id="chackCode" class="chackCode" placeholder="请输入验证码" required>
									<img id="chackImg" class="chackImg" src="imgs/loading.gif">
								</div>
								<!-- 验证码 end -->
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="button">
							<button type="button" class="login-btn register-btn button_s" id="button" value="登录">登录</button>
						</div>
					
						<div class="remember clearfix">
							<label class="remember-me">
							<input type="checkbox" name="remember" id="remember" class="remember-mecheck" value="记住我">记住我
							</label>
							<label class="forgot-password">
								<a href="#">忘记密码？</a>
							</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="modal fade" id="modal_regist" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
						<h3>注册窗口</h3>
					</div>
					<div class="modal-body">
						<div class="login form">
							<div class="group">
								<div class="group-con tel">
									<input type="text" name="rusername" id="rusername" class="con"  placeholder="用户名" required>
								</div>
								<div class="group-con password">
									<input type="password" name="rpassword" id="rpassword" class="con" placeholder="设置密码" required>
								</div>
								<div class="group-con repassword">
									<input type="password" name="rrepassword" id="rrpassword" class="con" placeholder="重复密码" required>
								</div>
								<div class="group-con password">
									<input type="text" name="question" id="question" class="con"  placeholder="找回密码的问题" required>
								</div>
								<div class="group-con password">
									<input type="password" name="answer" id="answer" class="con" placeholder="设置答案" required>
								</div>
								<div class="group-con repassword">
									<input type="password" name="ranswer" id="ranswer" class="con" placeholder="重复答案" required>
								</div>
								<!-- 验证码 -->
								<div class="group-con verify">
									<div>
										<input type="text" name="rchackCode" id="rchackCode" class="chackCode" placeholder="验证码" required>
										<img id="rchackImg" class="chackImg" src="imgs/loading.gif">
									</div>
								</div>
								<!-- 验证码 end -->
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="button">
							<button type="button" class="login-btn register-btn button_s" id="rbutton" value="提交">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/jquery.lazyload.js"></script>
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/md5.min.js"></script>
<script>
function search(){
	var keyword=$("#keyword").val();
	window.open("imgsbykey.action?page=1&key="+keyword);
}
	var hr=window.location.href;
	if(hr.indexOf('/imgs')!=-1){
		document.getElementById("zx").className='active';
	}else if(hr.indexOf('/ttimgs')!=-1){
		document.getElementById("xl").className='active';
	}else{
		document.getElementById("sy").className='active';
	}
	
</script>



<script type="text/javascript">
		var contextPath=document.location.pathname.substr(0,document.location.pathname.substr(1).indexOf("/")+1);
		function loginBtnClick(){
			$("#chackImg").attr("src","chackcode.action?flag="+new Date().getTime());
		}
		function registBtnClick(){
			$("#rchackImg").attr("src","chackcode.action?flag="+new Date().getTime());
		}
			var one=true;
			$("#username").blur(function(){
				post("username");
				
			});
			$("#password").blur(function(){
				post("password");
				
			});
			$("#chackCode").blur(function(){
				post("chackCode");
				
			});
			$("#button").click(function(){
				$.post(contextPath+"/login.action",
			    	{
			    		username:$("#username").val(),
			    		password:md5($("#password").val()),
			    		chackcode:$("#chackCode").val(),
			    		remember:$("#remember").is(':checked'),
			    		type:"submit"
			    	},
			    	function(data,status){
			    		showMes(data);
			    	}
			    );
			});
			$("#chackImg").click(function(){
				var time=new Date();
				$("#chackImg").attr("src","chackcode.action?flag="+time.getTime());
			});
		
		function post(who){//发送请求
			$.post(contextPath+"/login.action",
		    	{
		    		username:$("#username").val(),
		    		password:md5($("#password").val()),
		    		chackcode:$("#chackCode").val()
		    	},
		    	function(data,status){
		    		showMes(data,who);
		    	}
		    );
		}
		function showMes(data,who){//展示获得的数据
			var json=JSON.parse(data);
			console.log(json.username);
			if(json.susses!=null){
				location.reload(true);
			}else{
				if(json.username){
					layer.tips(json.username, '#username',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}else if(json.password && $("#password").val()){
					layer.tips(json.password, '#password',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}else if(json.chackCode  && $("#chackCode").val()){
					layer.tips(json.chackCode, '#chackCode',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}else if(json.loginError){
					layer.tips(json.username, '#button',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}
			}
		}	
		
			var rone=true;
			$("#rusername").blur(function(){
				rpost("rusername");
			});
			$("#rpassword").blur(function(){
			});
			$("#rchackCode").blur(function(){
				rpost("rchackCode");
			});
			$("#rbutton").click(function(){
				var password=$("#rpassword").val();
				var rpassword=$("#rrpassword").val();
				var answer=$("#answer").val();
				var ranswer=$("#ranswer").val();
				var passwordIsTrue=false;
				var answerIsTrue=false;
				if(password){
					if(rpassword){
						if(password!=rpassword){
							$("#rrpassword").val("");
							layer.tips("两次输入的密码不一致", '#rrpassword',{
							  tips: [1, '#3595CC'],
							  time: 4000
							});
						}else{
							passwordIsTrue=true;
						}
					}else{
						layer.tips("请再次输入密码", '#rrpassword',{
						  tips: [1, '#3595CC'],
						  time: 4000
						});
					}
				}else{
					layer.tips("请输入密码", '#rpassword',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}
				if(answer){
					if(ranswer){
						if(answer!=ranswer){
							$("#ranswer").val("");
							layer.tips("两次输入的答案不一致", '#ranswer',{
							  tips: [1, '#3595CC'],
							  time: 4000
							});
						}else{
							answerIsTrue=true;
						}
					}else{
						layer.tips("请再次输入答案", '#ranswer',{
						  tips: [1, '#3595CC'],
						  time: 4000
						});
					}
				}else{
					layer.tips("请输入答案", '#answer',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}
				if(passwordIsTrue && answerIsTrue){
					$.post("regist.action",
				    	{
				    		username:$("#rusername").val(),
				    		password:md5($("#rpassword").val()),
				    		question:$("#question").val(),
							answer:$("#answer").val(),
				    		chackcode:$("#rchackCode").val(),
				    		type:"submit"
				    	},
				    	function(data,status){
				    		rshowMes(data);
				    	}
				    );
				}
				
			});
			$("#rchackImg").click(function(){
				var time=new Date();
				$("#rchackImg").attr("src","chackcode.action?flag="+time.getTime());
			});
		
		function rpost(who){//发送请求
			$.post("regist.action",
		    	{
		    		username:$("#rusername").val(),
		    		password:md5($("#rpassword").val()),
		    		question:$("#question").val(),
					answer:$("#answer").val(),
		    		chackcode:$("#rchackCode").val()
		    	},
		    	function(data,status){
		    		rshowMes(data,who);
		    	}
		    );
		}
		function rshowMes(data,who){//展示获得的数据
			var json=JSON.parse(data);
			if(json.susses!=null){
			
				$('#modal_regist').modal('hide');
				alert(" '"+$("#rusername").val()+"' 注册成功！");
				  //location.reload(true);
			}else{
				if(json.username){
					layer.tips(json.username, '#rusername',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}else if(json.chackCode  && $("#rchackCode").val()){
					layer.tips(json.chackCode, '#rchackCode',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}else if(json.registError){
					layer.tips(json.registError, '#rbutton',{
					  tips: [1, '#3595CC'],
					  time: 4000
					});
				}
			}
		}	
</script>

<script type="text/javascript">
		
</script>
		