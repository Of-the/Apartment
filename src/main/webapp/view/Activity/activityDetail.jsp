<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 公寓活动详情查看</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>公寓活动详情</h3>
	<form action="Apartment/ActivityDetailServlet.do" method="post">
		<table class="form-table">
		<tr>
				<td class="label">序号</td>
				<td class="detail">
					${activity.aId}
				</td>
			</tr>
			<tr>
				<td class="label">活动日期</td>
				<td colspan="3" class="detail">
					${activity.aTime}
				</td>
			</tr>
			<tr>
				<td class="label">活动主题</td>
				<td colspan="3" class="detail">
					${activity.aTitle}
				</td>
			</tr>
			<tr>
				<td class="label">活动内容</td>
				<td colspan="3" class="detail">
					${activity.aInfo}
				</td>
			</tr>
			<tr>
				<td class="label">活动地点</td>
				<td colspan="3" class="detail">
					${activity.aPlace}
				</td>
			</tr>
			<tr>
				<td class="label">费用</td>
				<td colspan="3" class="detail">
					${activity.aMoney}
				</td>
			</tr>
			<tr>
				<td class="label">活动组织</td>
				<td colspan="3" class="detail">
					${activity.aOrgnized}
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