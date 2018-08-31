
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 房屋信息修改</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>修改房屋信息</h3>
<form action="/Apartment/HouseEditServlet.do">
		<h2>修改</h2>
			<table class="form-table">
			<tr>
			<td>序号</td>
			<td colspan="3" class="control">
			<input type="text" name="h_id" value="${house.hId}" readonly="readonly"  placeholder="${house.hId}">
			</td>
			</tr> 
			<tr>
			<td>所属地区</td>
			<td colspan="3" class="control">
			<input type="text" name="h_area" placeholder="${house.hArea}"></td>
			</tr>
			<tr>
			<td>所属小区</td>
			<td colspan="3" class="control">
			<input type="text" name="h_estate" placeholder="${house.hEstate}"></td>
			</tr>
			<tr>
			<td>单元号</td>
			<td colspan="3" class="control">
			<input type="text" name="h_unitNumber" placeholder="${house.hUnitnumber}"></td>
			</tr>
			<tr>
			<td>所属楼层</td>
			<td colspan="3" class="control">
			<input type="text" name="h_floor" placeholder="${house.hFloor}"></td>
			</tr>
			<tr>
			<td>房间号</td>
			<td colspan="3" class="control">
			<input type="text" name="h_roomNo" placeholder="${house.hRoomno}"></td>
			</tr>
			<tr>
			<td>面积</td>
			<td colspan="3" class="control">
			<input type="text" name="h_acreage" placeholder="${house.hAcreage}"></td>
			</tr>
			<tr>
			<td>朝向</td>
			<td colspan="3" class="control">
			<input type="text" name="h_direction" placeholder="${house.hDirection}"></td>
			</tr>
			<tr>
			<td>装修</td>
			<td colspan="3" class="control">
			<input type="text" name="h_fitment" placeholder="${house.hFitment}"></td>
			</tr>
			<tr>
			<td >是否双气</td>
			<td colspan="3" class="control">
			<%-- <input type="text" name="h_isDoubleAir" placeholder="${house.hIsdoubleair}"></td> --%>
			<select name="h_isDoubleAir" value="${house.hIsdoubleair}">
					<option value="1">是</option>
					<option value="0">否</option>
				</select>
			</tr>
			<tr>
			<td>限住人数</td>
			<td colspan="3" class="control">
			<input type="text" name="h_limit" placeholder="${house.hLimit}"></td>
			</tr>
			<tr>
			<td>出租价格(元)</td>
			<td colspan="3" class="control">
			<input type="text" name="h_price" placeholder="${house.hPrice}"></td>
			</tr>
			<tr>
			<td >出租状态</td>
			<td colspan="3" class="control">
			<%-- <input type="text" name="h_status" placeholder="${house.hStatus}"></td> --%>
			<select name="h_status" value="${house.hStatus}">
					<option value="1">已出租</option>
					<option value="2">未出租</option>
					<option value="3">停止状态</option>
				</select>
			</tr>
				<tr>
			<td>房屋图片</td>
			<td colspan="3" class="control">
				<input type="file" name="h_img" value="${house.hImg}" placeholder="${house.hImg}">
			</td>
		</tr>
		<tr>
			<td>完整地址信息</td>
			<td colspan="3" class="control">
				<input type="text" name="h_address" value="${house.hAddress}" placeholder="${house.hAddress}">
			</td>
		</tr>
			<tr>
			<td>添加时间</td>
			<td colspan="3" class="control">
			<input type="date" name="h_addtime" placeholder="${house.hAddtime}"></td>
			</tr>
			<tr>
			<td>修改时间</td>
			<td colspan="3" class="control">
			<input type="date" name="h_updatetime" placeholder="${house.hUpdatetime}"></td>
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