<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 修缮记录详情查看</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修缮记录详情</h3>
	<form action="Apartment/repairDetailServlet.do" method="post">
		<table class="form-table">
		<tr>
				<td class="label">序号</td>
				<td class="detail">
					${repair.raId}
				</td>
			</tr>
			<tr>
				<td class="label">房屋信息</td>
				<td colspan="3" class="detail">
					${repair.hId}
				</td>
			</tr>
			<tr>
				<td class="label">负责人</td>
				<td colspan="3" class="detail">
					${repair.lpId}
				</td>
			</tr>
			<tr>
				<td class="label">修缮说明</td>
				<td colspan="3" class="detail">
					${repair.raInfo}
				</td>
			</tr>
			<tr>
				<td class="label">修缮时间</td>
				<td colspan="3" class="detail">
					${repair.raTime}
				</td>
			</tr>
			<tr>
				<td class="label">修缮结果</td>
				<td colspan="3" class="detail">
					${repair.raEnd}
				</td>
			</tr>
			<tr>
				<td class="label">押金</td>
				<td colspan="3" class="detail">
					${repair.raDesc}
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