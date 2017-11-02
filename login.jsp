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
    <!-- Animate.css -->
    <link href="<%=basePath%>resource/vendors/animate.css/animate.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
    <!-- sg Style -->
    <link href="<%=basePath%>resource/css/sg/sg.css" rel="stylesheet">
  </head>
  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="<%=basePath%>signin/login.html" method="post">
              <h1>CloudBrain-云脑</h1>
              <div>
                <input type="text" id="phone" class="form-control" name="phone" placeholder="手机号" />
              </div>
              <div>
                <input type="password" id="password" class="form-control" name="password" placeholder="密码" />
              </div>
              <div>
              	<button type="submit" class="btn btn-default submit" id="login">登录</button>
                <a class="reset_pass" href="#">找回密码</a>
              </div>
              <div class="clearfix"></div>
              <div class="separator">
                <p class="change_link">第一次来到?
                  <a href="#signup" class="to_register"> 注册 </a>
                </p>
                <div class="clearfix"></div>
                <br />
                <div>
                  <h1><i class="fa fa-paw"></i> CloudBrain-云脑</h1>
                  <p>©2016 All Rights Reserved. CloudBrain-云脑 </p>
                </div>
              </div>
            </form>
          </section>
        </div>
        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>创建新账户</h1>
              <div>
                <input type="text" class="form-control" name="phone" id="userphone" placeholder="手机号" />
              </div>
              <div>
                <input type="email" class="form-control" name="email" id="email" placeholder="163邮箱" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" id="pass" placeholder="密码" />
              </div>
              <div>
              	<button type="submit" id="registersubmit" class="btn btn-default submit">注册</button>
              </div>
              <div class="clearfix"></div>
              <div class="separator">
                <p class="change_link">已经有账户 ?
                  <a href="#signin" class="to_register"> 登录 </a>
                </p>
                <div class="clearfix"></div>
                <br />
                <div>
                  <h1><i class="fa fa-paw"></i> CloudBrain-云脑</h1>
                  <p>©2016 All Rights Reserved. CloudBrain-云脑</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
    <!-- jQuery -->
    <script src="<%=basePath%>resource/vendors/jquery/dist/jquery.min.js"></script>
    <script src="<%=basePath%>resource/js/sg/sg.js"></script>
    <script src="<%=basePath%>resource/js/sg/sgutil.js"></script>
    <script type="text/javascript">
    	$("#login").click(function(){
    		var username= $("#phone").val();
    		var password = $("#password").val();
    		if(username==""||password==""){
    			$.tmDialog.alert({title:"警告",icon:null,content:"输入框不能为空"});
    		}else{
    			$("#login").html("登陆中···");
    			$("#login").attr("disabled", true);
	    		$.ajax({
	    			  type: "post",
	    	          url: "<%=basePath%>signin/login.html",
	    	          data: {phone:username, password:password},
	    	          dataType: "json",
	    	          success: function(data){
	    	         		 $("#login").attr("disabled", false);
	    	            	 if(data.msg){
	    	            		 window.location="<%=basePath%>current/newsList.html";
	    	            		 $("#login").html("正在跳转···");
	    	            	 }else{
	    	            		 $("#login").html("登录");
	    	            		 $.tmDialog.alert({title:"警告",icon:null,content:"账户或者密码不正确"});
	    	            	 }
	    	          }
	    		});
    		}
    		return false;
    	});
		<!--添加注释-->
    	$("#registersubmit").click(function(){
    		var phone= $("#userphone").val();
    		var email = $("#email").val();
    		var password = $("#pass").val();
    		if(phone==""||email==""||password==""){
    			$.tmDialog.alert({title:"警告",icon:null,content:"输入框不能为空"});
    		}else{
    			$("#registersubmit").html("注册中···");
    			$("#registersubmit").attr("disabled", true);
	    		$.ajax({
	    			  type: "post",
	    	          url: "<%=basePath%>signin/register.html",
	    	          beforesend:"",
	    	          data: {phone:phone, email:email,password:password},
	    	          dataType: "json",
	    	          success: function(data){
	    	            	$("#registersubmit").html("注册");
	    	         		$("#registersubmit").attr("disabled", false);
	    	            	 if(data.msg){
	    	            		 $.tmDialog.alert({title:"成功",icon:null,content:"注册成功"});
	    	            	 }else{
	    	            		 $.tmDialog.alert({title:"警告",icon:null,content:"注册失败"});
	    	            	 }
	    	          }
	    		});
    		}
    		return false;
    	});
    </script>
  </body>
</html>