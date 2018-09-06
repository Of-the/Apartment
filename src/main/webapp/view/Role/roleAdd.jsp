<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 角色信息添加</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>角色管理</h3>
	<form action="/Apartment/RoleAddServlet.do" method="post">
	<table class="form-table">
<!-- 	<tr>
			<td>角色ID</td>
			<td colspan="3" class="control">
				<input type="text" name="role_id" placeholder="角色ID">
			</td>
		</tr> -->
		<tr>
			<td>角色名称</td>
			<td colspan="3" class="control">
				<input type="text" name="r_name" placeholder="角色名称">
			</td>
		</tr>
		<tr>
			<td>角色描述</td>
			<td colspan="3" class="control">
				<input type="text" name="r_desc" placeholder="角色描述">
			</td>
		</tr>
		<tr>
			<td>添加时间</td>
			<td colspan="3" class="control">
				<input type="date" name="r_addtime" placeholder="添加时间">
			</td>
		</tr>
	</table>
	<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
	</form>
</div>
</body>
</html>