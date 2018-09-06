<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>公寓管理系统 - 用户管理</title>
	<link rel="stylesheet" href="static/css/fenye.css">
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>用户管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="view/User/userAdd.jsp">添加信息</a>
		</div>
	</div>
	<table class="list" border="1">
	<tr>
	<td>员工编号</td>
	<td>姓名</td>
	<td>密码</td>
	<td>手机号码</td>
	<td>住址</td>
	<td>操作</td>
	</tr>
	<c:forEach var="i" items="${user}">
	<tr>
	<td>${i.userId}</td>
	<td>${i.userName}</td>
	<td>${i.userPassword}</td>
	<td>${i.userPhone}</td>
	<td>${i.userAddress}</td>
<td>
				<a class="fa fa-info" title="详情" href="UserDetailServlet.do?id=${i.userId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="UserUpdateServlet.do?id=${i.userId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="UserDeleteServlet.do?id=${i.userId}" 
				onclick="return confirm('是否确认删除${i.getUserId()}?');"></a>
			</td>
		</tr>
		</c:forEach>
	</table>
	
<script src="static/lib/jquery/jquery.js"></script>
	
<script src="static/jquery/jquery-1.11.1.js"></script>
<script src="static/js/fenye.js"></script>

</body>
</html>