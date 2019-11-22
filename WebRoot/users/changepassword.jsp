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
		<title>修改密码</title>
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
			<div class="right"><a href="main.jsp"><p>返回首页</p></a></div>
		</div>
	</div>
	<div id="content">
		<div id="content1">
			<form action="<%= path %>/users/Users_modifypassword" method="post">
			<table class="table1">
				<tr>
					<td>确认旧密码</td>
					<td><input type="text" name="old_password" class="addin" placeholder="请输入旧密码" id="key1">
					<input type="hidden" id= "key4" name="session_old_password" class="addin" value="<%= session.getAttribute("loginUserPassword") %>" id="key1">
					</td>
				</tr>
				<tr>
					<td>新密码</td>
					<td><input type="text" name="new_password" class="addin" placeholder="请输入新密码" id="key2"></td>
				</tr>
				<tr>
					<td>确认新密码</td>
					<td><input type="text" name="confirm_password" class="addin" placeholder="请确认新密码" id="key3">
					<s:fielderror/>
					</td>
				</tr>
			</table>
			<input type="submit" class="add2" value="√" id="btn4">
			</form>
		</div>
	</div>
	<div id="bottom">
		<p>Welcom to this system!</p>
	</div>
	<script type="text/javascript">
		var oKey1=document.getElementById('key1');
		var oKey2=document.getElementById('key2');
		var oKey3=document.getElementById('key3');
		var oKey4=document.getElementById('key4');
		
		var oBtn4=document.getElementById('btn4');
		
		oBtn4.onclick = function(){
			
			if(oKey1.value==''){
				alert("请输入旧密码");
				return false
			}else if(oKey1.value != oKey4.value ){
				alert("旧密码错误");
				return false
			}	
			else if(oKey2.value==''){
				alert("请输入新密码");
				return false
			}else if(oKey3.value==''){
				alert("请确认新密码");
				return false
			}else if(oKey2.value != oKey3.value ){
				alert("两次密码输入不一致");
				return false
			}else{
				alert('提交成功');
			}
		}
	</script>
</html>