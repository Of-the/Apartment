<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 --%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

form {
	text-align: center;
}
td {
	border:1px solid #000;
	text-align: center;
}


</style>
</head>
<body>
	<a href="User/UserAdd.jsp">新增员工</a>
	<table cellpadding="0" cellspacing="0" style="border-collapse:collapse" >
	<tr>
	<td>员工编号</td>
	<td>姓名</td>
	<td>密码</td>
	<td>手机号码</td>
	<td>住址</td>
	</tr>
	<c:forEach var="i" items="${users}">
	<tr>
	<td>${i.user_id}</td>
	<td>${i.user_name}</td>
	<td>${i.user_password}</td>
	<td>${i.user_phone}</td>
	<td>${i.user_address}</td>
	<td><a href="UserDeleteServlet?user_id=${i.user_id}" >X</a>
	<a href="UserEditServlet?user_id=${i.user_id}">✎</a></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>