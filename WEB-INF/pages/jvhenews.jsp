<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <style type="text/css">
    	.tile_count{text-align: center;color:#fff;}
    	.cat{height:40px;line-height:40px;cursor:pointer;}
    	.cat:hover{background:#27313a;transition:all 0.4s ease}
    </style>
  </head>
  <body>
  	<%@ include file="../../header.jsp"%>
  	<div id="jvhebox">
  		<div class="row tile_count">
  			<a href="<%=basePath%>jvheNews/top.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">今日头条</span>
	            </div>
  			</a>
            <a href="<%=basePath%>jvheNews/shehui.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">社会</span>
	            </div>
  			</a>
  			 <a href="<%=basePath%>jvheNews/guonei.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">国内</span>
	            </div>
  			</a>
  			<a href="<%=basePath%>jvheNews/guoji.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">国际</span>
	            </div>
  			</a>
  			<a href="<%=basePath%>jvheNews/yule.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">娱乐</span>
	            </div>
  			</a>
  			<a href="<%=basePath%>jvheNews/tiyu.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">体育</span>
	            </div>
  			</a>
  			<a href="<%=basePath%>jvheNews/junshi.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">军事</span>
	            </div>
  			</a>
  			<a href="<%=basePath%>jvheNews/keji.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">科技</span>
	            </div>
  			</a>
  			<a href="<%=basePath%>jvheNews/caijing.html">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">财经</span>
	            </div>
  			</a>
  			<a href="#">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">正在开发···</span>
	            </div>
  			</a>
  			<a href="#">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">正在开发···</span>
	            </div>
  			</a>
  			<a href="#">
  				<div class="col-md-1 col-sm-4 col-xs-6 cat">
	              <span class="count_top">正在开发···</span>
	            </div>
  			</a>
          <div class="x_title">
	        <div class="clearfix"></div>
		</div>
  	</div>
  	
  	<div id="jvhecontent">
 		<c:forEach  var="jvhenews" items="${jvhenews}">
 			<c:if test="${fn:length(jvhenews.list)=='1'}" >
 				<a href="${jvhenews.url}" target="_blank">
	 				<div class="jvheli">
						  <div class="jvheimg">
						  	<c:forEach  var="jvheimg" items="${jvhenews.list}">
						  		<img alt="" src="${jvheimg}">
						  	</c:forEach>
						  </div>
						  <div class="jvhecon">
						  		<p class="jbhe_title">${jvhenews.title}</p>
						  		<p class="jvhecon_butt">
						  			<i class="fa fa-link"></i>&nbsp;&nbsp;${jvhenews.author_name}&nbsp;&nbsp;&nbsp;&nbsp;
							  		<i class="fa fa-calendar"></i>&nbsp;&nbsp;${jvhenews.date}
						  		</p>
						  </div>
					 </div>
				 </a>
 			</c:if>		 
 			<c:if test="${fn:length(jvhenews.list)=='3'}" >
 				<a href="${jvhenews.url}" target="_blank">
	 				<div class="moretu">
						  <div class="jvheimg">
						  		<c:forEach  var="jvheimg" items="${jvhenews.list}">
						  			<img alt="" src="${jvheimg}">
						  		</c:forEach>
						  </div>
						  <div class="jvhecon">
							  <p class="jbhe_title">${jvhenews.title}</p>
							  <p class="jvhecon_butt">
							  	<i class="fa fa-link"></i>&nbsp;&nbsp;${jvhenews.author_name}&nbsp;&nbsp;&nbsp;&nbsp;
							  	<i class="fa fa-calendar"></i>&nbsp;&nbsp;${jvhenews.date}
							  </p>
						  </div>
					</div>
				</a>
 			 </c:if>
    	</c:forEach>
  	</div>
  	<%@ include file="../../side-bar.jsp"%>
   	<%@ include file="../../indexbuttom.jsp"%>
  </body>
</html>
