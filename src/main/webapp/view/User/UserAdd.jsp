<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 用户信息添加</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加用户信息</h3>
<form action="/Apartment/UserAddServlet.do">
		<h2>添加</h2>
			<table class="form-table">
	<!-- 		<tr>
	<td>用户ID</td>
	<td colspan="3" class="control">
	<input type="text"  name="user_id"  placeholder="用户ID">
	</td>
	<tr> -->
	<tr>
	<td>姓名</td>
	<td colspan="3" class="control">
	<input type="text"  name="user_name" placeholder="用户姓名">
	</td>
	<tr>
	<td>密码</td>
	<td colspan="3" class="control">
	<input type="text"  name="user_password" placeholder="用户密码"></td>
	</tr>
	<tr>
	<td>手机号码</td>
	<td colspan="3" class="control">
	<input type="text"  name="user_phone" placeholder="电话"></td></tr>
	<tr>
	<td>住址</td>
	<td colspan="3" class="control">
	<input type="text"  name="user_address" placeholder="住址"></td></tr>
	
		</table>	
			<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
	</form>
</div>
</body>
</html>