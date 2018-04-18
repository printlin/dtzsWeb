<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html ng-app="myapp">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'angular.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-2.1.4.min.js" ></script>
	<script type="text/javascript" src="js/angular-1.6.0.min.js" ></script>
	</head>
	<body>
		<div  ng-controller="ctl">
			<div ng-repeat="img in imgs">{{img.src}}--</div>
			<input ng-model="name" />
			<div>{{name}}</div>
		</div>
		<script>
			
			var app=angular.module("myapp",[]);
			
			

		app.controller("ctl",function($scope,$http){
				$http({
					method: "post",
                    url: 'ajaximgs.action',
                    data: {page:1}
				}).then(
					function successCallback(re){
						$scope.imgs=re.data;
						console.log(re.data);
					}, function errorCallback(re){
						console.log(re);
					}
				);
			});
			
/*angular是以json提交数据，后台不解析json，此处让angular以jquery的方式提交，以便后台解析*/
app.config(function($httpProvider) {
$httpProvider.defaults.headers.put['Content-Type'] = 'application/x-www-form-urlencoded';$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
  $httpProvider.defaults.transformRequest = [function(data) {
    var param = function(obj) {
      var query = '';
      var name, value, fullSubName, subName, subValue, innerObj, i;
      for (name in obj) {
        value = obj[name];
        if (value instanceof Array) {
          for (i = 0; i < value.length; ++i) {
            subValue = value[i];
            fullSubName = name + '[' + i + ']';
            innerObj = {};
            innerObj[fullSubName] = subValue;
            query += param(innerObj) + '&';
          }
        } else if (value instanceof Object) {
          for (subName in value) {
            subValue = value[subName];
            fullSubName = name + '[' + subName + ']';
            innerObj = {};
            innerObj[fullSubName] = subValue;
            query += param(innerObj) + '&';
          }
        } else if (value !== undefined && value !== null) {
          query += encodeURIComponent(name) + '='
              + encodeURIComponent(value) + '&';
        }
      }
      return query.length ? query.substr(0, query.length - 1) : query;
    };
    return angular.isObject(data) && String(data) !== '[object File]'? param(data): data;
  }];
});
		</script>
	</body>
</html>
