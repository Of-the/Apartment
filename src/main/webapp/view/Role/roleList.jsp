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
	<title>公寓管理系统 - 角色管理</title>
	<link rel="stylesheet" href="static/css/fenye.css">
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>角色管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="view/Role/roleAdd.jsp">添加角色</a>
		</div>
	</div>

	<table class="list" border="1">
		<tr>
			<th>序号</th>
			<th>角色名称</th>
			<th>角色描述</th>
			<th>添加时间</th>
			<th>操作</th>
		</tr>
		<c:forEach var="i" items="${role}">
		<tr>
			<td>${i.roleId}</td>
			<td>${i.rName}</td>
			<td>${i.rDesc}</td>
			<td>${i.rAddtime}</td>
			<td>
				<a class="fa fa-info" title="详情" href="RoleDetailServlet.do?id=${i.roleId }"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="RoleUpdateServlet.do?id=${i.roleId }"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除"  href="RoleDeleteServlet.do?id=${i.roleId }" onclick="return confirm('是否确认删除${i.getRoleId()}?');"></a>
			</td>
		</tr>
		</c:forEach>
	</table>

</div>
<script src="static/lib/jquery/jquery.js">
</script>
<script src="static/js/fenye.js"></script>
<script src="static/js/jquery-1.11.1.js"></script>

</body>
</html>