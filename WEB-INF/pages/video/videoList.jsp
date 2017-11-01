<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" style="height: 100%;">
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
    <link href="<%=basePath%>resource/css/citypicker/city-picker.css" rel="stylesheet">
	<link href="<%=basePath%>resource/css/citypicker/main.css" rel="stylesheet">
    	
    <!-- animate -->
    <link href="<%=basePath%>resource/vendors/animate.css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>resource/css/video.css" rel="stylesheet">
    
    <!-- sg Style -->
    <link href="<%=basePath%>resource/css/sg/sg.css" rel="stylesheet">
  </head>

  <body class="nav-md" onload="tm_init_pronince()" style="height: 100%;">
  
    <div class="player">
  	  <div class="bg"></div>
    </div>
  	
    <div class="container body">
      <div class="main_container">
       <%@ include file="../list.jsp"%>
       <%@ include file="../top.jsp"%>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
          	<div class="x_panel">
                <button type="button" class="btn btn-primary" id="search" style="float:right;">爬视频</button>
          		<div class="col-md-2 col-sm-2 col-xs-12 nav navbar-right form-group has-feedback" >
                           <select class="form-control has-feedback-left" id="choose" >
                           </select>
                           <span class="fa fa-bars form-control-feedback left" aria-hidden="true"></span>
                     </div>
                     <div class="col-md-2 col-sm-2 col-xs-12 nav navbar-right form-group has-feedback" >
                           <select class="form-control has-feedback-left"  id="plate" onchange="tm_city_change(this)">
                           </select>
                           <span class="fa fa-video-camera form-control-feedback left" aria-hidden="true"></span>
                     </div>
          	</div>
          	 <div class="x_panel panel">
           		<div class="animated bounceInLeft col-lg-12 col-md-12 col-sm-12 col-xs-12">
           			<c:forEach  var="videoList" items="${list}" varStatus="loop" step="1">
           			<a href="#" class="video" data-url="${videoList.videourl}">
	           			<div class="col-md-3 col-sm-3 col-xs-12">
						   	<div class="x_panel">
			               		<img alt="" src="${videoList.imgurl}" width="200px" height="110px" >
			               		<div class="clearfix"></div>
			               		<br>
			               		<p class="desc_big">电视剧：${videoList.name}</p>
			               		<p class="desc">${videoList.desc}&nbsp;&nbsp;${videoList.updateclass}</p>
		              		</div>
			            </div>
			         </a>
	              	</c:forEach>
	            </div>
	         </div>
	       </div>
	    </div>
        <!-- /page content -->
        <!-- footer content -->
        <%@ include file="../buttom.jsp"%>
        <!-- /footer content -->
      </div>
    </div>

     <!-- jQuery -->
    <script src="<%=basePath%>resource/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<%=basePath%>resource/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
   
    <!-- Custom Theme Scripts -->
    <script src="<%=basePath%>resource/build/js/custom.min.js"></script>

	<script src="<%=basePath%>resource/js/citypicker/city-picker.data.js"></script>
	<script src="<%=basePath%>resource/js/citypicker/city-picker.js"></script>
	<script src="<%=basePath%>resource/js/citypicker/main.js"></script>
	
	<!-- sg -->
	<script src="<%=basePath%>resource/js/sg/sg.js"></script>
    <script src="<%=basePath%>resource/js/sg/sgutil.js"></script>
    
	<!-- 平台以及频道选择 -->
    <script src="<%=basePath%>resource/js/video.js"></script>
    <script type="text/javascript">
	    $(".bg").click(function(){
			$(".player").hide(300);
			$(".player embed").remove();
		});
		
		$(".x_panel").on("click","a",function () {
			var url = $(this).attr("data-url");
			$.ajax({
				type:"post",
				url:"<%=basePath%>video/videoEmbed.html",
				data: {url:url},
				dataType:"json",
				beforeSend:function(){
	  	        	tmLoading("请稍后···");
	  	        },
				success:function(data){
					tmLoading("加载完成",1);
					$(".player").append(data.embed);
					$(".player").show();
				},error:function(){
					$.tmDialog.alert({title:"状态",icon:null,content:"加载失败！"});
				}
			});
		});
		
		$("#search").click(function(){
			var plate = $("#plate").val();
			var choose = $("#choose").val();
			$.ajax({
				type:"post",
				url:"<%=basePath%>video/videoSpiderByType.html",
				data: {plate:plate,chooseId:choose},
				dataType:"json",
				beforeSend:function(){
	  	        	tmLoading("请稍后···");
	  	        },
				success:function(data){
					tmLoading("加载完成",1);
					$(".x_panel a").remove();
					var html =null;
					for(var i = 0;i<data.list.length;i++){
						 html = "<a href='#' class='video' data-url="+data.list[i].videourl+" style='display:none;'>"+
				           			"<div class='col-md-3 col-sm-3 col-xs-12'>"+
								   	"<div class='x_panel'>"+
					               	"	<img alt='' src="+data.list[i].imgurl+" width='200px' height='110px' >"+
					               	"	<div class='clearfix'></div>"+
					               	"	<br>"+
					               	"	<p class='desc_big'>电视剧："+data.list[i].name+"</p>"+
					               	"	<p class='desc'>"+data.list[i].desc+"&nbsp;&nbsp;"+data.list[i].updateclass+"</p>"+
				              		"</div>"+
							        "</div>"+
							        "</a>";
						$(".panel").append(html);
						$(".panel a").show().addClass("animated fadeInDownBig");
					}
				},error:function(){
					tmLoading("加载完成",1);
					$.tmDialog.alert({title:"状态",icon:null,content:"加载失败！"});
				}
			});
		});
    </script>
    
  </body>
</html>