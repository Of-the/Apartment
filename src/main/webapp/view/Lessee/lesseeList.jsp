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
	<title>公寓管理系统 - 租户信息管理</title>
	<link rel="stylesheet" href="static/css/main.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>租户信息管理</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="lesseeAdd.jsp">添加信息</a>
		</div>
	</div>
	<table class="list" border="1">
		<tr>
			<th>租户号</th>
			<th>租户姓名</th>
			<th>电话</th>
			<th>性别</th>
			<th>籍贯</th>
			<th>身份证号</th>
			<th>添加时间</th>
			<th>操作</th>
		</tr>
		<c:forEach var="i" items="${lessee}">	
		<tr>
			<td>${i.lId}</td>
			<td>${i.lName}</td>
			<td>${i.lTel}</td>
			<td>${i.lSex}</td>
			<td>${i.lNativeplace}</td>
			<td>${i.lIdcard}</td>
			<td>${i.lAddtime}</td>
			<td>
				<a class="fa fa-info" title="详情" href="#"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="LesseeUpdateServlet?id=${i.lId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="LesseeDeleteServlet?id=${i.lId}" onclick="deleteh(${i.lId})" id="a${i.lId}"></a>
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
				<li class="paginate_button active"><a href="#">1</a></li>
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