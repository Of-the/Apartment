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
	<title>公寓管理系统 - 租赁合同管理</title>
	<link rel="stylesheet" href="static/css/fenye.css">
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>租赁合同管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="/Apartment/AddFroKey.do">添加信息</a>
		</div>
	</div>

	<table class="list" border="1">
		<tr>
			<th>序号</th>
			<th>合同号</th>
			<th>房屋信息</th>
			<th>租户信息</th>
			<th>合同日期</th>
			<th>租赁开始时间</th>
			<th>租赁结束时间</th>
			<th>房租总额</th>
			<th>付款方式</th>
			<th>押金</th>
			<th>付款期数</th>
			<th>合同签署人</th>
			<th>合同状态</th>
			<th>操作</th>
		</tr>
		<c:forEach var="i" items="${contract}">	
		<tr>
			<td>${i.cId}</td>
			<td>${i.cNumber}</td>
			<td><a href="HouseDetailServlet.do?id=${i.hId}">${i.hId}房屋信息</a></td>
			<td><a href="LesseeDetailServlet.do?id=${i.lId}">${i.lId}租户信息</a></td>
			<td>${i.cTime}</td>
			<td>${i.cStarttime}</td>
			<td>${i.cEndtime}</td>
			<td>${i.cMoney}</td>
			<td>${i.cPay}</td>
			<td>${i.cDeposit}</td>
			<td>${i.cPeriods}</td>
			<td>${i.cPeople}</td>
			<td>
			<c:if test="${i.cStatus==1}">已生效</c:if>
			<c:if test="${i.cStatus==2}">已失效</c:if></td>
			<td>
				<a class="fa fa-info" title="详情" href="ContractDetailServlet.do?id=${i.cId}"></a>
				&nbsp;&nbsp;
				<c:if test='${user.userName =="admin"}'>
				<a class="fa fa-pencil" title="编辑" href="ContractUpdateServlet.do?id=${i.cId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="ContractDeleteServlet.do?id=${i.cId}" 
				onclick="return confirm('是否确认删除${i.getcId()}?');"></a></c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
<script src="static/jquery/jquery-1.11.1.js"></script>
<script src="static/js/fenye.js"></script>
<script src="static/lib/jquery/jquery.js"></script>
</body>
</html>