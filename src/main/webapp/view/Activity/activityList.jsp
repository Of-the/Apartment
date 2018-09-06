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
	<title>公寓管理系统 - 公寓活动管理</title>
	<link rel="stylesheet" href="static/css/fenye.css">
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>公寓活动管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="view/Activity/activityAdd.jsp">添加信息</a>
		</div>
	</div>

	<table class="list" border="1">
		<tr>
			<th>序号</th>
			<th>活动日期</th>
			<th>活动主题</th>
			<th>活动内容</th>
			<th>活动地点</th>
			<th>费用</th>
			<th>活动组织</th>
			<th>操作</th>
		</tr>
		<tbody id="tbody">
		<c:forEach var="i" items="${activity}">	
		<tr>
			<td>${i.aId}</td>
			<td>${i.aTime}</td>
			<td>${i.aTitle}</td>
			<td>${i.aInfo}</td>
			<td>${i.aPlace}</td>
			<td>${i.aMoney}</td>
			<td>${i.aOrgnized}</td>
			<td>
				<a class="fa fa-info" title="详情" href="ActivityDetailServlet.do?id=${i.aId}"></a>
				&nbsp;&nbsp;
				<c:if test='${user.userName =="admin"}'>
				<a class="fa fa-pencil" title="编辑" href="ActivityUpdateServlet.do?id=${i.aId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="ActivityDeleteServlet.do?id=${i.aId}"
				 onclick="return confirm('是否确认删除${i.getaId()}?');"></a></c:if>
			</td>
		</tr>
		</c:forEach>
		</tbody>>
	</table>
<script src="static/jquery/jquery-1.11.1.js"></script>
<script src="static/js/fenye.js"></script>
<script src="static/lib/jquery/jquery.js"></script>

</body>
</html>