<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/Apartment/HouseSearchServlet.do" method="post">
<div>
		 按名字搜索:<input type="text" name="h_address" />
		  <input type="submit" value="搜索" />
		  
		</div>
		
		<table class="form-table">
			<tr>
				<td class="label">序号</td>
				<td class="detail">
					${house[1].hId}
				</td>
			</tr>
			<tr>
				<td class="label">地区</td>
				<td class="detail">
					${house[1].hArea}
				</td>
			</tr>
			<tr>
				<td class="label">小区</td>
				<td colspan="3" class="detail">
					${house[1].hEstate}
				</td>
			</tr>
			<tr>
				<td class="label">单元号</td>
				<td colspan="3" class="detail">
					${house[1].hUnitnumber}
				</td>
			</tr>
			<tr>
				<td class="label">楼层</td>
				<td colspan="3" class="detail">
					${house[1].hFloor}
				</td>
			</tr>
			<tr>
				<td class="label">房间号</td>
				<td colspan="3" class="detail">
					${house[1].hRoomno}
				</td>
			</tr>
			<tr>
				<td class="label">面积(平米)</td>
				<td colspan="3" class="detail">
					${house[1].hAcreage}
				</td>
			</tr>
			<tr>
				<td class="label">朝向</td>
				<td colspan="3" class="detail">
					${house[1].hDirection}
				</td>
			</tr>
			<tr>
				<td class="label">装修</td>
				<td colspan="3" class="detail">
				${house[1].hFitment}
				</td>
			</tr>
			<tr>
				<td class="label">是否双气</td>
				<td colspan="3" class="detail">
					${house[1].hIsdoubleair}
				</td>
			</tr>
			<tr>
				<td class="label">限住人数</td>
				<td colspan="3" class="detail">
					${house[1].hLimit}
				</td>
			</tr>
			<tr>
				<td class="label">配套设施</td>
				<td colspan="3" class="detail">
				${house[1].hUnitnumber}
				</td>
			</tr>
			<tr>
				<td class="label">出租价格(元/月)</td>
				<td colspan="3" class="detail">
					${house[1].hPrice}
				</td>
			</tr>
			<tr>
				<td class="label">出租状态</td>
				<td colspan="3" class="detail">
					${house[1].hStatus}
				</td>
			</tr>
			<tr>
				<td class="label">房屋图片</td>
				<td colspan="3" class="detail">
					<img src="${house[1].hImg}" width="300px" height="200px" >
				</td>
			</tr>
			<tr>
				<td class="label">完整地址信息</td>
				<td colspan="3" class="detail">
					${house[1].hAddress}
				</td>
			</tr>
			<tr>
				<td class="label">添加时间</td>
				<td colspan="3" class="detail">
					${house[1].hAddtime}
				</td>
			</tr>
			<tr>
				<td class="label">更新时间</td>
				<td colspan="3" class="detail">
				${house[1].hUpdatetime}
				</td>
			</tr>

		</table>
		
</form>

</body>
</html>