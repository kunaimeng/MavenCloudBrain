<%@ page language="java" pageEncoding="utf-8"%>

<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="<%=basePath%>" class="site_title"><i
				class="fa fa-paw"></i> <span>CloudBrain-云脑</span></a>
		</div>

		<div class="clearfix"></div>

		<!-- menu profile quick info -->
		<div class="profile clearfix">
			<div class="profile_pic">
				<img src="<%=basePath%>resource/images/img.jpg" alt="..."
					class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>欢迎回家,</span>
				<h2>小蜗牛</h2>
			</div>
		</div>
		<!-- /menu profile quick info -->

		<br />
		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
			<div class="menu_section">
				<h3>常规</h3>
				<ul class="nav side-menu">
					<li><a><i class="fa fa-newspaper-o"></i> 时事资讯 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<%=basePath%>current/newsList.html">时事新闻</a></li>
							<li><a href="<%=basePath%>current/platformNewsList.html">热点新闻</a></li>
						</ul></li>
					<li><a><i class="fa fa-music"></i> 音乐云盘 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<%=basePath%>music/myMusic.html">我的音乐云</a></li>
						</ul></li>
					<li><a><i class="fa fa-video-camera"></i>优酷视频 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<%=basePath%>video/videoList.html">我的视频云</a></li>
						</ul></li>
					<li><a><i class="fa fa-picture-o"></i> 我的相册 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<%=basePath%>picture/pictureList.html">我的相册</a></li>
						</ul></li>
					<li><a><i class="fa fa-reorder"></i> 小功能 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<%=basePath%>function/mail.html">邮件发送</a></li>
							<li><a href="<%=basePath%>function/weather.html">天气</a></li>
							<li><a href="<%=basePath%>function/map.html">地图</a></li>
							<li><a href="<%=basePath%>function/notepad.html">记事本</a></li>
							<li><a href="<%=basePath%>function/file.html">云盘</a></li>
							<li><a href="<%=basePath%>function/speechsynthesis.html">语音合成</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="menu_section">
				<h3>统计</h3>
				<ul class="nav side-menu">
					<li>
						<a>
							<i class="fa fa-user"></i> 个人中心 <span class="fa fa-chevron-down"></span>
						</a>
						<ul class="nav child_menu">
							<li><a href="<%=basePath%>user/userinfor.html">我的资料</a></li>
							<li><a href="<%=basePath%>user/mypublish.html">我的发布</a></li>
							<li><a href="<%=basePath%>user/message.html">消息</a></li>
							<li><a href="<%=basePath%>user/chat.html">聊天工具</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- /sidebar menu -->
	</div>
</div>