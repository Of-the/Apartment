<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 修缮记录信息添加</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加修缮记录信息</h3>
<form action="/Apartment/RepairAddServlet.do" method="post">
		<h2>添加</h2>
			<table class="form-table">
			<!--  <tr>
			<td>序号</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_id" value="" placeholder="填写序号">
			</td>
			</tr>   -->
			<tr>
			<td>房屋信息</td>
			<td colspan="3" class="control">
			<!-- <input type="text" name="h_id" placeholder="房屋信息"> -->
			<!-- <a href="HouseAddServlet">房屋信息</a> -->
			<select name="h_id">
			<c:forEach var="i" items="${house}" >
			<option value="${i.hId}">${i.hArea}</option>
			</c:forEach>
			</select>
			
			</td>
			</tr>
			<tr>
			<td>负责人</td>
			<td colspan="3" class="control">
			<select name="lp_id">
			<c:forEach var="i" items="${logistical}" >
			<option value="${i.lpId}">${i.lpName}</option>
			</c:forEach>
			</select>
			<!-- <input type="text" name="lp_id" placeholder="负责人"></td> -->
			</tr>
			<tr>
			<td>修缮说明</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_info" placeholder="修缮说明"></td>
			</tr>
			<tr>
			<td>修缮时间</td>
			<td colspan="3" class="control">
			<input type="date" name="ra_time" placeholder="修缮时间"></td>
			</tr>
			<tr>
			<td>修缮结果</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_end" placeholder="修缮结果"></td>
			</tr>
			<tr>
			<td>备注说明</td>
			<td colspan="3" class="control">
			<input type="text" name="ra_desc" placeholder="备注说明"></td>
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