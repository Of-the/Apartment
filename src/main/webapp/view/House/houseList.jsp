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
	<title>公寓管理系统 - 房屋信息管理</title>
	<link rel="stylesheet" href="static/css/fenye.css">
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>房屋信息管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="view/House/houseAdd.jsp">添加信息</a>
		</div>
		<a href="view/House/test.jsp">搜索</a>>
	</div>

	<table class="list" border="1">
		<tr>
			<th>序号</th>
			<th>所属地区</th>
			<th>所属小区</th>
			<th>单元号</th>
			<th>所属楼层</th>
			<th>房间号</th>
			<th>面积</th>
			<th>朝向</th>
			<th>装修</th>
			<th>是否双气</th>
			<th>限住人数</th>
			<th>出租价格(元)</th>
			<th>出租状态</th>
			<th>操作</th>
		</tr>
		<c:forEach var="i" items="${house}">	
		<tr>
			<td>${i.hId}</td>
			<td>${i.hArea}</td>
			<td>${i.hEstate}</td>
			<td>${i.hUnitnumber}</td>
			<td>${i.hFloor}</td>
			<td>${i.hRoomno}</td>
			<td>${i.hAcreage}</td>
			<td>${i.hDirection}</td>
			<td>${i.hFitment}</td>
			<td>${i.hIsdoubleair}</td>
			<td>${i.hLimit}</td>
			<td>${i.hPrice}</td>
			<td>
				<c:if test="${i.hStatus==1}">已出租</c:if>
				<c:if test="${i.hStatus==2}">未出租</c:if>
				<c:if test="${i.hStatus==3}">停止出租</c:if>
			</td>
			<td>
				<a class="fa fa-info" title="详情" href="HouseDetailServlet.do?id=${i.hId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="HouseUpdateServlet.do?id=${i.hId}"></a>
				&nbsp;&nbsp;
			  <a class="fa fa-remove" title="删除" href="HouseDeleteServlet.do?id=${i.hId}" 
			  onclick="return confirm('是否确认删除${i.gethId()}?');"></a>
			 </td>
		</tr>
		</c:forEach>
	</table>
<script src="static/lib/jquery/jquery.js"></script>	
<script src="static/jquery/jquery-1.11.1.js"></script>
<script src="static/js/fenye.js"></script>

</body>
</html>