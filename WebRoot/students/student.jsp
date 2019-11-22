<%@page import="entity.TeacherStudents"%>
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
		<title>学生信息</title>
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
			<a href="<%=path%>/students/add_student.jsp" class="add">
				<p>+</p>
			</a>
			<table>
				<tr>
					<td>姓名</td>
					<td>学号</td>
					<td>地址</td>
					<td>指导教师</td>
					<td>编辑</td>
					<td>删除</td>
				</tr>
				<% 
					
					List<TeacherStudents> list = (List)session.getAttribute("students_list");
					for(TeacherStudents student : list){
				 	
				 %>
				
				<tr>
					<td><%= student.getSname() %></td>
					<td><%= student.getSid() %></td>
					<td><%= student.getSaddress() %></td>
					<td><a href="<%=path%>/teachers/Teachers_queryTeacherById.action?tid=<%= student.getTid()%>" class="aaa"><%= student.getTname() %></a></td>
					<td><a href="<%=path%>/students/Students_modify.action?sid=<%= student.getSid() %>"><img src="../img/bj.jpg" class="bj"></a></td>
					<td><a href="<%=path%>/students/Students_delete.action?sid=<%= student.getSid() %>" onclick="javascript: return confirm('真的要删除吗？');"><img src="../img/sc.jpg" class="sc"></a></td>
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