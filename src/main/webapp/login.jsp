<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>公寓管理系统 - 登录页面</title>
	<link rel="stylesheet" href="./static/css/index.css">
</head>
<body>
<div class="login">
	<img src="static/image/logo.png" alt="智游">
	<p>公寓管理系统</p>
	<form action="login" method="post">
	<div>
		<input type="text" id="username" name="user_name" value="" placeholder="请输入用户名">
	</div>
	<div>
		<input type="password" id="password" name="user_password" value="" placeholder="请输入密码">
	</div>
	<div>
		<p class="error-message"></p>
		<input type="submit" value="登录">
	</div>
	</form>
</div>
 <c:if test="${msg != null }">
			<script type="text/javascript">
			alert('${msg}');
			
			</script>
						
			</c:if>
<!-- <script>
	if (window.top !== window) {
		window.top.location.reload();
	}
</script> -->
</body>
</html>