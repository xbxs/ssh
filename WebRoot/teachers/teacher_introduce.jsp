<%@page import="entity.Teachers"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../css/untitled.css">
		<link rel="stylesheet" type="text/css" href="../css/student.css">
		<title>教师简介</title>
	</head>
	<div id="banner">
		<div class="banner1">
			<div class="headline">
				<img src="../img/logo.jpg" class="logo">
				<div class="text">
					<p class="p1">师生信息管理系统</p>
					<p class="p2">shi sheng xin xi guan li xi tong</p>
				</div>
			</div>
			<div class="right"><a href="<%= path%>/users/main.jsp"><p>返回首页</p></a></div>
		</div>
	</div>
	<div id="content">
		<div id="content1">
			<h2>教师简介</h2>
			<table>
				<tr>
				
					<% 
						Teachers teacher = (Teachers)session.getAttribute("teacher");
					
					 %>
					<td>编号</td>
					<td><%= teacher.getTid() %></td>
				</tr>
				<tr>
					<td>姓名</td>
					<td><%= teacher.getTname() %></td>
				</tr>
				<tr>
					<td>职称</td>
					<td><%= teacher.getTposition() %></td>
				</tr>
				<tr>
					<td>详细介绍</td>
					<td class="introduce"><%= teacher.getTsubject() %></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="bottom">
			<p>Welcome to this system!</p>
		</div>
</html>