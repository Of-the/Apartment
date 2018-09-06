<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 修缮记录信息修改</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改修缮记录信息</h3>
<form action="/Apartment/RepairEditServlet.do" method="post">
		<h2>修改</h2>
			<table class="form-table">
			<tr>
			<td>序号</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_id" value="${repair.raId}" readonly="readonly"  replaceholder="${repair.raId}"> 
			</td>
			</tr> 
			<tr>
			<td>房屋信息</td>
			<td colspan="3" class="control">
			<%-- <input type="text" name="h_id" placeholder="${repair.hId}"></td> --%>
			<select name="h_id">
			<c:forEach var="i" items="${house}" >
			<c:if test="${i.hId==repair.hId}">
			<option value="${i.hId}" selected="selected">${i.hArea}</option>
			</c:if>
			<c:if test="${i.hId!=repair.hId}">
			<option value="${i.hId}" >${i.hArea}</option>
			</c:if>
			</c:forEach>
			</select>
			</td>
			</tr>
			<tr>
			<td>负责人</td>
			<td colspan="3" class="control">
			<%-- <input type="text" name="lp_id" placeholder="${repair.lpId}"></td> --%>
			
			<select name="lp_id">
			<c:forEach var="i" items="${logistical}" >
			<c:if test="${i.lpId==repair.lpId}">
			<option value="${i.lpId}" selected="selected">${i.lpName}</option>
			</c:if>
			<c:if test="${i.lpId!=repair.lpId}">
			<option value="${i.lpId}" >${i.lpName}</option>
			</c:if>
			</c:forEach>
			</select>
			</td>
			</tr>
			<tr>
			<td>修缮说明</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_info" placeholder="${repair.raInfo}"></td>
			</tr>
			<tr>
			<td>修缮时间</td>
			<td colspan="3" class="control">
			<input type="date" name="ra_time" placeholder="${repair.raTime}"></td>
			</tr>
			<tr>
			<td>修缮结果</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_end" placeholder="${repair.raEnd}"></td>
			</tr>
			<tr>
			<td>备注说明</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_desc" placeholder="${repair.raDesc}"></td>
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