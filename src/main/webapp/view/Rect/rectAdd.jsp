<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <base href="http://localhost:8080/Apartment/"> -->
<title>房租信息管理</title>
</head>
<body>
<form action="RectAddServlet">
		<h2>添加租户信息</h2>
			<table class="table-bordered">
			<tr>
			<td>序号</td>
			<td><input type="text" name="r_id"  placeholder="序号"></td>
			</tr>
			<tr>
			<td>房屋信息</td>
			<td><input type="text" name="h_id" placeholder="房屋信息"></td>
			</tr>
			<tr>
			<td>租户信息</td>
			<td><input type="text" name="l_id" placeholder="租户信息"></td>
			</tr>
			<tr>
			<td>缴纳金额</td>
			<td><input type="text" name="r_money" placeholder="缴纳金额"></td>
			</tr>
			<tr>
			<td>缴纳时间</td>
			<td><input type="text" name="r_time" placeholder="缴纳时间"></td>
			</tr>
			<tr>
			<td>备注</td>
			<td><input type="text" name="r_remark" placeholder="备注"></td>
			</tr>
			</table>	
			<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
	</form>
</body>
</html>