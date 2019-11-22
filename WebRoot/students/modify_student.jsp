<%@page import="service.impl.TeachersDAOImpl"%>
<%@page import="service.TeachersDAO"%>
<%@page import="entity.Students"%>
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
		<title>修改信息</title>
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
		
			<form action = "<%= path %>/students/Students_save" method="post">
			
			<%
				Students student = (Students)session.getAttribute("modify_student");
			
			 %>
			
			<table class="table1">
				<tr>
					<td>修改姓名</td>
					<td><input name="sname" type="text" class="addin" value="<%= student.getSname() %>" id="student"><input name="sid" type="hidden" value="<%= student.getSid() %>" /></td>
				</tr>
				<tr>
					<td>修改地址</td>
					<td><input name= "saddress" type="text" class="addin" value="<%= student.getSaddress() %>" id="adress"></td>
				</tr>
				<tr>
					<td>修改指导教师</td>
					<td>
					
						<select name="tid">
							<%
		
								TeachersDAO tDAO = new TeachersDAOImpl();
								List<Teachers> list = tDAO.queryAllTeachers();		
								for(int i = 0;i< list.size();i++){
									if(student.getTid().equals(list.get(i).getTid())){
										
										Teachers teacher = list.get(i);
										list.remove(i);
										list.add(0, teacher);
										
									
									}
								}
								
								for(Teachers teacher : list){
									
							 %>
						
								<option   value="<%= teacher.getTid()%>"><%= teacher.getTname() %></option>
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
			<input type="submit" class="add2" value="√" id="btn2">
			</form>
		</div>
	</div>
	<div id="bottom">
		<p>Welcom to this system!</p>
	</div>
	<script>
		var oBtn2=document.getElementById('btn2');
		var oName1=document.getElementById('student');
		var oAdress=document.getElementById('adress');
		var oName2=document.getElementById('teacher');
		oBtn2.onclick = function(){
			if(oName1.value==''){
				alert("请输入学生姓名");
				return false;
			}else if(oAdress.value==''){
				alert("请输入学生地址");
				return false
			}else{
				alert('提交成功');
			}
		}
	</script>
</html>