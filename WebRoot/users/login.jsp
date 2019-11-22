<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../css/untitled.css">
		<title>登陆界面</title>
	</head>
	<body>
		<div id="banner">
			<div class="banner1">
				<div class="headline">
					<img src="../img/logo.jpg" class="logo">
					<div class="text">
						<p class="p1">师生信息管理系统</p>
						<p class="p2">shi sheng xin xi guan li xi tong</p>
					</div>
				</div>
				<div class="right"><p>请登陆！</p></div>
			</div>
		</div>
		<div id="content">
			<div id="content1">
				<div class="hint">
					<img src="../img/zhutu.jpg" class="one">
				</div>
				<div class="login">
					<img src="../img/heiban.jpg" class="bgimg">
					<div class="denglu">
						<p class="title">登陆</p>
						<form class="name" action="<%=path%>/users/Users_login" method="post">
							
							<div>
								<div class="nameimg img1"><img src="../img/user.jpg"></div>
								<input type="text" name="username">
								
							</div>
							<div>
								<div class="pswordimg img1"><img src="../img/key.jpg"></div>
								<input type="text" name="password">
							</div>
							<s:fielderror/>
							<input type="submit" name="submit" class="submit" value="提&nbsp;&nbsp;&nbsp;交">
							
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom">
			<p>Welcom to this system!</p>
		</div>
	</body>
</html>