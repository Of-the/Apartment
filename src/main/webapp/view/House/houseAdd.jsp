<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 房屋信息添加</title>
	<link rel="stylesheet" href="/Apartment/static/css/main.css">
	<link rel="stylesheet" href="/Apartment/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加房屋信息</h3>
<form action="HouseAddServlet">
		<h2>添加</h2>
			<table class="form-table">
			<tr>
			<td>序号</td>
			<td colspan="3" class="control">
			<input type="text" name="h_id" placeholder="填写序号">
			</td>
			</tr> 
			<tr>
			<td>所属地区</td>
			<td colspan="3" class="control">
			<input type="text" name="h_area" placeholder="填写地区"></td>
			</tr>
			<tr>
			<td>所属小区</td>
			<td colspan="3" class="control">
			<input type="text" name="h_estate" placeholder="小区名字"></td>
			</tr>
			<tr>
			<td>单元号</td>
			<td colspan="3" class="control"><input type="text" name="h_unitNumber" placeholder="单元号"></td>
			</tr>
			<tr>
			<td>所属楼层</td>
			<td colspan="3" class="control"><input type="text" name="h_floor" placeholder="楼层"></td>
			</tr>
			<tr>
			<td>房间号</td>
			<td colspan="3" class="control"><input type="text" name="h_roomNo" placeholder="房间号"></td>
			</tr>
			<tr>
			<td>面积</td>
			<td colspan="3" class="control"><input type="text" name="h_acreage" placeholder="面积"></td>
			</tr>
			<tr>
			<td>朝向</td>
			<td colspan="3" class="control"><input type="text" name="h_direction" placeholder="朝向"></td>
			</tr>
			<tr>
			<td>装修</td>
			<td colspan="3" class="control"><input type="text" name="h_fitment" placeholder="装修"></td>
			</tr>
			<tr>
			<td >是否双气</td>
			<td colspan="3" class="control"><input type="text" name="h_isDoubleAir" placeholder="是否双气"></td>
			</tr>
			<tr>
			<td>限住人数</td>
			<td colspan="3" class="control"><input type="text" name="h_limit" placeholder="限住人数"></td>
			</tr>
			<tr>
			<td>出租价格(元)</td>
			<td colspan="3" class="control"><input type="text" name="h_price" placeholder="出租价格（元/月）"></td>
			</tr>
			<tr>
			<td >出租状态</td>
			<td colspan="3" class="control">
			<!-- <input type="text" name="h_status" placeholder="出租状态"> -->
			<select>
					<option>出租状态</option>
					<option>已出租</option>
					<option>未出租</option>
				</select>
			</td>
			</tr>
			<tr>
			<td>房屋图片</td>
			<td colspan="3" class="control">
				<input type="file" name="h_img" placeholder="">
			</td>
		</tr>
		<tr>
			<td>完整地址信息</td>
			<td colspan="3" class="control">
				<input type="text" name="h_address" placeholder="完整地址信息">
			</td>
		</tr>

		<!-- <tr>
			<td>备注说明</td>
			<td colspan="3" class="control">
				<textarea class="p100" name="" placeholder="备注说明信息"></textarea>
			</td>
		</tr> -->
			</table>	
			<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
	</form>
</div>
</body>
</html>