<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 角色详细信息</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>角色详情</h3>
	<form action="Apartment/RoleDetailServlet.do" method="post">
	<table class="form-table">
	<tr>
				<td class="label">角色ID</td>
				<td colspan="3" class="detail">
					${role.roleId }
				</td>
			</tr>
			<tr>
				<td class="label">角色名称</td>
				<td colspan="3" class="detail">
					${role.rName }
				</td>
			</tr>
			<tr>
				<td class="label">角色描述</td>
				<td colspan="3" class="detail">
					${role.rDesc }
				</td>
			</tr>
			<tr>
				<td class="label">添加时间</td>
				<td colspan="3" class="detail">
					${role.rAddtime}
				</td>
			</tr>
		</table>
		<div class="buttons">
			<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
		</div>
	</form>
</div>
</body>
</html>