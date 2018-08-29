<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <base href="http://localhost:8080/Apartment/">
 -->	
 <title>公寓管理系统 - 后台管理</title>
 <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="static/css/admin.css">
<link rel="stylesheet" href="static/lib/font-awesome/css/font-awesome.css">
<style>
#left {
	width: 250px;
	height: 800px;
	background-color: #222d32;
}

.topBtn {
	background-color: rgba(0, 0, 0, 0);
}

.topBtnSelect {
	background-color: black;
	color: white;
	border-left: 4px solid #f39c12;
}

.icon {
	margin-left: 20px;
	margin-right: 20px;
}

button {
	outline: none;
	color: #abb;
	border: none;
	width: 100%;
	height: 44px;
	text-align: left;
}

button:hover {
	color: white;
}

.childBtn {
	background-color: #2c3a40;
}

.btnHidden {
	display: none;
}

#right {
	position: absolute;
	left: 250px;
	top: 50px;
}

#top {
	width: 100%;
	height: 50px;
	background-color: #3c8dbc;
}

#topT {
	color: white;
	font-size: 20px;
	line-height: 50px;
	/*padding-left: 20px;*/
	margin-left: 40px;
}
.topBtn1{
	width: auto;
	height: 50px;
	background-color: rgba(0, 0, 0, 0);
	color: white;
	text-align: center;
	 position: relative;
	top: -2px;
	margin-right: 16px
}

.topBtn1:hover {
	background-color: blue;
}

.topBtn2 {
	width: auto;
	height: 50px;
	background-color: rgba(0, 0, 0, 0);
	color: white;
	text-align: center;
	 position: relative; 
	top: -2px;
	margin-right: 12px
}

.topBtn2:hover {
	background-color: blue;
}

#user {
	position: absolute;
	right:160px;
	top: 15px;
}

#quit {
	position: absolute;
	right: 80px;
	top: 15px;
}

#right {
	width: 75%;
	height: 750px;
	float: left;
	background: rgba(1, 1, 1, 0);
	margin: 20px;
	border: 2px solid #D2D6DE;
	border-top: 6px solid #D2D6DE;
}

#t {
	width: auto;
	background: #337AB7;
	color: white;
	line-height: 40px;
	position: relative;
	left: 1250px;
}

#bt td {
	border: 1px solid black;
	width: 600ox;
	height: 40px;
	align-content: center;
	padding: 10px 60px 10px 60px;
}

#bt {
	margin: 20px;
}

#right {
	width: 1660px;
	padding: -50px;
	margin: 0px;
}

iframe {
	overflow-x: hidden;
	overflow-y: hidden;
	width: 1660px;
	height: 800px;
	padding: -50px;
	margin: 0px;
}
</style>
</head>
<body>
	<div id="top">
		<font id="topT">公寓管理系统</font>
		<a href="#" class="topBtn2" id="user">${user.userName}</a>
		<a href="login.jsp" class="topBtn2" id="quit">退出</a>
	</div>
	<!-- 公寓管理 -->
	<div id="left">
		<div>
			<button id="top1" class="topBtn" onclick="btnTop(this,childDiv1)">
				<font class="icon glyphicon glyphicon-list-alt"></font>公寓管理
			</button>
		</div>
		<div id="childDiv1" class="btnHidden">
			<button class="childBtn" onclick="btnChild(this,i1_0,'房屋信息')">
				<font id="i1_0" class="icon glyphicon glyphicon-star-empty"></font>房屋信息
			</button>
			<button class="childBtn" onclick="btnChild(this,i1_1,'租赁合同')">
				<font id="i1_1" class="icon glyphicon glyphicon-star-empty"></font>租赁合同
			</button>
			<button class="childBtn" onclick="btnChild(this,i1_2,'租户信息')">
				<font id="i1_2" class="icon glyphicon glyphicon-star-empty"></font>租户信息
			</button>
			<button class="childBtn" onclick="btnChild(this,i1_3,'房租信息')">
				<font id="i1_3" class="icon glyphicon glyphicon-star-empty"></font>房租信息
			</button>
		</div>
		<!--服务管理-->
		<div>
			<button id="top2" class="topBtn" onclick="btnTop(this,childDiv2)">
				<font class="icon glyphicon glyphicon-briefcase"></font>服务管理
			</button>
		</div>
		<div id="childDiv2" class="btnHidden">
			<button class="childBtn" onclick="btnChild(this,i2_0,'后勤人员')">
				<font id="i2_0" class="icon glyphicon glyphicon-star-empty"></font>后勤人员
			</button>
			<button class="childBtn" onclick="btnChild(this,i2_1,'修缮记录')">
				<font id="i2_1" class="icon glyphicon glyphicon-star-empty"></font>修缮记录
			</button>
			<button class="childBtn" onclick="btnChild(this,i2_2,'公寓活动')">
				<font id="i2_2" class="icon glyphicon glyphicon-star-empty"></font>公寓活动
			</button>
		</div>
		<!--站内邮件-->
		<div>
			<button id="top3" class="topBtn" onclick="btnTop(this,childDiv3)">
				<font class="icon glyphicon glyphicon-envelope"></font>管理员
			</button>
		</div>
		<div id="childDiv3" class="btnHidden">
			<button class="childBtn" onclick="btnChild(this,i3_0,'角色管理')">
				<font id="i3_0" class="icon glyphicon glyphicon-star-empty"></font>角色管理
			</button>
			<button class="childBtn" onclick="btnChild(this,i3_1,'用户管理')">
				<font id="i3_1" class="icon glyphicon glyphicon-star-empty"></font>用户管理
			</button>
		</div>
	</div>
	<div id="right">
		<iframe src='HouseShowServlet' frameborder="0" scrolling="no" id="aaa"></iframe>
		<div class="footer">
			智游教育 ©2018 河南智游臻龙教育科技有限公司
		</div>
	</div>
<script src="static/lib/jquery/jquery.js"></script>
<script src="static/js/admin.js"></script>
<script>
        var lastTopBtn = null;
        var lastTopDiv = null;
        function btnTop(top, childDiv) {
            if (top == lastTopBtn) {
                if (top.className == "topBtn") {
                    top.className = "topBtnSelect";
                    childDiv.style.display = "inline";
                } else {
                    top.className = "topBtn";
                    childDiv.style.display = "none";
                }
                return;
            }
            if (lastTopBtn != null) {
                lastTopBtn.className = "topBtn";
                lastTopDiv.style.display = "none";
            }
            top.className = "topBtnSelect";
            childDiv.style.display = "inline";
            lastTopBtn = top;
            lastTopDiv = childDiv;
        }
        var lastChildBtn = null;
        var lastChildIcon = null;
        function btnChild(btn, icon, args) {
            if (lastChildBtn != null) {
                lastChildBtn.style.color = "#abb";
                lastChildIcon.className = "icon glyphicon glyphicon-star-empty";
            }

            btn.style.color = "white";
            icon.className = "icon glyphicon glyphicon-star";
			if (args=="房屋信息") {
			document.getElementById("aaa").src='HouseShowServlet'
			}
			if (args=="租赁合同") {
				document.getElementById("aaa").src='#'
			}
			if (args=="租户信息") {
				document.getElementById("aaa").src='/view/Lessee/LesseeShowServlet'
			}
			if (args=="房租信息") {
				document.getElementById("aaa").src='RectShowServlet'
			}
			if (args=="后勤人员") {
				document.getElementById("aaa").src='#'
			}
			if (args=="修缮记录") {
				document.getElementById("aaa").src='#'
			}
			if (args=="公寓活动") {
				document.getElementById("aaa").src='#'
			}
			if (args=="角色管理") {
				document.getElementById("aaa").src='#'
			}
			if (args=="用户管理") {
				document.getElementById("aaa").src='#'
			}
            lastChildBtn = btn;
            lastChildIcon = icon;
            title.innerHTML = args;
        }
    </script>
</body>
</html>