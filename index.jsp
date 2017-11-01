<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CloudBrain-云脑</title>
    <!-- Bootstrap -->
    <link href="<%=basePath%>resource/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=basePath%>resource/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
    
	<link href="<%=basePath%>resource/css/index.css" rel="stylesheet">	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resource/css/gdt-style.css">
  </head>
  <body>
  	<%@ include file="header.jsp"%>
    <div id="box">
		<ul>
			<li style="background:url(<%=basePath%>resource/images/index/collage1.png) no-repeat center;background-size:200px 200px;">
				<div class="text">
					<h4>邮件&nbsp;&nbsp;天气&nbsp;&nbsp;地图</h4>
				</div>
			</li>
			<li style="background:url(<%=basePath%>resource/images/index/toutiao.png) no-repeat center;background-size:200px 200px;">
				<div class="text">
					<h4>新闻头条</h4>
				</div>
			</li>
			<li style="background:url(<%=basePath%>resource/images/index/yinyue.png) no-repeat center;background-size:200px 200px;">
				<div class="text">
					<h4>在线音乐</h4>
				</div>
			</li>
			<li style="background:url(<%=basePath%>resource/images/index/video.png) no-repeat center;background-size:200px 200px;">
				<div class="text">
					<h4>优酷视频</h4>
				</div>
			</li>
			<li style="background:url(<%=basePath%>resource/images/index/picture.png) no-repeat center;background-size:200px 200px;">
				<div class="text">
					<h4>在线相册</h4>
				</div>
			</li>
			<li style="background:url(<%=basePath%>resource/images/index/collage2.png) no-repeat center;background-size:200px 200px;">
				<div class="text">
					<h4>记事本&nbsp;&nbsp;云盘模拟</h4>
			</div>
				</li>
		</ul>
    </div>
    <div id="jvheshuju" style="background:url(<%=basePath%>resource/images/index/5925a74831111.jpg) no-repeat center;background-size:1200px 140px;">
		<a href="<%=basePath%>jvheNews/top.html">聚合-新闻</a>
    </div>
    <div id="content">
    	<div class="x_title">
            <h2 style="color:#fff;">后台所用技术/软件<small style="color:#fff;">Background technology/Software</small></h2>
            <div class="clearfix"></div>
		</div>
    	<div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Java<small>JdK 1.8</small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/java.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Spring 3.2.9<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/spring.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>SpringMVC<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/springmvc.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>MyEclipse 2014<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/myeclipse.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Centos 7<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/centos.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Mysql<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/mysql.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="clearfix"></div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Redis<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/redis.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Tomcat 8<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/tomcat.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
        <div class="col-md-2 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Maven<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<div class="profile_pic" style="margin:0 auto;width:100%;">
						<img src="<%=basePath%>resource/images/index/maven.png"  alt="..." class="img-circle profile_img">
					</div>
            	 </div>
             </div>   
        </div>
    </div>
    <div class="clearfix"></div>
    <div id="desc">
    	<div class="x_title">
            <h2 style="color:#fff;">系统简介<small style="color:#fff;">System introduction</small></h2>
            <div class="clearfix"></div>
		</div>
    	<div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Redis配置简介<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<p><h4><i class="fa fa-circle"></i>&nbsp;&nbsp;采用Redis的哨兵模式</h4>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Redis Sentinel 模式简介<br>
						Redis-Sentinel是官方推荐的高可用解决方案，当redis在做master-slave的高可用方案时，假如master宕机了，redis本身（以及其很多客户端）都没有实现自动进行主备切换，而redis-sentinel本身也是独立运行的进程，可以部署在其他与redis集群可通讯的机器中监控redis集群。
						<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;它的主要功能有一下几点：<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、不时地监控redis是否按照预期良好地运行。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、如果发现某个redis节点运行出现状况，能够通知另外一个进程(例如它的客户端)。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、能够进行自动切换。当一个master节点不可用时，能够选举出master的多个slave(如果有超过一个slave的话)中的一个来作为新的master,其它的slave节点会将它所追随的master的地址改为被提升为master的slave的新地址。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、哨兵为客户端提供服务发现，客户端链接哨兵，哨兵提供当前master的地址然后提供服务，如果出现切换，也就是master挂了，哨兵会提供客户端一个新地址。</p>
            	 	<p><h4><i class="fa fa-circle"></i>&nbsp;&nbsp;自己采用的方式</h4>
            	 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一主二从模式+Sentinel<br>
            	 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在本机分配三个端口6379,6380,6381;启动情况下6379为master,6380,6381为slave。<br>
            	 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最后修改sentinel.conf,启动redis-sentinel。<br>
            	 </div>
             </div>   
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Redis在本网站中的使用场景<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<p>
               	 		<h5><i class="fa fa-circle"></i>&nbsp;&nbsp;新闻</h5>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平台主要爬取“百度”,“新浪”,“搜狐”三大新闻平台,存储内容主要为新闻标题和链接,存储时间为5分钟。
					</p>
					<p>
						<h5><i class="fa fa-circle"></i>&nbsp;&nbsp;视频</h5>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平台主要爬取“优酷视频”,存储内容主要为视频名称,简介,视频图片地址以及视频地址,存储时间为5分钟。
					</p>
            	 </div>
             </div>   
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>Maven构建项目<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maven项目对象模型(POM)，可以通过一小段描述信息来管理项目的构建，报告和文档的软件项目管理工具。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maven 除了以程序构建能力为特色之外，还提供高级项目管理工具。由于 Maven 的缺省构建规则有较高的可重用性，所以常常用两三行 Maven 构建脚本就可以构建简单的项目。由于 Maven 的面向项目的方法，许多 Apache Jakarta 项目发文时使用 Maven，而且公司项目采用 Maven 的比例在持续增长。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maven这个单词来自于意第绪语（犹太语），意为知识的积累，最初在Jakata Turbine项目中用来简化构建过程。当时有一些项目（有各自Ant build文件），仅有细微的差别，而JAR文件都由CVS来维护。于是希望有一种标准化的方式构建项目，一个清晰的方式定义项目的组成，一个容易的方式发布项目的信息，以及一种简单的方式在多个项目中共享JARs。<br>
					</p>
            	 </div>
             </div>   
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>正在做的工作<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<p>
               	 		<h5><i class="fa fa-circle"></i>&nbsp;&nbsp;Tomcat 8配置SSL</h5>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SSL(Secure Sockets Layer 安全套接层),及其继任者传输层安全（Transport Layer Security，TLS）是为网络通信提供安全及数据完整性的一种安全协议。TLS与SSL在传输层对网络连接进行加密。
					</p>
            	 </div>
             </div>   
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                  	 <h2>正在学的技术<small></small></h2>
                 	 <div class="clearfix"></div>
             	  </div>
            	  <div class="x_content">
               	 	<p>
               	 		<h5><i class="fa fa-circle"></i>&nbsp;&nbsp;Tomcat 8集群</h5>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在单一的服务器上执行WEB应用程序有一些重大的问题，当网站成功建成并开始接受大量请求时，单一服务器终究无法满足需要处理的负荷量，所以就有点显得有 点力不从心了。另外一个常见的问题是会产生单点故障，如果该服务器坏掉，那么网站就立刻无法运作了。不论是因为要有较佳的扩充性还是容错能力，我们都会想 在一台以上的服务器计算机上执行WEB应用程序。所以，这时候我们就需要用到集群这一门技术了。
					</p>
            	 </div>
            	 <div class="clearfix"></div>
            	 <div class="x_content">
               	 	<p>
               	 		<h5><i class="fa fa-circle"></i>&nbsp;&nbsp;nginx</h5>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nginx (engine x) 是一个高性能的HTTP和反向代理服务器，也是一个IMAP/POP3/SMTP服务器。Nginx是由伊戈尔·赛索耶夫为俄罗斯访问量第二的Rambler.ru站点（俄文：Рамблер）开发的，第一个公开版本0.1.0发布于2004年10月4日。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其将源代码以类BSD许可证的形式发布，因它的稳定性、丰富的功能集、示例配置文件和低系统资源的消耗而闻名。2011年6月1日，nginx 1.0.4发布。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nginx是一款轻量级的Web 服务器/反向代理服务器及电子邮件（IMAP/POP3）代理服务器，并在一个BSD-like 协议下发行。其特点是占有内存少，并发能力强，事实上nginx的并发能力确实在同类型的网页服务器中表现较好，中国大陆使用nginx网站用户有：百度、京东、新浪、网易、腾讯、淘宝等。<br>
					</p>
            	 </div>
             </div>   
        </div>
    </div>
    <%@ include file="side-bar.jsp"%>
	 <%@ include file="indexbuttom.jsp"%>
    <!-- jQuery -->
   <script src="<%=basePath%>resource/vendors/jquery/dist/jquery.min.js"></script>
   <script>
			$("#box ul li").hover(function(){
				$(this).stop().animate({width:"400px"},300).siblings().stop().animate({width:"160px"},300);
				$(this).find(".text").hide();
			},function(){
				$("#box ul li").stop().animate({width:"200px"},1000);
				$(this).find(".text").show();
			});
		</script>
   
  </body>
</html>
