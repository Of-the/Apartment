<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 租户信息详情查看</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>租户信息详情</h3>
	<form action="RectDetailServlet" method="post">
		<table class="form-table">
		<tr>
				<td class="label">序号</td>
				<td class="detail">
					${rect.rId}
				</td>
			</tr>
			<tr>
				<td class="label">房屋信息</td>
				<td colspan="3" class="detail">	
				 ${rect.hId} 
				</td>
			</tr>
			<tr>
				<td class="label">租户信息</td>
				<td colspan="3" class="detail"
				>${rect.lId} 
			<%-- <td><a href="LesseeDetailServlet.do?id=${i.lId}">${i.lId}租户信息</a> --%>
				</td>
			</tr>
			<tr>
				<td class="label">缴纳金额</td>
				<td colspan="3" class="detail">
					${rect.rMoney}
				</td>
			</tr>
			<tr>
				<td class="label">缴纳时间</td>
				<td colspan="3" class="detail">
					${rect.rTime}
				</td>
			</tr>
			<tr>
				<td class="label">备注</td>
				<td colspan="3" class="detail">
					${rect.rRemark}
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