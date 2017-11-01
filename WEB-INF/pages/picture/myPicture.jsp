<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- NProgress -->
    <link href="<%=basePath%>resource/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<%=basePath%>resource/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="<%=basePath%>resource/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="<%=basePath%>resource/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="<%=basePath%>resource/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">

    <!-- swfupload css -->
    <link href="<%=basePath%>resource/swfupload/js/upload/upload.css" rel="stylesheet" type="text/css" />
	<!-- music css -->    
    <link href="<%=basePath%>resource/css/music.css" rel="stylesheet" type="text/css" />
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
       <%@ include file="../list.jsp"%>
       <%@ include file="../top.jsp"%>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
          	<div class="x_panel">
	          	<span id="upload"></span>
            </div>
            <div class="x_panel">
            	<div class="col-sm-12">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="img3d">
							<div class="main">
								<div class="front"> <img src="<%=basePath%>resource/images/meng3.jpg" width="280px" height="280px"/> </div>
								<div class="back"> <img src="<%=basePath%>resource/images/meng4.jpg" width="280px" height="280px"/> </div>
								<div class="top"> <img src="<%=basePath%>resource/images/meng1.jpg" width="280px" height="280px"/> </div>
								<div class="bottom"> <img src="<%=basePath%>resource/images/meng2.jpg" width="280px" height="280px"/> </div>
								<div class="left"> <img src="<%=basePath%>resource/images/meng5.jpg" width="280px" height="280px"/> </div>
								<div class="right"> <img src="<%=basePath%>resource/images/meng6.jpg"width="280px" height="280px"/> </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="img3d">
							<div class="main">
								<div class="front"> <img src="<%=basePath%>resource/images/meng21.jpg" width="280px" height="280px"/> </div>
								<div class="back"> <img src="<%=basePath%>resource/images/meng22.jpg" width="280px" height="280px"/> </div>
								<div class="top"> <img src="<%=basePath%>resource/images/meng23.jpg" width="280px" height="280px"/> </div>
								<div class="bottom"> <img src="<%=basePath%>resource/images/meng24.jpg" width="280px" height="280px"/> </div>
								<div class="left"> <img src="<%=basePath%>resource/images/meng25.jpg" width="280px" height="280px"/> </div>
								<div class="right"> <img src="<%=basePath%>resource/images/meng26.jpg"width="280px" height="280px"/> </div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div id="pic">
					<img src="<%=basePath%>resource/images/meng3.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng21.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng4.jpg"  width="200" height="200" />
					<img src="<%=basePath%>resource/images/meng22.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng5.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng23.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng6.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng24.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng1.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng25.jpg"  width="200" height="200"/>
					<img src="<%=basePath%>resource/images/meng2.jpg"  width="200" height="200"/>
				</div>
            </div>

            <!-- pic controllor start -->
			<div class="x_panel" id="picture">
				<div class="col-sm-12">
					<div class="col-md-2 col-sm-2 col-xs-12 pic-1">
		                <div class="x_panel piclist">
			                <ul>
				                <c:forEach  var="pictureList" items="${list}" begin="0" varStatus="loop" step="6">
					                 <li>
				                		<img src="<%=basePath%>${pictureList.music_src}" alt="">
				                	</li>
		    					</c:forEach>
			                </ul>
		                </div>
		             </div>
		             <div class="col-md-2 col-sm-2 col-xs-12 pic-2">
		                <div class="x_panel piclist">
			                <ul>
				                <c:forEach  var="pictureList" items="${list}" begin="1" varStatus="loop" step="6">
					                 <li>
				                		<img src="<%=basePath%>${pictureList.music_src}" alt="">
				                	</li>
		    					</c:forEach>
			                </ul>
		                </div>
		             </div>
		             <div class="col-md-2 col-sm-2 col-xs-12 pic-3">
		                <div class="x_panel piclist">
			                <ul>
				                <c:forEach  var="pictureList" items="${list}" begin="2" varStatus="loop" step="6">
					                 <li>
				                		<img src="<%=basePath%>${pictureList.music_src}" alt="">
				                	</li>
		    					</c:forEach>
			                </ul>
		                </div>
		             </div>
		             <div class="col-md-2 col-sm-2 col-xs-12 pic-4">
		                <div class="x_panel piclist">
			                <ul>
				                <c:forEach  var="pictureList" items="${list}" begin="3" varStatus="loop" step="6">
					                 <li>
				                		<img src="<%=basePath%>${pictureList.music_src}" alt="">
				                	</li>
		    					</c:forEach>
			                </ul>
		                </div>
		             </div>
		             <div class="col-md-2 col-sm-2 col-xs-12 pic-5">
		                <div class="x_panel piclist">
			                <ul>
				                <c:forEach  var="pictureList" items="${list}" begin="4" varStatus="loop" step="6">
					                 <li>
				                		<img src="<%=basePath%>${pictureList.music_src}" alt="">
				                	</li>
		    					</c:forEach>
			                </ul>
		                </div>
		             </div>
		             <div class="col-md-2 col-sm-2 col-xs-12 pic-6">
		                <div class="x_panel piclist">
			                <ul>
				                <c:forEach  var="pictureList" items="${list}" begin="5" varStatus="loop" step="6">
					                 <li>
				                		<img src="<%=basePath%>${pictureList.music_src}" alt="">
				                	</li>
		    					</c:forEach>
			                </ul>
		                </div>
		             </div>
                 </div>
            </div>
			<!-- music controllor start -->
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <%@ include file="../buttom.jsp"%>
        <!-- /footer content -->
      </div>
    </div>
    
    <!-- 上传状态 -->
    <div id="console"></div>

     <!-- jQuery -->
    <script src="<%=basePath%>resource/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<%=basePath%>resource/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<%=basePath%>resource/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<%=basePath%>resource/vendors/nprogress/nprogress.js"></script>
   
    <!-- gauge.js -->
    <script src="<%=basePath%>resource/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="<%=basePath%>resource/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<%=basePath%>resource/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="<%=basePath%>resource/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="<%=basePath%>resource/vendors/Flot/jquery.flot.js"></script>
    <script src="<%=basePath%>resource/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="<%=basePath%>resource/vendors/Flot/jquery.flot.time.js"></script>
    <script src="<%=basePath%>resource/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="<%=basePath%>resource/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="<%=basePath%>resource/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="<%=basePath%>resource/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="<%=basePath%>resource/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="<%=basePath%>resource/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="<%=basePath%>resource/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="<%=basePath%>resource/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="<%=basePath%>resource/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<%=basePath%>resource/vendors/moment/min/moment.min.js"></script>
    <script src="<%=basePath%>resource/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>


    <!-- Custom Theme Scripts -->
    <script src="<%=basePath%>resource/build/js/custom.min.js"></script>
    
    <!-- swfipload js -->
	<script type="text/javascript" src="<%=basePath%>resource/swfupload/js/upload/tz_upload.js"></script>
	<!-- music js  -->
	<script type="text/javascript" src="<%=basePath%>resource/js/music.js"></script>

	<script type="text/javascript">
	  	$.tmUpload({
	  		btnId:"upload",
	  		url:"<%=basePath%>picture/upload",
	  		limitSize:"100 MB",
	  		fileTypes:"*.jpg",
	  		multiple:true,
	  		callback:function(serverData,file){
	  			var jsonData = eval("("+serverData+")");
	  			$("#picture .col-sm-12 .pic-"+num()+" .x_panel ul").append(" <li><img src='<%=basePath%>"+jsonData.url+"' alt=''></li>");
	  		}
	  	});
	 </script>
  </body>
</html>