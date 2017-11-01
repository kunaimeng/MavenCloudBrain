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
    
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
    
    <!-- sg Style -->
    <link href="<%=basePath%>resource/css/sg/sg.css" rel="stylesheet">
	<!-- sg Style -->
    <link href="<%=basePath%>resource/vendors/animate.css/animate.css" rel="stylesheet">
    
   <!-- benyemian Style -->
    <link href="<%=basePath%>resource/css/notepad.css" rel="stylesheet">
  </head>

  <body class="nav-md">
  		<div class="modal-content dialogcontetnt">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">记事本内容</h4>
          </div>
          <div class="modal-body">
            <div id="notepad_content" style="padding: 5px 20px;">
				
            </div>
          </div>
  		</div>
  		<div class="modal-content dialog1">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">新建</h4>
          </div>
          <div class="modal-body">
            <div id="testmodal" style="padding: 5px 20px;">
              <form id="antoform" class="form-horizontal calender" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label">标题</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="title" name="title">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">描述</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height:55px;" id="descr" name="descr"></textarea>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose" data-dismiss="modal">关闭</button>
            <button type="button" id="save" class="btn btn-primary antosubmit">保存</button>
          </div>
  	</div>
  	
  	<div class="modal-content modal-content2">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title">请验证密码</h4>
          </div>
          <div class="modal-body">
            <div id="testmodal" style="padding: 5px 20px;">
              <form id="antoform" class="form-horizontal calender" role="form">
                <div class="form-group" >
                    <div class="pwd-control" id="payPwd">
				        <div class="box_intem">
				            <div class="flex-1 item"><input maxlength="1" class="tel" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" class="tel" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" class="tel" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" class="tel" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" class="tel" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" class="tel" type="tel"></div>
				        </div>
				    </div>
                </div>
              </form>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose" data-dismiss="modal">关闭</button>
            <button type="button" id="check" class="btn btn-primary antosubmit">验证</button>
          </div>
  	</div>
  
    <div class="container body">
      <div class="main_container">
       <%@ include file="../list.jsp"%>
        <!-- top navigation -->
       <%@ include file="../top.jsp"%>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
        <div class="x_panel" >
	          <i class="fa fa-bullhorn" style="margin-top:14px;"></i>要保护好密码！
              <button type="button" class="btn btn-primary antosubmit" id="newbuild" style="float:right;">新建</button>              
	     </div>
          <div class="">
          <div class="x_panel">
            <div class="clearfix"></div>
            <div class="row" id="notepadcontent">
             <c:forEach  var="list" items="${list}">
            	<div class="col-md-3 col-sm-3 col-xs-12">
            		<div class="notepad_content x_panel">
            			<div class="n_c_title">
            				<div class="n_c_t_title">${list.notepad_title}</div>
            				<i class="fa fa-close" notepad_id="${list.id}"></i>
            			</div>
            			<div class="n_c_open">
            				<i class="fa fa-key" notepad_id="${list.id}"></i>
            			</div>
            			<div class="n_c_buttom">
            				<div>${list.notepad_createtime}</div>
            			</div>
            		</div>
            	</div>
            	 </c:forEach>
            <div class="clearfix"></div>
            <br>
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
   
    <!-- NProgress -->
    <script src="<%=basePath%>resource/vendors/nprogress/nprogress.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="<%=basePath%>resource/build/js/custom.min.js"></script>
    
    <script src="<%=basePath%>resource/js/sg/sg.js"></script>
    <script src="<%=basePath%>resource/js/sg/sgutil.js"></script>
    <!-- password Scripts -->
    <script src="<%=basePath%>resource/js/payPwd.js"></script>
    
    <!-- benyemain Scripts -->
    <script type="text/javascript">
  //要打开的记事本
	var flag = null;
	var password = null;
	
	$("#check").click(function(){
		check(flag,password);
	});
	
	//密码验证
	$("#payPwd").payPwd({
		max:6,
		type:"password",
		callback:function(arr) {
			password = arr;
			check(flag,password);
		}
	});
	
	function check(flag,password){
		$("#check").html("验证中···");
		$("#check").attr("disabled", true);
		$.ajax({
			type:"post",
			url:"<%=basePath%>function/checkandlook.html",
			data: {notepadid:flag,password:password},
			dataType:"json",
			success:function(data){
				$(".close").click();
				$(".dialogcontetnt").show().addClass("animated fadeInDownBig");
				$("#notepad_content").text(data.msg.notepad_content);
				$("#check").html("验证");
	    		$("#check").attr("disabled", false);
			}
		});
	}
    $("#newbuild").click(function(){
    	$(".close").click();
    	$(".dialog1").show().addClass("animated fadeInDownBig");
    });
    
    $(".close").click(function(){
    	//清空数据
    	$("#title").val("");
			$("#descr").val("");
    	$(".modal-content").hide(100);
    });
    
    $(".antoclose").click(function(){
    	$(".close").click();
    });
    
    $("#notepadcontent").on("click",".fa-key",function () {
    	$(".close").click();
    	flag = $(this).attr("notepad_id");
    	$(".modal-content2").show().addClass("animated fadeInDownBig");
    });
    
   	//删除记事本 
    $("#notepadcontent").on("click",".fa-close",function () {
    	var id = $(this).attr("notepad_id");
    	var object = $(this).parent().parent().parent();
   		$.tmDialog.confirm({title:"状态",icon:null,content:"确定要删除吗？",callback:function(obj){
   			if(obj){
   				$.ajax({
   					type:"post",
   					url:"<%=basePath%>function/deletenotepad.html",
   					data: {notepadid:id},
   					dataType:"json",
   					success:function(data,request){
   						if(data.msg){
   							object.remove();
   							$.tmDialog.alert({title:"状态",icon:null,content:"删除成功！"});
   						}else{
   							$.tmDialog.alert({title:"状态",icon:null,content:"删除失败！"});
   						}
   					}
   				});
   			}
   		}});
    });

	//新增记事本
	$("#save").click(function(){
		var title= $("#title").val();
		var content = $("#descr").val();
		if(title==""||content==""){
			$.tmDialog.alert({title:"警告",icon:null,content:"输入框不能为空！"});
		}else{
			$("#save").html("保存中···");
			$("#save").attr("disabled", true);
    		$.ajax({
    			  type: "post",
    	          url: "<%=basePath%>function/savenotepad.html",
    	          data: {title:title, content:content},
    	          dataType: "json",
    	          success: function(data,response){
    	        	 
    	            	 $("#save").html("发送");
    	         		 $("#save").attr("disabled", false);
    	            	 if(data.msg){
    	            		 $(".close").click();
    	            		 $.tmDialog.alert({title:"状态",icon:null,content:"保存成功！"});
    	            		 $("#notepadcontent").prepend("<div class='col-md-3 col-sm-3 col-xs-12' >"+
    	                     		"<div class='notepad_content x_panel'>"+
			    	            			"<div class='n_c_title'>"+
			    	            			"	<div class='n_c_t_title'>"+data.msg.notepad_title+"</div>"+
			    	            			"	<i class='fa fa-close' notepad_id="+data.msg.id+"></i>"+
			    	            			"</div>"+
			    	            			"<div class='n_c_open'>"+
			    	            			"	<i class='fa fa-key' notepad_id="+data.msg.id+"></i>"+
			    	            			"</div>"+
			    	            			"<div class='n_c_buttom'>"+
			    	            			"	<div>"+data.msg.notepad_createtime+"</div>"+
			    	            			"</div>"+
			    	            		"</div>"+
			    	            	"</div>"); 
    	            	 }else{
    	            		 $.tmDialog.alert({title:"状态",icon:null,content:"保存失败！"});
    	            		 
    	            	 }
    	          },
    	          error:function(data,response){
    	        	  alert(response.getResponseHeader("sessionstatus"));
    	        	  $.tmDialog.alert({title:"状态",icon:null,content:"保存失败111！"});
    	          }
    		});
		}
		return false;
	});
    </script>
    
  </body>
</html>