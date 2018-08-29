<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>XX系统 - 房屋信息管理</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>房屋信息管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="view/House/houseAdd.jsp">添加信息</a>
		</div>
	</div>

	<table class="list" border="1">
		<tr>
			<th>序号</th>
			<th>所属地区</th>
			<th>所属小区</th>
			<th>单元号</th>
			<th>所属楼层</th>
			<th>房间号</th>
			<th>面积</th>
			<th>朝向</th>
			<th>装修</th>
			<th>是否双气</th>
			<th>限住人数</th>
			<th>出租价格(元)</th>
			<th>出租状态</th>
			<th>操作</th>
		</tr>
		<c:forEach var="i" items="${house}">	
		<tr>
			<td>${i.hId}</td>
			<td>${i.hArea}</td>
			<td>${i.hEstate}</td>
			<td>${i.hUnitnumber}</td>
			<td>${i.hFloor}</td>
			<td>${i.hRoomno}</td>
			<td>${i.hAcreage}</td>
			<td>${i.hDirection}</td>
			<td>${i.hFitment}</td>
			<td>${i.hIsdoubleair}</td>
			<td>${i.hLimit}</td>
			<td>${i.hPrice}</td>
			<td>${i.hStatus}</td>
			<td>
				<a class="fa fa-info" title="详情" href="HouseDetailServlet?id=${i.hId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="HouseUpdateServlet?id=${i.hId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="HouseDeleteServlet?id=${i.hId}" onclick="deleteh(${i.hId})" id="a${i.hId}"></a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div class="pager-info">
		<div>共有 ${count}条记录，第 ${current}/${count} 页 </div>
		<div>
			<ul class="pagination">
				<li class="paginate_button previous disabled }">
				<a href="#">上一页</a>
				</li>
				<li class="paginate_button active">
				<a href="#">1</a>
				</li>
				<li class="paginate_button next disabled">
				<a href="#">下一页</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<script src="static/lib/jquery/jquery.js"></script>
	<script type="text/javascript">
		function deleteh(a) {
			$.ajax({
				url:"HouseDeleteServlet",
				data:"id="+a,
				success:function(){
					alert("确定删除该信息吗？")
					$("#a"+a).parent().parent().remove();
				}
			})
		}			
	</script>
</body>
</html>