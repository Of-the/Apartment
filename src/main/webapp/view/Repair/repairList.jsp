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
	<title>公寓管理系统 - 修缮记录管理</title>
	<link rel="stylesheet" href="static/css/fenye.css">
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修缮记录管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="/Apartment/RepairAddFroKey.do">添加信息</a>
		</div>
	</div>

	<table class="list" border="1">
		<tr>
			<th>序号</th>
			<th>房屋信息</th>
			<th>负责人</th>
			<th>修缮说明</th>
			<th>修缮时间</th>
			<th>修缮结果</th>
			<th>备注说明</th>
			<th>操作</th>
		</tr>
		<c:forEach var="i" items="${repair}">	
		<tr>
			<td>${i.raId}</td>
			<td><a href="HouseDetailServlet.do?id=${i.hId}">${i.hId}房屋信息</a></td>
			<td><a href="LogisticalDetailServlet.do?id=${i.lpId}">${i.lpId}负责人信息</a></td>
			<td>${i.raInfo}</td>
			<td>${i.raTime}</td>
			<td>${i.raEnd}</td>
			<td>${i.raDesc}</td>
			<td>
				<a class="fa fa-info" title="详情" href="RepairDetailServlet.do?id=${i.raId}"></a>
				&nbsp;&nbsp;
				<c:if test='${user.userName =="admin"}'>
				<a class="fa fa-pencil" title="编辑" href="RepairUpdateServlet.do?id=${i.raId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="RepairDeleteServlet.do?id=${i.raId}" 
				onclick="return confirm('是否确认删除${i.getRaId()}?');"></a></c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
<script src="static/jquery/jquery-1.11.1.js"></script>
<script src="static/js/fenye.js"></script>
<script src="static/lib/jquery/jquery.js"></script>

</body>
</html>