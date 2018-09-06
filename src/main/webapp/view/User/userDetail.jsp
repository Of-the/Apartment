<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 房屋信息详情查看</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>用户信息详情</h3>
	<form action="/Apartment/UserDetailServlet.do" method="post">
		<table class="form-table">
	<tr>
	<td>用户ID</td>
	<td>${user.userId}</td>
	</tr>
	<tr>
	<td>姓名</td>
	<td>${user.userName}</td>
	</tr>
	<tr>
	<td>密码</td>
	<td>${user.userPassword}</td>
	</tr>
	<tr>
	<td>手机号码</td>
	<td>${user.userPhone}</td>
	</tr>
	<tr>
	<td>住址</td>
	<td>${user.userAddress}</td>
	</tr>
		</table>
		<div class="buttons">
			<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
		</div>
	</form>
</div>
</body>
</html>