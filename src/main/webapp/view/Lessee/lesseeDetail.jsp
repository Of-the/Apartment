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
	<form action="LesseeDetailServlet" method="post">
		<table class="form-table">
		<tr>
				<td class="label">序号</td>
				<td class="detail">
					${lessee.lId}
				</td>
			</tr>
			<tr>
				<td class="label">租客姓名</td>
				<td class="detail">
					${lessee.lName}
				</td>
			</tr>
			<tr>
				<td class="label">租客号码</td>
				<td colspan="3" class="detail">
					${lessee.lTel}
				</td>
			</tr>
			<tr>
				<td class="label">性别</td>
				<td colspan="3" class="detail">
					${lessee.lSex}
				</td>
			</tr>
			<tr>
				<td class="label">籍贯</td>
				<td colspan="3" class="detail">
					${lessee.lNativeplace}
				</td>
			</tr>
			<tr>
				<td class="label">身份证号</td>
				<td colspan="3" class="detail">
					${lessee.lIdcard}
				</td>
			</tr>
				<tr>
				<td class="label">添加时间</td>
				<td colspan="3" class="detail">
					${lessee.lAddtime}
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