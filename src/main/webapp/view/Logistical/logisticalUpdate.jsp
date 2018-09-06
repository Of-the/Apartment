
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 后勤人员信息修改</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改后勤人员信息</h3>
<form action="/Apartment/LogisticalEditServlet.do">
		<h2>修改</h2>
			<table class="form-table">
			 <tr>
			<td>编号</td>
			<td colspan="3" class="control">
			 <input type="text" name="lp_id" value="${logistical.lpId}" readonly="readonly" placeholder="编号"> 
			</td>
			</tr>  
			<tr>
			<td>后勤人员姓名</td>
			<td colspan="3" class="control">
			<input type="text" name="lp_name" placeholder="${logistical.lpName}"></td>
			</tr>
			<tr>
			<td>身份证号</td>
			<td colspan="3" class="control">
			<input type="text" name="lp_idcard" placeholder="${logistical.lpIdcard}"></td>
			</tr>
			<tr>
			<td>号码</td>
			<td colspan="3" class="control">
			<input type="text" name="lp_tel" placeholder="${logistical.lpTel}"></td>
			</tr>
			<tr>
			<td>性别</td>
			<td colspan="3" class="control">
			<select name="lp_sex" value="${logistical.lpSex}">
					<option value="男">男</option>
					<option value="女">女</option>
				</select> 
			<%-- <input type="text" name="lp_sex" placeholder="${logistical.lpSex}"> --%></td> 
			</tr>
			<tr>
			<td>岗位</td>
			<td colspan="3" class="control">
			<input type="text" name="lp_job" placeholder="${logistical.lpJob}"></td>
			</tr>
			<tr>
			<td>添加时间</td>
			<td colspan="3" class="control">
			<input type="date" name="lp_addtime" placeholder="${logistical.lpAddtime}"></td>
			</tr>
			<tr>
			<td>工资</td>
			<td colspan="3" class="control">
			<input type="text" name="lp_salary" placeholder="${logistical.lpSalary}"></td>
			</tr>
			<tr>
			<td>籍贯</td>
			<td colspan="3" class="control">
			<input type="text" name="lp_nativeplace" placeholder="${logistical.lpNativeplace}"></td>
			</tr>

			
			<tr>
			</table>	
			<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
			</form>
</body>
</html>