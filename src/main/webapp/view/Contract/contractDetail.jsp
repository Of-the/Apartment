<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 租赁合同详情查看</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>租赁合同详情</h3>
	<form action="ContractShowServlet.do" method="post">
		<table class="form-table">
		<tr>
				<td class="label">序号</td>
				<td class="detail">
					${contract.cId}
				</td>
			</tr>
			<tr>
				<td class="label">合同号</td>
				<td class="detail">
					${contract.cNumber}
				</td>
			</tr>
			<tr>
				<td class="label">房屋信息</td>
				<td colspan="3" class="detail">
					${contract.hId}
				</td>
			</tr>
			<tr>
				<td class="label">租户信息</td>
				<td colspan="3" class="detail">
					${contract.lId}
				</td>
			</tr>
			<tr>
				<td class="label">合同日期</td>
				<td colspan="3" class="detail">
					${contract.cTime}
				</td>
			</tr>
			<tr>
				<td class="label">租赁开始时间</td>
				<td colspan="3" class="detail">
					${contract.cStarttime}
				</td>
			</tr>
			<tr>
				<td class="label">租赁结束时间</td>
				<td colspan="3" class="detail">
					${contract.cEndtime}
				</td>
			</tr>
			<tr>
				<td class="label">房租总额</td>
				<td colspan="3" class="detail">
					${contract.cMoney}
				</td>
			</tr>
			<tr>
				<td class="label">付款方式</td>
				<td colspan="3" class="detail">
					${contract.cPay}
				</td>
			</tr>
			<tr>
				<td class="label">押金</td>
				<td colspan="3" class="detail">
					${contract.cDeposit}
				</td>
			</tr>
			<tr>
				<td class="label">付款期数</td>
				<td colspan="3" class="detail">
				${contract.cPeriods}
				</td>
			</tr>
			<tr>
				<td class="label">合同签署人</td>
				<td colspan="3" class="detail">
					${contract.cPeople}
				</td>
			</tr>
			<tr>
				<td class="label">合同状态</td>
				<td colspan="3" class="detail">
				
					${contract.cStatus}
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