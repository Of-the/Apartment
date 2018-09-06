<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 角色信息修改</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改角色信息</h3>
	<h3>角色</h3>
	<form action="/Apartment/RoleEditServlet.do" method="post">
	<table class="form-table">
		<tr>
			<td>角色ID</td>
			<td colspan="3" class="control">
				<input type="hidden" name="role_id" value="${role.roleId }">
			</td>
		</tr>
		
		<tr>
			<td>角色名称</td>
			<td colspan="3" class="control">
			<input type="text" name="r_name" value="${role.rName }">
			</td>
		</tr>
		
		<tr>
			<td>角色描述</td>
			<td colspan="3" class="control">
				<input type="text" name="r_desc" value="${role.rDesc }">
			</td>
		</tr>	
			<tr>
			<td>添加时间</td>
			<td colspan="3" class="control">
				<input type="text" name="r_addtime" value="${role.rAddtime }">
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