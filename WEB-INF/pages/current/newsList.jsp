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
    
    <!-- animate -->
    <link href="<%=basePath%>resource/vendors/animate.css/animate.min.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="<%=basePath%>resource/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="<%=basePath%>resource/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="<%=basePath%>resource/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
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
               <i class="fa fa-exclamation"></i>&nbsp;&nbsp;因为要爬取三个网站的内容，速度可能会有点慢。请耐心等待。（5分钟更新）
            </div>
            <div class="row top_tiles">
            
              <div class="animated flipInX col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-newspaper-o"></i></div>
                  <div class="count">${newsTypeCount.baiduCount}</div>
                  <h3>百度新闻</h3>
                  <p>Baidu News.</p>
                </div>
              </div>
              <div class="animated flipInX col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-newspaper-o"></i></div>
                  <div class="count">${newsTypeCount.sinaCount}</div>
                  <h3>新浪新闻</h3>
                  <p>Sina News.</p>
                </div>
              </div>
              <div class="animated flipInX col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-newspaper-o"></i></div>
                  <div class="count">${newsTypeCount.sohuCount}</div>
                  <h3>搜狐新闻</h3>
                  <p>Sohu News.</p>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="animated bounceInLeft col-md-4">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>排行榜 <small>(TOP10)</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li style="float:right"><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                      <li style="float:right"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <c:forEach  var="baiduNews" items="${baiduNews}" varStatus="loop" begin="0" end="9" step="1">
	   					<article class="media event">
	                      <div class="media-body">
	                        <a class="title" target="_blank" href="${baiduNews.link}">${baiduNews.title}</a>
	                         <p style="margin-top:7px;">
	                         	<a target="_blank" href="${baiduNews.link}" class="btn btn-success btn-xs"><i class="fa fa-eye"></i>查看 </a>
	                         	<a href="#" class="btn btn-primary btn-xs"><i class="fa fa-save"></i>入库 </a>
	                         	<a href="#" class="btn btn-info btn-xs"><i class="fa fa-edit"></i>编辑 </a>
	                         </p>
	                      </div>
	                    </article>
    				</c:forEach>
                  </div>
                </div>
              </div>

             <div class="animated bounceInLeft col-md-4">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>排行榜 <small>(TOP10)</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li style="float:right"><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                      <li style="float:right"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
   					 <c:forEach  var="sinaNews" items="${sinaNews}" varStatus="loop" begin="0" end="9" step="1">
	   					<article class="media event">
	                      <div class="media-body">
	                        <a class="title" target="_blank" href="${sinaNews.link}">${sinaNews.title}</a>
	                         <p style="margin-top:7px;">
	                         	<a target="_blank" href="${sinaNews.link}" class="btn btn-success btn-xs"><i class="fa fa-eye"></i>查看 </a>
	                         	<a href="#" class="btn btn-primary btn-xs"><i class="fa fa-save"></i>入库 </a>
	                         	<a href="#" class="btn btn-info btn-xs"><i class="fa fa-edit"></i>编辑 </a>
	                         </p>
	                      </div>
	                    </article>
    				</c:forEach>
                  </div>
                </div>
              </div>
              
              <div class="animated bounceInLeft col-md-4">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>排行榜 <small>(TOP10)</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li style="float:right"><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                      <li style="float:right"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <c:forEach  var="sohunews" items="${sohuNews}" varStatus="loop" begin="0" end="9" step="1">
	   					<article class="media event">
	                      <div class="media-body">
	                        <a class="title" target="_blank" href="${sohunews.link}">${sohunews.title}</a>
	                         <p style="margin-top:7px;">
	                         	<a target="_blank" href="${sohunews.link}" class="btn btn-success btn-xs"><i class="fa fa-eye"></i>查看 </a>
	                         	<a href="#" class="btn btn-primary btn-xs"><i class="fa fa-save"></i>入库 </a>
	                         	<a href="#" class="btn btn-info btn-xs"><i class="fa fa-edit"></i>编辑 </a>
	                         </p>
	                      </div>
	                    </article>
    				</c:forEach>
                  </div>
                </div>
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

    <!-- Custom Theme Scripts -->
    <script src="<%=basePath%>resource/build/js/custom.min.js"></script>
	
  </body>
</html>