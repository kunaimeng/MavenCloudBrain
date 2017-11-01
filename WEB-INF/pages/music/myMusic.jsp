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

	<!-- Datatables -->
    <link href="<%=basePath%>resource/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>resource/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>resource/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>resource/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>resource/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    
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
	          	<audio id="player" src="" controls="controls"></audio>
	          	<marquee id="playername" scrollAmount="2"></marquee>
            </div>

            <!-- music controllor start -->
			<div class="x_panel">
				<div class="col-sm-12">
					<table id="datatable" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
                      <thead>
                        <tr role="row"><th class="sorting_desc" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" aria-sort="descending" style="width: 300px;">音乐名</th>
                        <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 75px;">大小</th>
                        <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 75px;">时间</th>
                        <th  style="width: 20px;">功能</th>
                      </thead>
                      <tbody>
	                      <c:forEach  var="musicList" items="${musicList}" varStatus="loop" step="1">
					   			<tr role="row" class="even">
									<td class="sorting_1">${musicList.music_name}</td>
				                    <td>${musicList.music_size}</td>
				                    <td>${musicList.music_time}</td>
				                    <td style="text-align: center;">
					                    <i class="fa fa-play" mp3name="${musicList.music_name}" mp3="<%=basePath%>${musicList.music_src}"></i>
					                    <i class="fa fa-pause"></i>
				                     </td>
				                 </tr>
	    				  </c:forEach>
                        </tbody>
                    </table>
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
     <!-- jQuery -->
    
    
    <!-- Bootstrap -->
    <script src="<%=basePath%>resource/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<%=basePath%>resource/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<%=basePath%>resource/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="<%=basePath%>resource/vendors/Chart.js/dist/Chart.min.js"></script>
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
    
    
     <!-- Datatables -->
    <script src="<%=basePath%>resource/vendors/datatables.net/js/jquery.dataTables.js"></script>
    <script src="<%=basePath%>resource/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="<%=basePath%>resource/build/js/custom.min.js"></script>
    
    <!-- swfipload js -->
	<script type="text/javascript" src="<%=basePath%>resource/swfupload/js/upload/tz_upload.js"></script>
	<!-- music js  -->
	<script type="text/javascript" src="<%=basePath%>resource/js/music.js"></script>
	<script type="text/javascript">
	  	$.tmUpload({
	  		btnId:"upload",//上传组件附加的位置
	  		url:"<%=basePath%>music/upload",//文件上传上类的服务器路径
	  		limitSize:"100 MB",//限制文件上传的大小
	  		fileTypes:"*.mp3",//限制文件上传的格式 *.*代表不限制
	  		multiple:true,//控制文件多选还是单选
	  		callback:function(serverData,file){//上传成功的回调方法
	  			var jsonData = eval("("+serverData+")");
	  			$("#datatable tbody").append("<tr role='row' class='even'>"+
		  			  "<td class='sorting_1'>"+jsonData.name+"</td>"+
                      "<td>"+jsonData.size+"</td>"+
                      "<td>"+jsonData.time+"</td>"+
                      "   <td style='text-align: center;'>"+
                      "	  <i class='fa fa-play' mp3name="+jsonData.name+" mp3=<%=basePath%>"+jsonData.url+"></i>"+
                      "   <i class='fa fa-pause'></i>"+
                      "  </td>"+
                      "</tr>");		
	  		}
	  	});
  	</script>
  </body>
</html>