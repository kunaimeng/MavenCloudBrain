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

    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
    <link href="<%=basePath%>resource/css/citypicker/city-picker.css" rel="stylesheet">
	<link href="<%=basePath%>resource/css/citypicker/main.css" rel="stylesheet">
    
	<!-- sg Style -->
    <link href="<%=basePath%>resource/css/sg/sg.css" rel="stylesheet">
    
    <!-- animate -->
    <link href="<%=basePath%>resource/vendors/animate.css/animate.min.css" rel="stylesheet">
    <style type="text/css">
    	.col-xs-12{text-align: center;}
    	.col-xs-12 img{border-radius:50%;width:120px;height:120px;}
    	.two{display: none;}
    </style>
    
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
           		<div class="animated bounceInLeft col-lg-12 col-md-12 col-sm-12 col-xs-12 one">
	                <img alt="" src="<%=basePath%>${user.user_photo}">
	                <div class="clearfix"></div>
	                <br />
	                <p>手机:<span id="new_phone">${user.user_phone}</span></p>
	                <div class="clearfix"></div>
	                <br />
	                <p>昵称:<span id="new_nick">${user.user_nickname}</span></p>
	                <div class="clearfix"></div>
	                <br />
	                <p>邮件:<span id="new_email">${user.user_email}</span></p>
	                <div class="clearfix"></div>
	                <br />
	                <p>地址:<span id="new_addre">${user.user_address}</span></p>
	                <div class="clearfix"></div>
	                <br />
	                <p>年龄:<span id="new_age">${user.user_age}</span></p>
	                <div class="clearfix"></div>
	                <br />
	                <p>性别:
	                	<span id="new_sex">
		                	<c:if test="${user.user_sex=='0'}"><span>男</span></c:if>
		                	<c:if test="${user.user_sex=='1'}"><span>女</span></c:if>
	                	</span>
	                </p>
	                <br />
	                <p>注册时间:<span>${user.user_register}</span></p>
	                <div class="clearfix"></div>
	                <br />
	                <button type="button" class="btn btn-primary antosubmit edit">修改</button>
              	</div>
              	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 two"></div>
              	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 two">
	                <img alt="" src="<%=basePath%>resource/images/img.jpg">
	                <div class="clearfix"></div>
	                <br />
	                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                           <input type="text" id="phone" class="form-control has-feedback-left" placeholder="手机" value="${user.user_phone}">
                           <span class="fa fa-mobile form-control-feedback left" aria-hidden="true"></span>
                     </div>
	                <div class="clearfix"></div>
	                <br />
	                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                           <input type="text"  id="nickname" class="form-control has-feedback-left" placeholder="昵称" value="${user.user_nickname}">
                           <span class="fa fa-users form-control-feedback left" aria-hidden="true"></span>
                     </div>
	                <div class="clearfix"></div>
	                <br />
	                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                           <input type="text"  id="email" class="form-control has-feedback-left" placeholder="邮件" value="${user.user_email}">
                           <span class="fa fa-envelope-o form-control-feedback left" aria-hidden="true"></span>
                     </div>
	                <div class="clearfix"></div>
	                <br />
	                <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="container">
						<div class="docs-methods">
							<form class="form-inline">
								<div id="distpicker">
									<div class="form-group">
										<div style="position: relative;">
											<input id="city-picker3" class="form-control" readonly type="text"  value="${user.user_address}" data-toggle="city-picker">
										</div>
									</div>
								</div>
							</form>
						</div>
						</div>                       
                     </div>
	                <div class="clearfix"></div>
	                <br />
	                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                           <input type="number" max="100" min="0" id="age" onkeypress="return (/[\d]/.test(String.fromCharCode(event.keyCode)))" class="form-control has-feedback-left" placeholder="年龄" value="${user.user_age}">
                           <span class="fa fa-male form-control-feedback left" aria-hidden="true"></span>
                     </div>
	                <div class="clearfix"></div>
	                <br />
	                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                           <select class="form-control has-feedback-left" id="sex">
	                           	<option value="0" <c:if test="${user.user_sex=='0'}">selected="selected"</c:if>>男</option>
	                           	<option value="1" <c:if test="${user.user_sex=='1'}">selected="selected"</c:if>>女</option>
                           </select>
                           <span class="fa fa-exchange form-control-feedback left" aria-hidden="true"></span>
                     </div>
	                <button type="button" class="btn btn-primary antosubmit submit">提交</button>
              	</div>
              	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 two"></div>
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

    <script type="text/javascript">
    	$(".edit").click(function(){
    		$(this).parent().hide();
    		$(".two").show().addClass("animated bounceInLeft");
    	});
    	
    	$(".submit").click(function(){
    		var address=$("#city-picker3").val();
    		var age=$("#age").val();
    		var email=$("#email").val();
    		var nickname=$("#nickname").val();
    		var phone=$("#phone").val();
    		var sex=$("#sex option:selected").val();
    		var username=$("#username").val();
    		var obje= $(this).parent();
    		$.ajax({
    			type:"post",
    			url:"<%=basePath%>user/edituserinfor.html",
    			data: {address:address,age:age,email:email,nickname:nickname,phone:phone,sex:sex,username:username},
    			dataType:"json",
    			success:function(data){
    				if(data.sta){
    					if(sex==0){
    						sex='男';
    					}else{
    						sex='女';
    					}
    					$("#new_phone").html(phone);
    					$("#new_nick").html(nickname);
    					$("#new_email").html(email);
    					$("#new_addre").html(address);
    					$("#new_age").html(phone);
    					$("#new_sex").html(sex);
    					obje.hide();
    					$(".one").show().addClass("animated bounceInLeft");
    					$.tmDialog.alert({title:"状态",icon:null,content:"修改成功！"});
    				}else{
    					$.tmDialog.alert({title:"状态",icon:null,content:"修改失败！"});
    				}
    			},error:function(){
    				$.tmDialog.alert({title:"状态",icon:null,content:"修改失败！"});
    			}
    		});
    	});
    </script>
  </body>
</html>