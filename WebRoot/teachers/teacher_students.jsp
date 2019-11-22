<%@page import="entity.Students"%>
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
		<title>全部学生</title>
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
			<div class="right"><a href="<%= path %>/users/main.jsp"><p>返回首页</p></a></div>
		</div>
	</div>
	<div id="content">
		<div id="content1">
			<table>
				<tr>
					<td></td>
					<td>全部指导学生</td>
					<td></td>
				</tr>
				<tr>
					<td>姓名</td>
					<td>学号</td>
					<td>地址</td>
					
				</tr>
					<%
					List<Students> list = (List)session.getAttribute("teacherstudents_list");
					
					for(Students student : list){
				
				 %>
				
				<tr>
					<td><%= student.getSname() %></td>
					<td><%= student.getSid() %></td>
					<td><%= student.getSaddress() %></td>
					</tr>
				
				<%
					}
				 %>
				
			</table>
		</div>
	</div>
	<div id="bottom">
			<p>Welcom to this system!</p>
		</div>
</html>