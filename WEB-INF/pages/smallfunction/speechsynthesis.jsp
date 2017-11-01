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

    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
	<!-- sg Style -->
    <link href="<%=basePath%>resource/css/sg/sg.css" rel="stylesheet">
    
     <!-- animate -->
    <link href="<%=basePath%>resource/vendors/animate.css/animate.min.css" rel="stylesheet">
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
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
              	<div class="x_panel">
	               <i class="fa fa-bullhorn"></i>&nbsp;服务器内存空间有限，只保留最后一次生成的语音！
	            </div>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
              	<div class="x_panel">
	               <form class="form-horizontal form-label-left">
                      <span class="section" style="padding-bottom:10px;">请输入内容</span>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">内容<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="textarea" required="required" class="form-control col-md-7 col-xs-12" style="height: 200px;">在这里输入甜言蜜语，然后分享给Ta;</textarea>
                        </div>
                         <div class="col-md-3 col-sm-3 col-xs-12" id="con_right" style="text-align:center;<c:if test="${haveYvyin=='0'}">display:none;</c:if>">
                         	<img style="margin-top:25px;" alt="" width="100px" height="100px" id="Qrcode" src="<%=basePath%>${YvQrcodeUrl}">
                         	<p style="font-size:12px;margin-top:10px;">扫描即可查看语音内容</p>
                         	<video controls="" id="movie" name="media" style="display: none;" src="<%=basePath%>${YvyinUrl}">
                         		
                         	</video>
                         	<button type="button" class="btn btn-info btn-xs" id="audition">试听</button>
                         	<button type="button" class="btn btn-info btn-xs">下载二维码</button>
                         	<button type="button" class="btn btn-info btn-xs">复制地址</button>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button id="reset" type="reset" class="btn btn btn-warning">清空</button>
                          <button id="send" type="submit" class="btn btn-primary">合成语音</button>
                        </div>
                      </div>
                    </form>
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
    <!-- Custom Theme Scripts -->
    <script src="<%=basePath%>resource/build/js/custom.min.js"></script>
    
    <script src="<%=basePath%>resource/js/sg/sg.js"></script>
    <script src="<%=basePath%>resource/js/sg/sgutil.js"></script>
    <script type="text/javascript">

    	$("#audition").click(function(){
    		$('video').trigger('play');
    	});
    
    	$("#send").click(function(){
    		var textarea = $("#textarea").val();
    		if(textarea==""){
    			$.tmDialog.alert({title:"警告",icon:null,content:"输入框不能为空！"});
    		}else{
    			$("#send").html("合成中···");
    			$("#send").attr("disabled", true);
	    		$.ajax({
	    			  type: "post",
	    	          url: "<%=basePath%>function/getsynthesis.html",
	    	          data: {textarea:textarea},
	    	          dataType: "json",
	    	          success: function(data){
	    	        	  	 $("#movie").attr("src","<%=basePath%>"+data.msg);
	    	            	 $("#send").html("合成语音");
	    	         		 $("#send").attr("disabled", false);
	    	            	 if(data.msg){
	    	            		 $("#reset").click();
	    	            		 $.tmDialog.alert({title:"状态",icon:null,content:"语音合成成功！"});
		    	        	 	 var flag = $("#con_right").css('display');
		    	        	 	 $("#Qrcode").attr("src","<%=basePath%>"+data.YvQrcodeUrl);
		    	        	     if(flag=='none'){
		    	        	    	 $("#con_right").show().addClass("animated bounceIn");
		    	        	     }
	    	            	 }else{
	    	            		 $.tmDialog.alert({title:"警告",icon:null,content:"合成失败！"});
	    	            	 }
	    	          },error:function(){
	    	        	  $("#send").html("合成");
	    	         	  $("#send").attr("disabled", false);
	    	        	  $.tmDialog.alert({title:"警告",icon:null,content:"出错了！"});
	    	          }
	    		});
    		}
    		return false;
    	});
    </script>
  </body>
</html>