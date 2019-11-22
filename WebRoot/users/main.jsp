<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../css/main.css">
		<link rel="stylesheet" type="text/css" href="../css/untitled.css">
		<title>主界面</title>
	</head>
	<!--<frameset rows="15%,*" frameborder="1">
	 	<frame src="untitled.jsp" />
  		<frameset cols="20%,*">
  			<frame></frame>
  			<frame></frame>
  		</frameset>
	</frameset>-->
	<div id="banner">
		<div class="banner1">
			<div class="headline">
				<img src="../img/logo.jpg" class="logo">
				<div class="text">
					<p class="p1">师生信息管理系统</p>
					<p class="p2">shi sheng xin xi guan li xi tong</p>
				</div>
			</div>
			<div class="right1"><a href="changepassword.jsp">修改密码</a>欢迎&nbsp;${sessionScope.loginUserName}&nbsp;登陆!<a href="<%=path%>/users/Users_loginout.action" onclick="javascript: return confirm('确定要退出吗？');">退出登陆</a></div>
		</div>
	</div>
	<div id="content">
		<div id="content1">
			<div class="hint">
				<img src="../img/zhutu.jpg" class="one">
			</div>
			<div class="button">
				<a href="<%=path%>/students/Students_query">
					<div class="student">
						<img src="../img/heiban.jpg" class="bgimg1">
						<p>学生信息</p>
					</div>
				</a>
				<a href="<%=path%>/teachers/Teachers_query">
					<div class="teacher">
						<img src="../img/heiban.jpg" class="bgimg1">
						<p>教师信息</p>
					</div>
				</a>
			</div>
		</div>
	</div>
	<div id="bottom">
			<p>Welcom to this system!</p>
		</div>
</html>