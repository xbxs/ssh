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
		<title>修改教师信息</title>
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
			
			<form action = "<%= path %>/teachers/Teachers_save" method="post">
			
			<%
				Teachers teacher = (Teachers)session.getAttribute("modify_teachers");
			 %>
			<table class="table1">
				<tr>
					<td>修改姓名</td>
					<td><input name = "tname" type="text" class="addin" value="<%= teacher.getTname() %>"/ id="teacher1"><input name="tid" type="hidden" value="<%= teacher.getTid() %>" /></td>
				</tr>
				<tr>
					<td>修改职称</td>
					<td><input name= "tposition" type="text" class="addin" value="<%= teacher.getTposition() %>"/ id="name4"></td>
				</tr>
				<tr>
					<td>修改主讲课程</td>
					<td><input name="tsubject" type="text" class="addin" value="<%= teacher.getTsubject() %>"/ id="class"></td>
				</tr>
			</table>
			<!--
			<a href="student.html" class="add1">
				<p>√</p>
			</a>
			
			-->
			<input type="submit" class="add2" value="√" id="btn3">
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
			if(oName3.value==''){
				alert("请输入老师姓名");
				return false
			}else if(oName4.value==''){
				alert("请输入老师职称");
				return false
			}else if(oClass.value==''){
				alert("请输入主讲课程");
				return false
			}else{
				alert('提交成功');
			}
		}
	</script>
</html>