<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 租赁合同信息修改</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改租赁合同信息</h3>
<form action="/Apartment/ContractEditServlet.do" method="post">
		<h2>修改</h2>
			<table class="form-table">
			<tr>
			<td>序号</td>
			<td colspan="3" class="control">
			 <input type="text" name="c_id" value="${contract.cId}" readonly="readonly" placeholder="${contract.cId}"> 
			
			</td>
			</tr> 
			<tr>
			<td>合同号</td>
			<td colspan="3" class="control">
			<input type="text" name="c_number" placeholder="${contract.cNumber}"></td>
			</tr>
			<tr>
			<td>房屋信息</td>
			<td colspan="3" class="control">
<%-- 			<input type="text" name="h_id" placeholder="${contract.hId}"></td>
 --%>		
 			<select name="h_id">
			<c:forEach var="i" items="${house}" >
			<c:if test="${i.hId==contract.hId}">
			<option value="${i.hId}" selected="selected">${i.hArea}</option>contract
			</c:if>
			<c:if test="${i.hId!=contract.hId}">
			<option value="${i.hId}">${i.hArea}</option>contract
			</c:if>
			</c:forEach>
			</select>	
 			</tr>
			<tr>
			<td>租户信息</td>
			<td colspan="3" class="control">
<%-- 			<input type="text" name="l_id" placeholder="${contract.lId}"></td>
 --%>		<select name="l_id">
 			<c:forEach var="i" items="${lessee}" >
 			<c:if test="${i.lId==contract.lId}">
			<option value="${i.lId}" selected="selected">${i.lName}</option>contract
			</c:if>
			<c:if test="${i.lId!=contract.lId}">
			<option value="${i.lId}">${i.lName}</option>
			</c:if>
			</c:forEach>
			</select>
 			</tr>
			<tr>
			<td>合同日期</td>
			<td colspan="3" class="control">
			<input type="text" name="c_time" placeholder="${contract.cTime}"></td>
			</tr>
			<tr>
			<td>租赁开始时间</td>
			<td colspan="3" class="control">
			<input type="text" name="c_starttime" placeholder="${contract.cStarttime}"></td>
			</tr>
			<tr>
			<td>租赁结束时间</td>
			<td colspan="3" class="control">
			<input type="text" name="c_endime" placeholder="${contract.cEndtime}"></td>
			</tr>
			<tr>
			<td>房租总额</td>
			<td colspan="3" class="control">
			<input type="text" name="c_money" placeholder="${contract.cMoney}"></td>
			</tr>
			<tr>
			<td>付款方式</td>
			<td colspan="3" class="control">
			<input type="text" name="c_pay" placeholder="${contract.cPay}"></td>
			</tr>
			<tr>
			<td>押金</td>
			<td colspan="3" class="control">
			<input type="text" name="c_deposit" placeholder="${contract.cDeposit}"></td>
			</tr>
			<tr>
			<td >付款期数</td>
			<td colspan="3" class="control">
			<%-- <input type="text" name="c_periods" placeholder="${contract.cPeriods}"> --%>
			<select name="c_status" value="c_status">
					<option value="1">月付</option>
					<option value="2">半年付</option>
					<option value="2">年付</option>
			</select>
			</td>
			</tr>
			<tr>
			<td>合同签署人</td>
			<td colspan="3" class="control">
			<input type="text" name="c_people" placeholder="${contract.cPeople}"></td>
			</tr>
			<tr>
			<td>合同状态</td>
			<td colspan="3" class="control">
			<select name="c_status" value="c_status">
					<option value="1">已生效</option>
					<option value="2">已失效</option>
				</select>
			<%-- <input type="text" name="c_status" placeholder="${contract.cStatus}"> --%>
			
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