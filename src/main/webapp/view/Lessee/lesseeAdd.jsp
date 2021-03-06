<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 租户信息添加</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加租户信息</h3>
<form action="/Apartment/LesseeAddServlet.do">
		<h2>添加</h2>
			<table class="form-table">
		<!-- 	 <tr>
			<td>租客号</td>
			<td colspan="3" class="control">
			<input type="text" name="l_id" placeholder="租客号">
			</td>
			</tr>   -->
			<tr>
			<td>租客姓名</td>
			<td colspan="3" class="control">
			<input type="text" name="l_name" placeholder="租客姓名"></td>
			</tr>
			<tr>
			<td>号码</td>
			<td colspan="3" class="control">
			<input type="text" name=l_tel placeholder="租客号码"></td>
			</tr>
			<tr>
			<td>性别</td>
			<td colspan="3" class="control">
		 	<select name="l_sex">
					<option value="男">男</option>
					<option value="女">女</option>
				</select> 
<!-- 			 <input type="text" name="l_sex" placeholder="性别"></td> 
 -->			</tr>
			<tr>
			<td>籍贯</td>
			<td colspan="3" class="control">
			<input type="text" name="l_nativeplace" placeholder="籍贯"></td>
			</tr>
			<tr>
			<td>身份证号</td>
			<td colspan="3" class="control">
			<input type="text" name="l_idcard" placeholder="身份证号"></td>
			</tr>
		 	<tr>
			 <td>添加时间</td>
			<td colspan="3" class="control">
			<input type="date" name="l_addtime" placeholder="添加时间"></td>
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