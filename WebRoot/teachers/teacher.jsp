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
		<title>教师信息</title>
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
			<a href="add_teacher.jsp" class="add">
				<p>+</p>
			</a>
			<table>
				<tr>
					<td>姓名</td>
					<td>职称</td>
					<td>主讲课程</td>
					<td>编辑</td>
					<td>删除</td>
				</tr>
				<%
					List<Teachers> list = (List)session.getAttribute("teachers_list");
					for(Teachers teacher : list){
				
				 %>
				
				<tr>
					<td><a href="<%= path %>/teachers/Teachers_queryTeacherStudents.action?tid=<%=teacher.getTid()%>" class="aaa"><%= teacher.getTname() %></a></td>
					<td><%= teacher.getTposition() %></td>
					<td class="ppp"><%= teacher.getTsubject() %></td>
					<td><a href="<%=path%>/teachers/Teachers_modify.action?tid=<%= teacher.getTid() %>"><img src="../img/bj.jpg" class="bj"></a></td>
					<td><a href="<%=path%>/teachers/Teachers_delete.action?tid=<%= teacher.getTid() %>" onclick="javascript: return confirm('真的要删除吗？');"><img src="../img/sc.jpg" class="sc"></a>
					
						<%
							String teacher_deleteid = (String)session.getAttribute("teacher_deleteid");
						 if(teacher_deleteid != null && teacher_deleteid.equals(teacher.getTid())){
							 if(session.getAttribute("teacher_delete") != null){
						 
							 %>
							<label><%= session.getAttribute("teacher_delete")%></label>
						<%
								}
							}
						 %>
					</td>
				</tr>
				
				<%
					}
				 %>
			</table>
		</div>
	</div>
	<div id="bottom">
			<p>Welcome to this system!</p>
		</div>
		<%session.removeAttribute("teacher_delete");
		  session.removeAttribute("teacher_deleteid");
		 %>
</html>