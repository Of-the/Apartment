
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 房租信息修改</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改房租信息</h3>
<form action="/Apartment/RectEditServlet.do">
		<h2>修改</h2>
			<table class="table-bordered">
			<tr>
			<td >序号</td>
			<td colspan="3" class="control"><input type="text" name="r_id" value="${rect.rId}" readonly="readonly"></td>
			</tr>
			<tr>
			<td>房屋信息</td>
			<!-- <td><input type="text" name="h_id"></td> -->
			<td colspan="3" class="control"><select name="h_id" >
			<c:forEach var="i" items="${house}" >
				<c:if test="${i.hId==rect.hId }">
			<option value="${i.hId}" selected="selected"> ${i.hArea}</option>
			</c:if>
			<c:if test="${i.hId!=rect.hId }">
			<option value="${i.hId}" > ${i.hArea}</option>
			</c:if>
			</c:forEach>
			</select></td>
			</tr>
			<tr>
			<td>租户信息</td>
			<!-- <td><input type="text" name="l_id"></td> -->
			<td colspan="3" class="control">
			<select name="l_id" >
			<c:forEach var="i" items="${lessee}" >
			<c:if test="${i.lId==rect.lId }">
			<option value="${i.lId}" selected="selected"> ${i.lName}</option>
			</c:if>
			<c:if test="${i.lId!=rect.lId }">
			<option value="${i.lId}" > ${i.lName}</option>
			</c:if>
			</c:forEach>
			</select></td>
			</tr>
			<tr>
			<td>缴纳金额</td>
			<td colspan="3" class="control"><input type="text" name="r_money" value="${rect.rMoney}"></td>
			</tr>
			<tr>
			<td>缴纳时间</td>
			<td colspan="3" class="control">
			<input type="date" name="r_time" value="${rect.rTime}"></td>
			</tr>
			<tr>
			<td>备注</td>
			<td colspan="3" class="control"><input type="text" name="r_remark" value="${rect.rRemark}"></td>
			</tr>
			</table>	
			<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
			</form>
</body>
</html>