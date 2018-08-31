<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 房屋信息详情查看</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>房屋信息详情</h3>
	<form action="HouseShowServlet.do" method="post">
		<table class="form-table">
			<tr>
				<td class="label">序号</td>
				<td class="detail">
					${house.hId}
				</td>
			</tr>
			<tr>
				<td class="label">地区</td>
				<td class="detail">
					${house.hArea}
				</td>
			</tr>
			<tr>
				<td class="label">小区</td>
				<td colspan="3" class="detail">
					${house.hEstate}
				</td>
			</tr>
			<tr>
				<td class="label">单元号</td>
				<td colspan="3" class="detail">
					${house.hUnitnumber}
				</td>
			</tr>
			<tr>
				<td class="label">楼层</td>
				<td colspan="3" class="detail">
					${house.hFloor}
				</td>
			</tr>
			<tr>
				<td class="label">房间号</td>
				<td colspan="3" class="detail">
					${house.hRoomno}
				</td>
			</tr>
			<tr>
				<td class="label">面积(平米)</td>
				<td colspan="3" class="detail">
					${house.hAcreage}
				</td>
			</tr>
			<tr>
				<td class="label">朝向</td>
				<td colspan="3" class="detail">
					${house.hDirection}
				</td>
			</tr>
			<tr>
				<td class="label">装修</td>
				<td colspan="3" class="detail">
				${house.hFitment}
				</td>
			</tr>
			<tr>
				<td class="label">是否双气</td>
				<td colspan="3" class="detail">
					${house.hIsdoubleair}
				</td>
			</tr>
			<tr>
				<td class="label">限住人数</td>
				<td colspan="3" class="detail">
					${house.hLimit}
				</td>
			</tr>
			<tr>
				<td class="label">配套设施</td>
				<td colspan="3" class="detail">
				${house.hUnitnumber}
				</td>
			</tr>
			<tr>
				<td class="label">出租价格(元/月)</td>
				<td colspan="3" class="detail">
					${house.hPrice}
				</td>
			</tr>
			<tr>
				<td class="label">出租状态</td>
				<td colspan="3" class="detail">
					${house.hStatus}
				</td>
			</tr>
			<tr>
				<td class="label">房屋图片</td>
				<td colspan="3" class="detail">
					<img src="${house.hImg}" width="300px" height="200px" >
				</td>
			</tr>
			<tr>
				<td class="label">完整地址信息</td>
				<td colspan="3" class="detail">
					${house.hAddress}
				</td>
			</tr>
			<tr>
				<td class="label">添加时间</td>
				<td colspan="3" class="detail">
					${house.hAddtime}
				</td>
			</tr>
			<tr>
				<td class="label">更新时间</td>
				<td colspan="3" class="detail">
				${house.hUpdatetime}
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