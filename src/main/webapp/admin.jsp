<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>公寓管理系统 - 后台管理</title>
	<link rel="stylesheet" href="static/css/admin.css">
	<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="header">
	<h1><a href="#">公寓管理系统</a></h1>
	<div class="user">
		<a href="#">${user.userName}</a>
		<a href="login.jsp">退出</a>
	</div>
</div>
<div class="main">
	<ul class="left-side">
		<li class="menu-title active">
			<a href="#">
				<i class=" fa fa-users"></i>&nbsp;&nbsp;公寓管理
			</a>
		</li>
		<li class="sub-menu">
			<ul>
				<li class="active">
					<a href="HouseShowServlet.do"  target="pageBox">
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;房屋信息
					</a>
				</li>
				<li>
					<a target="pageBox" href="ContractShowServlet.do">
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;租赁合同
					</a>
				</li>
				<li>
					<a target="pageBox" href="LesseeShowServlet.do">
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;租户信息
					</a>
				</li>
				<li>
					<a target="pageBox" href="RectShowServlet.do">
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;房租信息
					</a>
				</li>

			</ul>
		</li>
		<li class="menu-title">
			<a href="#" >
				<i class=" fa fa-file-text"></i>&nbsp;&nbsp;服务管理
			</a>
		</li>
		<li class="sub-menu">
			<ul>
				<li>
					<a target="pageBox" href="LogisticalShowServlet.do">
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;后勤人员
					</a>
				</li>
				<li>
					<a target="pageBox" href="RepairShowServlet.do">
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;修缮记录
					</a>
				</li>
				<li>
					<a target="pageBox" href="ActivityShowServlet.do">
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;公寓活动
					</a>
				</li>

			</ul>
		</li>
		<li class="menu-title">
			<a href="#" >
				<i class=" fa fa-sitemap"></i>&nbsp;&nbsp;管理员
			</a>
		</li>
		<li class="sub-menu">
			<ul class="menu">
				<li>
					<a target="pageBox" href="RoleShowServlet.do">
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;角色管理
					</a>
				</li>
				<li>
					<a target="pageBox" href="UserShowServlet.do">
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;用户管理
					</a>
				</li>
			</ul>
		</li>
	</ul>
	<div class="right-side">
		<iframe name="pageBox" src="HouseShowServlet.do"></iframe>
		<div class="footer">
			智游教育 ©2018 河南智游臻龙教育科技有限公司
		</div>
	</div>
</div>
<script src="static/lib/jquery/jquery.js"></script>
<script src="static/js/admin.js"></script>
</body>
</html>