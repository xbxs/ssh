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
		<title>添加教师</title>
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
			<form action="<%= path %>/teachers/Teachers_add" method="post">
			
			<table class="table1">
				<tr>
					<td>编号</td>
					<td><input type="text" class="addin" placeholder="请输入编号" name="tid" id="number2">
						<p class="pro"><%
						 if(session.getAttribute("addteacher_repeat") != null){
						 
						 %>
						<label><%= session.getAttribute("addteacher_repeat")%></label>
						<%
							}
						 %></p>
					</td>
				</tr>
				<tr>
					<td>姓名</td>
					<td><input type="text" class="addin" placeholder="请输入姓名" name="tname" id="teacher1"></td>
				</tr>
				<tr>
					<td>职称</td>
					<td><input type="text" class="addin" placeholder="请输入职称" name="tposition" id="name4"></td>
				</tr>
				<tr>
					<td>主讲课程</td>
					<td><input type="text" class="addin" placeholder="请输入主讲课程" name="tsubject" id="class"></td>
				</tr>
			</table>
			<!--
			<a href="student.html" class="add1">
				<p>√</p>
			</a>
			
			-->
			<input type="submit" class="add1" value="√" id="btn3">
			</form>
		</div>
	</div>
	<div id="bottom">
		<p>Welcom to this system!</p>
	</div>
	<script type="text/javascript">
		var oName3=document.getElementById('teacher1');
		var oName4=document.getElementById('name4')
		var oClass=document.getElementById('class');
		var oNumber1=document.getElementById('number2');
		
		var oBtn3=document.getElementById('btn3');
		
		oBtn3.onclick = function(){
			if(oNumber1.value==''){
				alert("请输入老师编号");
				return false;
			}else if(oName3.value==''){
				alert("请输入老师姓名");
				return false
			}else if(oName4.value==''){
				alert("请输入老师职称");
				return false
			}else if(oClass.value==''){
				alert("请输入学生地址");
				return false
			}
		}
	</script>
	<%session.removeAttribute("addteacher_repeat"); %>
</html>