
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 用户信息修改</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改用户信息</h3>
<form action="/Apartment/UserEditServlet.do">
	<h2>修改</h2>
	<table class="form-table">
	<tr>
	<td>员工编号</td>
	<td><input type="text" value="${user.userId}" readonly="readonly" name="user_id"></td></tr>
	<tr>
	<td>姓名</td>
	<td><input type="text"  placeholder="${user.userName}" name="user_name"></td></tr>
	<tr>
	<td>密码</td>
	<td><input type="text"  placeholder="${user.userPassword}"  name="user_password"></td></tr>
	<tr>
	<td>手机号码</td>
	<td><input type="text"    placeholder="${user.userPhone}" name="user_phone"></td></tr>
	</tr>  
	<tr>
	<td>住址</td>
	<td><input type="text" placeholder="${user.userAddress}" name="user_address"></td>
		</table>	
			<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
	</form>
</div>
</body>
</html>