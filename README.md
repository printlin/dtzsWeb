# dtzsWeb（斗图助手网页端）
#### 斗图助手网页端是斗图表情包搜索网站，用户可以在本站搜索图片、制作图片、保存图片、上传图片。我们不仅有网站还有客户端，实现B/S、C/S双端访问。底层是使用原生JAVA写的图片爬虫，爬虫速度达到毫秒级。正是因为使用了爬虫，所以本站图片资源可以达到百万级，每天更新图片5000张左右。由于图片数量众多，我们在程序中处处考虑性能优化，在数据库中建立索引以提高查询速度，在后台进行JVM调优以提高响应速度。

## 预览
![](https://github.com/printlin/images/blob/master/dtzs/index.jpg "首页")

## 开发环境
>JDK1.8 Mysql5.7 Tomcat8.5 MyEclipse2017
## 编程技术
>SSM Angular Bootstrap layer 爬虫
## 时间
>2017-11-21 ~ 2018-02-27
<br>

## 整体结构
![](https://github.com/printlin/images/blob/master/dtzs/framework.png "整体架构")
## 爬虫结构
![](https://github.com/printlin/images/blob/master/dtzs/repit.png "爬虫结构")
## 爬虫性能
![](https://github.com/printlin/images/blob/master/dtzs/repitData.png "爬虫性能")

## 心得总结
将大一写的图片爬虫引擎迁移到JavaWeb中，使用B/S架构进行图片展示。在这个过程中让我对JavaWeb编程有了更加深入的领会，特别是过滤器、监听器还有前端图片懒加载等关键技术，也让我更加注重编程中的一些细节问题与性能优化。第一次使用Spring的文件上传功能，极大程度的减轻了编码复杂度。本项目可以说是我人生中的关键一步，我带着项目走入校级赛场，走入市级赛场，并取得了不错的成绩。

