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
  
     <!-- swfupload css -->
    <link href="<%=basePath%>resource/swfupload/js/upload/upload.css" rel="stylesheet" type="text/css" />
	<!-- music css -->    
    <link href="<%=basePath%>resource/css/music.css" rel="stylesheet" type="text/css" />
    
    <!-- Custom Theme Style -->
    <link href="<%=basePath%>resource/build/css/custom.min.css" rel="stylesheet">
	<!-- sg Style -->
    <link href="<%=basePath%>resource/css/sg/sg.css" rel="stylesheet">
    <style type="text/css">
    	.margin-left-right{margin:0 4px 0 4px;}
    	.fa-spinner{display: none;}
    	tr{cursor:pointer;}
    	.tablehide i{display: none;}
    </style>
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
	          <div class="x_panel">
		          	<span id="upload"></span>
		          	<button type="button" class="btn btn-success navbar-right"><i class="fa fa-trash"></i>&nbsp;回收站</button>
		          	<button type="button" class="btn btn-primary navbar-right new-build" style="margin-right:6px;"><i class="fa fa-plus"></i>&nbsp;新建文件夹</button>
	          </div>
	          <div class="x_panel choosepackage">
		          	<button type="button" class="btn btn-info btn-xs" package="0">根目录</button>
	          </div>
          	<div class="x_panel" >
          		<div class="table-responsive" style="height:650px;">
                      <table class="table table-striped jambo_table bulk_action" width="732px">
                        <thead>
                          <tr class="headings">
                            <th class="column-title" style="display: table-cell;" width="50%">文件名 </th>
                            <th class="column-title" style="display: table-cell;" width="20%">文件大小 </th>
                            <th class="column-title" style="display: table-cell;" width="20%">上传时间</th>
                            <th class="column-title" style="display: table-cell;" width="10%">操作</th>
                          </tr>
                        </thead>
                        <tbody>
	                      <c:forEach var="list" items="${filelist}">
	                      	 <c:if test="${list.res_type=='0'}" >
		                         <tr class="even pointer fold" package="${list.id}" del="${list.id}" packagename="${list.res_name}">
	                      	 </c:if>
	                         <c:if test="${list.res_type=='1'}" >
	                         	<tr class="even pointer file" file="${list.id}" del="${list.id}" filename="${list.res_name}">
	                         </c:if>
	                          	<td>
	                          		<c:if test="${list.res_type=='0'}" ><i class="fa fa-folder-o"></i></c:if>
	                          		<c:if test="${list.res_type=='1'}" ><i class="fa fa-file-o"></i></c:if>
	                          		${list.res_name}
	                          	</td>
		                        <td>
		                        <c:if test="${list.res_type=='0'}" >--</c:if>
		                        <c:if test="${list.res_type=='1'}" >${list.res_sizeString}</c:if>
		                      </td>
		                        <td>${list.res_createtime}</td>
		                        <td class="tablehide">
				                   <c:if test="${list.res_type=='1'}" >
				                        <a href="<%=basePath%>${list.res_url}"><i class="fa fa-cloud-download"></i></a>&nbsp;&nbsp;&nbsp;
			                       </c:if>
		                           <i class="fa fa-remove"></i>&nbsp;&nbsp;&nbsp;
		                       </td>
                           	</tr>
				          </c:forEach>
                        </tbody>
                      </table>
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
    
    <!-- swfipload js -->
	<script type="text/javascript" src="<%=basePath%>resource/swfupload/js/upload/tz_upload_file.js"></script>
	<script type="text/javascript">
	  	//新建文件夹标志位 0可以新建，1不可以新建
	  	var status = 0,folderid=0;

	  	$(".new-build").click(function(){
	  		if(status==0){
	  			status=1;
		  		var appcon = "<tr class='even pointer'>"+
						      "    	<td>"+
						      "		<i class='fa fa-folder-o'></i>&nbsp;&nbsp;<input type='text' value='新建文件夹'>"+
						      "		<i class='fa fa-check margin-left-right'></i>"+
						      "		<i class='fa fa-times margin-left-right'></i>"+
						      "		<i class='fa fa-spinner margin-left-right'></i>"+
						      "	</td>"+
						      "	<td>"+
						      "	</td>"+
						      "	<td>"+
						      "	</td>"+
						      "	<td>"+
						      "	</td>"+
						      "</tr>";
						      
				 $("table tbody").prepend(appcon);
	  		}else{
	  			 $("table tbody").find("input").focus().css("border","1px solid red");
	  		}
	  	});
	  	
	  	//取消新建文件夹
	  	$("table").on("click",".fa-times",function () {
	  		status=0;
		    $(this).parents(".pointer").remove();
		}); 
	  	
	    //新建文件夹
	  	$("table").on("click",".fa-check",function () {
	  		//新文件夹名
	  		var packagename = $(this).prev().val();
	  		if(packagename==null){
	  			$.tmDialog.alert({title:"警告",icon:null,content:"文件夹名不能为空"});
	  		}else{
	  			//得到要操作的对象，下边要remove()
		  		var obj = $(this).parents(".pointer");
		  		$.ajax({
		  			type: "post",
		  	        url: "<%=basePath%>function/savepackage.html",
		  	        data: {folderid:folderid, pack:packagename},
		  	        dataType: "json",
		  	        beforeSend:function(){
		  	        	tmLoading("请稍后···");
		  	        	$("table .fa-times").remove();
		  	        	$("table .fa-check").remove();
		  	        	$("table .fa-spinner").show();
		  	        },
		  	        success: function(data){
		  	        	tmLoading("新建完成",1);
		  	        	obj.remove();
		  	        	status=0;
		  	        	$("table tbody").prepend(" <tr class='even pointer fold' package="+data.msg.id+" del="+data.msg.id+" packagename="+data.msg.res_name+">"+
									                "          	<td>"+
									              	"	<i class='fa fa-folder-o'></i>"+
									              	"	"+data.msg.res_name+""+
									              	"</td>"+
									                "<td>--</td>"+
									                "<td>"+data.msg.res_createtime+"</td>"+
									                "<td class='tablehide'>"+
									                "   <i class='fa fa-remove'></i>&nbsp;&nbsp;&nbsp;"+
									                "</td>"+
									           		"</tr>");
		  	        },
		  	        error:function(){
		  	        	obj.remove();
		  	        	status=0;
		  	        	$.tmDialog.alert({title:"状态",icon:null,content:"出错了"});
		  	        }
		  		});
	  		}
		}); 
	  
	    //删除
	  	$("table").on("click",".fa-remove",function () {
	  		 var packageid = $(this).parents(".pointer").attr("del");
	  		 var removeobj = $(this).parents(".pointer");
	    		$.tmDialog.confirm({title:"状态",icon:null,content:"确定要删除吗？",callback:function(obj){
	    			if(obj){
	    				$.ajax({
	    		  			type: "post",
	    		  	        url: "<%=basePath%>function/delfileorpackage.html",
	    		  	        data: {packageid:packageid},
	    		  	        dataType: "json",
	    		  	        beforeSend:function(){
	    		  	        	tmLoading("请稍后···");
	    		  	        },
	    		  	        success: function(data){	    		  	        	
	    		  	        	if(data.msg){
	    		  	        		tmLoading("删除成功",1);
	    		  	        		removeobj.remove();
	    		  	        	}else{
	    		  	        		tmLoading("删除失败",1);
	    		  	        	}
	    		  	        },
	    		  	        error:function(){
	    		  	        	$.tmDialog.alert({title:"状态",icon:null,content:"出错了"});
	    		  	        }
	    		  		 });
	    			}
	    		}});
	     });
	    
	     //打开文件夹内容
	     $("table tbody").on("dblclick",".fold",function () {
	    	 var packageid = $(this).attr("package");
	    	 folderid=packageid;
	    	 var packagename = $(this).attr("packagename");
	    	 getPackageOrFile(packageid);
	    	 $(".choosepackage").append("<button type='button' class='btn btn-info btn-xs' package='"+packageid+"'>"+packagename+"</button>");
	    	 
	     });
	     
	     $(".choosepackage").on("click","button",function () {
	    	 var packageid = $(this).attr("package");
	    	 folderid=packageid;
	    	 getPackageOrFile(packageid);
	    	 $(this).nextAll().remove();
	     });
	     
	     
	     function getPackageOrFile(packageid){
	    	 $.ajax({
		  			type: "post",
		  	        url: "<%=basePath%>function/openpackage.html",
		  	        data: {packageid:packageid},
		  	        dataType: "json",
		  	        beforeSend:function(){
		  	        	tmLoading("请稍后···");
		  	        },
		  	        success: function(data){
		  	        	if(data.msg){
		  	        		$("table tbody tr").remove();
		  	        		for(var i=0;i<data.msg.length;i++){
		  	        			if(data.msg[i].res_type==0){
		  	        				type="fa fa-folder-o";
		  	        				size="--";
		  	        				clztype="fold";
		  	        				typename = "package";
		  	        				innerhtml="";
		  	        			}else{
		  	        				type="fa fa-file-o";
		  	        				size=data.msg[i].res_sizeString;
		  	        				clztype="file";
		  	        				typename = "file";
		  	        				innerhtml="<a href=<%=basePath%>"+data.msg[i].res_url+"><i class='fa fa-cloud-download'></i></a>&nbsp;&nbsp;&nbsp;";
		  	        			}
		  	        			$("table tbody").append(" <tr class='even pointer "+clztype+"' "+typename+"="+data.msg[i].id+" del="+data.msg[i].id+" "+typename+"name="+data.msg[i].res_name+">"+
						                "          	<td>"+
						              	"	<i class='"+type+"'></i>"+
						              	"	"+data.msg[i].res_name+""+
						              	"</td>"+
						                "<td>"+size+"</td>"+
						                "<td>"+data.msg[i].res_createtime+"</td>"+
						                "<td class='tablehide'>"+
						                " "+innerhtml+" "+
						                "   <i class='fa fa-remove'></i>&nbsp;&nbsp;&nbsp;"+
						                "</td>"+
						           		"</tr>");
		  	        		}
		  	        		tmLoading("加载完成",1);
		  	        	}else{
		  	        		tmLoading("加载完成",1);
		  	        	}
		  	        },
		  	        error:function(){
		  	        	$.tmDialog.alert({title:"状态",icon:null,content:"出错了"});
		  	        }
	    	 });
	     }
	    
	     $.tmUpload({
		  		btnId:"upload",//上传组件附加的位置
		  		url:"<%=basePath%>file/upload",
		  		limitSize:"100 MB",
		  		fileTypes:"*.*",
		  		multiple:true,
		  		callback:function(serverData,file){//上传成功的回调方法
		  			var jsonData = eval("("+serverData+")");
		  			var src = "<%=basePath%>"+jsonData.url;
		  			$("table tbody").append(" <tr class='even pointer' package="+jsonData.id+" packagename="+jsonData.name+">"+
			                "          	<td>"+
			              	"	<i class='fa fa-file-o'></i>"+
			              	"	"+jsonData.name+""+
			              	"</td>"+
			                "<td>"+jsonData.size+"</td>"+
			                "<td>"+jsonData.time+"</td>"+
			                "<td  class='tablehide'>"+
			                "   <a href="+src+"><i class='fa fa-cloud-download'></i></a>&nbsp;&nbsp;&nbsp;"+
			                "   <i class='fa fa-remove'></i>&nbsp;&nbsp;&nbsp;"+
			                "</td>"+
			           		"</tr>");
		  		}
		  	});
	     
	     $("table").on("mouseover mouseout","tr",function(event){
	    	 if(event.type == "mouseover"){
	    		 $(this).find(".tablehide i").show();
	    	 }else if(event.type == "mouseout"){
	    		 $(this).find(".tablehide i").hide();
	    	 }
	    	});

	   		//禁止选中
			document.onselectstart =function(){ return false; };
  	</script>
  </body>
</html>