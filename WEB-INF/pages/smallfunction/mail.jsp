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
    <!-- NProgress -->
    <link href="<%=basePath%>resource/vendors/nprogress/nprogress.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
	<!-- sg Style -->
    <link href="<%=basePath%>resource/css/sg/sg.css" rel="stylesheet">
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
	               <i class="fa fa-bullhorn"></i>在这里可以发送邮件给你的好友！
	            </div>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
              	<div class="x_panel" style="height:300px;">
	               <form class="form-horizontal form-label-left">
                      <span class="section" style="padding-bottom: 10px;">发送邮件</span>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">邮箱<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">标题<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="occupation" required="required" type="text" name="occupation"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">内容<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="textarea" required="required" name="textarea" class="form-control col-md-7 col-xs-12"></textarea>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button id="reset" type="reset" class="btn btn-primary">清空</button>
                          <button id="send" type="submit" class="btn btn-success">发送</button>
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
    	$("#send").click(function(){
    		var email= $("#email").val();
    		var occupation = $("#occupation").val();
    		var textarea = $("#textarea").val();
    		if(email==""||occupation==""||textarea==""){
    			$.tmDialog.alert({title:"警告",icon:null,content:"输入框不能为空！"});
    		}else{
    			$("#send").html("发送中···");
    			$("#send").attr("disabled", true);
	    		$.ajax({
	    			  type: "post",
	    	          url: "<%=basePath%>function/mailsend.html",
	    	          data: {email:email, occupation:occupation,textarea:textarea},
	    	          dataType: "json",
	    	          success: function(data){
	    	            	 $("#send").html("发送");
	    	         		 $("#send").attr("disabled", false);
	    	            	 if(data.msg){
	    	            		 $("#reset").click();
	    	            		 $.tmDialog.alert({title:"警告",icon:null,content:"发送成功！"});
	    	            	 }else{
	    	            		 $.tmDialog.alert({title:"警告",icon:null,content:"发送失败！"});
	    	            	 }
	    	          }
	    		});
    		}
    		return false;
    	});
    </script>
  </body>
</html>