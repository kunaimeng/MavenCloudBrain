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
    <!-- map Style -->
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <%@ include file="../list.jsp"%>

        <!-- top navigation -->
        <%@ include file="../top.jsp"%>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
        	
          <div class="">
          	<div class="x_panel" style="height:650px;">
          		<div id="myPageTop" style="z-index: 10000">
				    <table>
				        <tr>
				            <td>
				                <label>请输入关键字：</label>
				            </td>
				        </tr>
				        <tr>
				            <td>
				                <input id="tipinput"/>
				            </td>
				        </tr>
				    </table>
				</div>
          		<div class="c_pic" id="container">
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
    
   
    
    <div id="jsContainer" class="jsContainer" style="height:0">
	    <div id="tuna_alert" style="display:none;position:absolute;z-index:999;overflow:hidden;"></div>
	    <div id="tuna_jmpinfo" style="visibility:hidden;position:absolute;z-index:120;"></div>
	</div>
    
   
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
   
    <!-- map -->
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
    <script src="http://webapi.amap.com/maps?v=1.3&key=0039bc1a7b2bd7a27196261230c17c76&plugin=AMap.Autocomplete,AMap.PlaceSearch"></script>
		 <script type="text/javascript">
		
		    //地图加载
		    var map = new AMap.Map("container", {
		        resizeEnable: true
		    });
		    //输入提示
		    var autoOptions = {
		        input: "tipinput"
		    };
		    var auto = new AMap.Autocomplete(autoOptions);
		    var placeSearch = new AMap.PlaceSearch({
		        map: map
		    });  //构造地点查询类
		    AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发
		    function select(e) {
		        placeSearch.setCity(e.poi.adcode);
		        placeSearch.search(e.poi.name);  //关键字查询查询
		    }
		</script>
	
  </body>
</html>