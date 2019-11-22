<%@page import="entity.Teachers"%>
<%@page import="entity.Students"%>
<%@page import="service.impl.TeachersDAOImpl"%>
<%@page import="service.TeachersDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri= "/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../css/untitled.css">
		<link rel="stylesheet" type="text/css" href="../css/student.css">
		<title>添加学生</title>
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
		
		
		<form action="<%= path %>/students/Students_add" method="post">
			<table class="table1">
				<tr>
					<td>姓名</td>
					<td><input name="sname" type="text" class="addin" placeholder="请输入姓名" id="student">
					
					</td>
				</tr>
				<tr>
					<td>学号</td>
					<td><input name = "sid" type="text" class="addin" placeholder="请输入学号" id="number">
						<p class="pro1"><%
						 if(session.getAttribute("addstudent_repeat") != null){
						 
						 %>
						<label><%= session.getAttribute("addstudent_repeat")%></label>
						<%
							}
						 %></p>
					</td>
				</tr>
				<tr>
					<td>地址</td>
					<td><input name = "saddress" type="text" class="addin" placeholder="请输入地址" id="adress"></td>
				</tr>
				<tr>
					<td>指导教师</td>
					<td> 
						<!--<input type="text" class="addin" placeholder="请输入指导教师">-->
						<select name="tid">
							<%
		
								TeachersDAO tDAO = new TeachersDAOImpl();
								List<Teachers> list = tDAO.queryAllTeachers();		
								for(Teachers teacher : list){
							 %>
							<option  value="<%= teacher.getTid()%>"><%= teacher.getTname() %></option>
							<%
								}
							
							 %>
						</select>
					</td>
				</tr>
			</table>
			<!--
			<a href="student.html" class="add1">
				<p>√</p>
			</a>
			
			-->
			<input type="submit" class="add1" value="√" id="btn2">
			</form>
		</div>
	</div>
	<div id="bottom">
		<p>Welcom to this system!</p>
	</div>
	<script>
		var oBtn2=document.getElementById('btn2');
		var oName1=document.getElementById('student');
		var oNumber=document.getElementById('number');
		var oAdress=document.getElementById('adress');
		var oName2=document.getElementById('teacher');
		
		oBtn2.onclick = function(){
			if(oName1.value==''){
				alert("请输入学生姓名");
				return false;
			}else if(oNumber.value==''){
				alert("请输入学生学号");
				return false
			}else if(oAdress.value==''){
				alert("请输入学生地址");
				return false
			}
		}
	</script>
	<%session.removeAttribute("addstudent_repeat"); %>
</html>