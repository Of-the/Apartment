<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 公寓活动信息添加</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加公寓活动信息</h3>
<form action="/Apartment/ActivityAddServlet.do">
		<h2>添加</h2>
			<table class="form-table">
		<!-- 	 <tr>
			<td>序号</td>
			<td colspan="3" class="control">
			<input type="text" name="a_id" placeholder="填写序号">
			</td>
			</tr>   -->
			<tr>
			<td>活动日期</td>
			<td colspan="3" class="control">
			 <input type="date" name=a_time placeholder="活动日期"> 
			
			</td>
			</tr>
			<tr>
			<td>活动主题</td>
			<td colspan="3" class="control">
			<input type="text" name="a_title" placeholder="活动主题"></td>
			</tr>
			<tr>
			<td>活动内容</td>
			<td colspan="3" class="control">
			<input type="text" name="a_info" placeholder="活动内容"></td>
			</tr>
			<tr>
			<td>活动地点</td>
			<td colspan="3" class="control">
			<input type="text" name="a_place" placeholder="活动地点"></td>
			</tr>
			<tr>
			<td>费用</td>
			<td colspan="3" class="control">
			<input type="text" name="a_money" placeholder="费用"></td>
			</tr>
			<tr>
			<td>活动组织方</td>
			<td colspan="3" class="control">
			<input type="text" name="a_orgnized" placeholder="活动组织方"></td>
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