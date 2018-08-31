<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>公寓管理系统 - 房租信息管理</title>
	<link rel="stylesheet" href="static/css/fenye.css">
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>房租信息管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="view/Rect/rectAdd.jsp">添加信息</a>
		</div>
	</div>
	<table class="list" border="1">
		<tr>
			<th>序号</th>
			<th>房屋信息</th>
			<th>租户信息</th>
			<th>缴纳金额</th>
			<th>缴纳时间</th>
			<th>备注</th>
			<th>操作</th>
		</tr>
		<c:forEach var="i" items="${rect}">	
		<tr>
			<td>${i.rId}</td>
			<td><a href="HouseDetailServlet.do?id=${i.hId}">${i.hId}房屋信息</a></td>
			<td><a href="LesseeDetailServlet.do?id=${i.lId}">${i.lId}租户信息</a></td>
			<td>${i.rMoney}</td>
			<td>${i.rTime}</td>
			<td>${i.rRemark}</td>
			<td>
				<a class="fa fa-info" title="详情" href="RectDetailServlet.do?id=${i.rId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="RectUpdateServlet.do?id=${i.rId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="RectDeleteServlet.do?id=${i.rId}"
				 onclick="return confirm('是否确认删除${i.getrId()}?');"></a>
			
			</td>
		</tr>
		</c:forEach>
	</table>

<script src="static/jquery/jquery-1.11.1.js"></script>
<script src="static/js/fenye.js"></script>
<script src="static/lib/jquery/jquery.js"></script>
	<script type="text/javascript">
		function deleteh(a) {
			$.ajax({
				url:"LesseeDeleteServlet",
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