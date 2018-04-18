<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html ng-app="app">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Neaty HTML Web Template</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                <!-- Magnific pop up style, http://dimsemenov.com/plugins/magnific-popup/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>
    <body>        
        <div class="container">
            <div class="row">
                <div class="tm-left-right-container">
                    <!-- Left column: logo and menu -->
                    <div class="tm-blue-bg tm-left-column" style="width: 350px;">                        
                        <div class="tm-logo-div text-xs-center" style="text-align: center;">
                            <!--  img src="img/tm-neaty-logo.png" alt="Logo"-->
                            <h1 class="tm-site-name">用户名</h1>
                        </div>
                        <nav class="tm-main-nav">
                            <ul class="tm-main-nav-ul">
                                <li class="tm-nav-item">
                                    <a href="#welcome" class="tm-nav-item-link"><span style="font-size: 30px;">我的信息</span></a>
                                </li>
                                <li class="tm-nav-item">
                                    <a href="#about" class="tm-nav-item-link"><span style="font-size: 30px;">我的收藏</span></a>
                                </li>
                                <li class="tm-nav-item">
                                    <a href="#galleryone" class="tm-nav-item-link"><span style="font-size: 30px;">我的留言</span></a>
                                </li>
                                <li class="tm-nav-item">
                                    <a href="#secondgallery" class="tm-nav-item-link"><span style="font-size: 30px;">我的上传</span></a>
                                </li>
                            </ul>
                        </nav>                                         
                    </div>
                    
                    <!-- Right column: content -->
                    <div class="tm-right-column">
                        <h1 style="text-align: center;"><strong>斗图帮</strong></h1>
                        <p style="text-align: center;">您的斗图最佳助手</p>

                        <div class="tm-content-div">
                            <!-- 我的信息 section -->
                            <section id="welcome" class="tm-section" ng-controller="userinfo">
                                <header>
                                    <h2 class="tm-blue-text tm-welcome-title tm-margin-b-45"> My Information</h2>
                                </header>
                                <a href="javascript:void()"><span class="label label-default">修改密码</span></a>
								<a href="javascript:void()"><span class="label label-primary">修改安全问题</span></a>
								<span class="label label-success">Success</span>
								<span class="label label-info">Info</span>
								<span class="label label-warning">Warning</span>
								<span class="label label-danger">Danger</span>
								<table class="table">
									<tr>
										<td style="border-top:0px;">#</td>
									</tr>
									<tr>
										<td>用户ID</td>
										<td>{{user.uid}}</td>
									</tr>
									<tr>
										<td>用户名</td>
										<td>{{user.username}}</td>
									</tr>
									<tr>
										<td>上次登录地点</td>
										<td>{{user.lastip}}</td>
									</tr>
									<tr>
										<td>上次登录时间</td>
										<td>{{user.lasttime|date:'yyyy-MM-dd HH:mm:ss'}}</td>
									</tr>
									<tr>
										<td>登录总次数</td>
										<td>{{user.logintimes}}次</td>
									</tr>
									<tr>
										<td>状态</td>
										<td>{{user.state=='right'?'正常':user.state=='admin'?'管理员':user.state=='limited'?'限制':user.state=='ban'?'禁封':''}}</td>
									</tr>
								</table>
                            </section>
                            <!-- 我的收藏 section -->
                            <section id="about" class="tm-section" ng-controller="collectinfo">
                            	<header>
                                    <h2 class="tm-blue-text tm-welcome-title tm-margin-b-45"> My Favorites</h2>
                                </header>
                            	<div style="float:right;height: 30px;width: 80px;">
                                             <a href="javascript:void()"><span class="label label-default">清空收藏</span></a>  
                                </div><br>
                                <div>
                                	图片放这
                                </div>
                                <!-- 分页 -->
                                <div style="text-align: center;">
                                	<nav aria-label="Page navigation" >
									  <ul class="pagination">
									    <li>
									      <a href="#" aria-label="Previous">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
									    </li>
									    <li><a href="#">1</a></li>
									    <li><a href="#">2</a></li>
									    <li><a href="#">3</a></li>
									    <li><a href="#">4</a></li>
									    <li><a href="#">5</a></li>
									    <li>
									      <a href="#" aria-label="Next">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
									    </li>
									  </ul>
									</nav>
								</div> 	        
                                <!-- 分页 end --> 	        
                            </section>  

                            <!-- 我的留言 section -->     
                            <section id="galleryone" class="tm-section" ng-controller="messageinfo">
                            	<header>
                                    <h2 class="tm-blue-text tm-welcome-title tm-margin-b-45"> My message</h2>
                                </header>
                                <table class="table table-condensed">
									<tr>
										<td>#</td>
										<td class="active">用户ID</td>
										<td class="success">姓名</td>
										<td class="warning">上次登录地点</td>
										<td class="danger">上次登录时间</td>
										<td class="info">登录总次数</td>
										<td class="active">权限</td>
										<td class="success">安全问题</td>
										<td class="warning">操作1</td>
										<td class="danger">操作2</td>
									</tr>
									<tr>
									  <td>1</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									  <td class="info">...</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									</tr>
									<tr>
									  <td>2</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									  <td class="info">...</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									</tr>
									<tr>
									  <td>3</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									  <td class="info">...</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									</tr>
								</table>
								<!-- 分页按钮 -->
												<div style="text-align: center;">
													<nav aria-label="Page navigation">
												  <ul class="pagination">
												    <li>
												      <a href="#" aria-label="Previous">
												        <span aria-hidden="true">&laquo;</span>
												      </a>
												    </li>
												    <li><a href="#">1</a></li>
												    <li><a href="#">2</a></li>
												    <li><a href="#">3</a></li>
												    <li><a href="#">4</a></li>
												    <li><a href="#">5</a></li>
												    <li>
												      <a href="#" aria-label="Next">
												        <span aria-hidden="true">&raquo;</span>
												      </a>
												    </li>
												  </ul>
												</nav>
												</div>
								<!-- 分页按钮 -->
                            </section>

                            <!-- 我的上传 section -->     
                            <section id="secondgallery" class="tm-section" ng-controller="uploadinfo">
                                <header><h2 class="tm-blue-text tm-section-title tm-margin-b-30">My upload</h2></header>
                                		<table class="table table-condensed">
									<tr>
										<td>#</td>
										<td class="active">上传编号</td>
										<td class="success">上传时间</td>
										<td class="warning">上传类型</td>
										<td class="danger">上传状态</td>
										<td class="info">上传用户ID</td>
										<td class="warning">操作1</td>
										<td class="danger">操作2</td>
									</tr>
									<tr>
									  <td>1</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									  <td class="info">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									</tr>
									<tr>
									  <td>2</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									  <td class="info">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									</tr>
									<tr>
									  <td>3</td>
									  <td class="active">...</td>
									  <td class="success">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									  <td class="info">...</td>
									  <td class="warning">...</td>
									  <td class="danger">...</td>
									</tr>
								</table>
								<!-- 分页按钮 -->
												<div style="text-align: center;">
													<nav aria-label="Page navigation">
												  <ul class="pagination">
												    <li>
												      <a href="#" aria-label="Previous">
												        <span aria-hidden="true">&laquo;</span>
												      </a>
												    </li>
												    <li><a href="#">1</a></li>
												    <li><a href="#">2</a></li>
												    <li><a href="#">3</a></li>
												    <li><a href="#">4</a></li>
												    <li><a href="#">5</a></li>
												    <li>
												      <a href="#" aria-label="Next">
												        <span aria-hidden="true">&raquo;</span>
												      </a>
												    </li>
												  </ul>
												</nav>
												</div>
								<!-- 分页按钮 -->
                            </section>
                            <footer>
                               <p class="bottom_p">免责声明：本网站部分内容由用户自行上传，如权利人发现存在误传其作品情形，请及时与本站联系。</p>
                            </footer>
                        </div>  
                        
                    </div> <!-- Right column: content -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
                
        <!-- load JS files -->
        <script src="../js/jquery-2.1.4.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/jquery.magnific-popup.min.js"></script>     <!-- Magnific pop-up (http://dimsemenov.com/plugins/magnific-popup/) -->
        <script src="../js/angular-1.6.0.min.js"></script>
        <script>
        var contextPath=document.location.pathname.substr(0,document.location.pathname.substr(1).indexOf("/")+1);
        
       	var app=angular.module("app",[]);
		app.controller("userinfo",function($scope,$http){
				$http({
					method: "get",
                    url: contextPath+'/getuser.action',
				}).then(
					function successCallback(re){
						$scope.user=re.data;
						console.log(re.data);
					}, function errorCallback(re){
						console.log(re);
					}
				);
			});
			
/*angular是以json提交数据，后台不解析json，此处让angular以jquery的方式提交，以便后台解析*/
app.config(function($httpProvider) {
$httpProvider.defaults.headers.put['Content-Type'] = 'application/x-www-form-urlencoded';$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
  $httpProvider.defaults.transformRequest = [function(data) {var param = function(obj) {var query = '';var name, value, fullSubName, subName, subValue, innerObj, i;
      for (name in obj) {value = obj[name];
        if (value instanceof Array) {
          for (i = 0; i < value.length; ++i) {subValue = value[i];fullSubName = name + '[' + i + ']';innerObj = {};innerObj[fullSubName] = subValue;query += param(innerObj) + '&';}
        } else if (value instanceof Object) {
          for (subName in value) {subValue = value[subName];fullSubName = name + '[' + subName + ']';innerObj = {};innerObj[fullSubName] = subValue;query += param(innerObj) + '&';}} 
            else if (value !== undefined && value !== null) {query += encodeURIComponent(name) + '='+ encodeURIComponent(value) + '&';}}
     return query.length ? query.substr(0, query.length - 1) : query;};
    return angular.isObject(data) && String(data) !== '[object File]'? param(data): data;}];});
        </script>             
</body>
</html>