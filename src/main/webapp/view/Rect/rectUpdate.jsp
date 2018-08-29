<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="http://localhost:8080/Apartment/">
<title>Insert title here</title>
</head>
<body>
<form action="RectAddServlet">
		<h2>修改</h2>
			<table class="table-bordered">
			<tr>
			<td>序号</td>
			<td><input type="text" name="r_id"></td>
			</tr>
			<tr>
			<td>房屋信息</td>
			<td><input type="text" name="h_id"></td>
			</tr>
			<tr>
			<td>租户信息</td>
			<td><input type="text" name="l_id"></td>
			</tr>
			<tr>
			<td>缴纳金额</td>
			<td><input type="text" name="r_money"></td>
			</tr>
			<tr>
			<td>缴纳时间</td>
			<td><input type="text" name="r_time"></td>
			</tr>
			<tr>
			<td>备注</td>
			<td><input type="text" name="r_remark"></td>
			</tr>
			</table>	
			<input type="submit" value="修改">
			</form>
</body>
</html>