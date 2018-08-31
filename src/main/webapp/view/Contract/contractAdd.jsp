<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 租赁合同信息添加</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加租赁合同信息</h3>
<form action="/Apartment/ContractAddServlet.do" method="post">
		<h2>添加</h2>
			<table class="form-table">
			<!-- <tr>
			<td>序号</td>
			<td colspan="3" class="control">
			<input type="text" name="c_id" placeholder="填写序号">
			</td>
			</tr>   -->
			<tr>
			<td>合同号</td>
			<td colspan="3" class="control">
			<input type="text" name="c_number" placeholder="合同号"></td>
			</tr>
			<tr>
			<td>房屋信息</td>
			<td colspan="3" class="control">
			<!-- <input type="text" name="h_id" placeholder="房屋信息"> -->
			<!-- <a href="HouseAddServlet.do">房屋信息</a> -->
			<select name="h_id">
			<c:forEach var="i" items="${house}" >
			<option value="${i.hId}">${i.hArea}</option>
			</c:forEach>
			</select>
			</td>
			</tr>
			<tr>
			<td>租户信息</td>
			<td colspan="3" class="control">
			<!-- <input type="text" name="l_id" placeholder="租户信息"></td> -->
			<!-- <a href="LesseeAddServlet.do">租户信息</a> -->
			<select name="l_id">
			<c:forEach var="i" items="${lessee}" >
			<option value="${i.lId}">${i.lName}</option>
			</c:forEach>
			</select>
			</td>
			</tr>
			
			<tr>
			<td>合同日期</td>
			<td colspan="3" class="control">
			<input type="date" name="c_time" placeholder="合同日期"></td>
			</tr>
			<tr>
			<td>租赁开始时间</td>
			<td colspan="3" class="control">
			<input type="date" name="c_starttime" placeholder="合同日期"></td>
			</tr>
			<tr>
			<td>租赁结束时间</td>
			<td colspan="3" class="control">
			<input type="date" name="c_endtime" placeholder="合同日期"></td>
			</tr>
			<tr>
			<td>房租总额</td>
			<td colspan="3" class="control">
			<input type="text" name="c_money" placeholder="房租总额"></td>
			</tr>
			<tr>
			<td>付款方式</td>
			<td colspan="3" class="control">
			<input type="text" name="c_pay" placeholder="付款方式"></td>
			</tr>
			<tr>
			<td>押金</td>
			<td colspan="3" class="control">
			<input type="text" name="c_deposit" placeholder="押金"></td>
			</tr>
			<tr>
			<td >付款期数</td>
			<td colspan="3" class="control">
			<!-- <input type="text" name="c_periods" placeholder="付款期数"></td> -->
			<select name="c_periods" value="c_periods">
					<option value="1">月付</option>
					<option value="2">半年付</option>
					<option value="3">年付</option>
				</select>
			</tr>
			<tr>
			<td>合同签署人</td>
			<td colspan="3" class="control">
			<input type="text" name="c_people" placeholder="合同签署人"></td>
			</tr>
			<tr>
			<td>合同状态</td>
			<td colspan="3" class="control">
			<!-- <input type="text" name="c_status" placeholder="合同状态"> -->
			<select name="c_status" value="c_status">
					<option value="1">已生效</option>
					<option value="2">已失效</option>
				</select>
			</td>
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