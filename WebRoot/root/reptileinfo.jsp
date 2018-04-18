<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图片爬虫信息统计</title>
    <script src="js/jquery.js"></script>
    <script src="root/js/Chart.js" ></script>
  </head>
  
  <body>
		<div style="width:80%;margin-left: auto;margin-right: auto;">
		<canvas id="reptileWeek"></canvas>
		</div>
		<script>
        var config = {
            type: 'line',
            data: {
            	labels: ${day},
                datasets: [{
                    label: "img",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,0.5)",
                    data : ${img},
                    fill: false,
                }, {
                    label: "tt",
                    fill: false,
                    backgroundColor: "rgba(151,187,205,1)",
                    borderColor: "rgba(151,187,205,1)",
                    data : ${tt},
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'爬虫信息统计（七天）'
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                },
                hover: {
                    mode: 'nearest',
                    intersect: true
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            display: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            display: true,
                            labelString: 'Value'
                        }
                    }]
                }
            }
        };

        window.onload = function() {
            var ctx = document.getElementById("reptileWeek").getContext("2d");
            window.myLine = new Chart(ctx, config);
        };
    </script>
	</body>
</html>
