<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>top</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<link rel="stylesheet" type="text/css"
	href="<c:url value='/jsps/css/top.css'/>">

</head>
<body>

	<div id="top" class="top">
		<ul>
			<li class="logo"><a href="#"><img src="images/top_logo.jpg" /></a>
			</li>
			<li class="daohang"><a href="<c:url value='/jsps/main.jsp'/>"
				target="_top">全部课程</a></li>
			<li class="daohang"><a href="#">学习计划</a></li>
			<li class="daohang"><a
				href="<c:url value='/jsps/school/sch_list.jsp'/>" target="_top">合作学校</a>
			</li>
			<li class="daohang"><a href="#">授课教师</a></li>
			<li class="daohang"><a href="#">问答</a></li>

			<c:choose>
				<c:when test="${empty sessionScope.session_user }">
					<li class="user"><a
						href="<c:url value='/jsps/user/login.jsp'/>" target="_top">登录</a>/
						<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_top">注册</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="user">
					<a href="#"> 
					<img class="userImg" src="<c:url value='/${sessionScope.session_user.user_simg }'/>" /> 
					<span class="uname">${sessionScope.session_user.username }</span>
					</a>
					<a href="<c:url value='/UserServlet?method=quit&user_id=${sessionScope.session_user.user_id }'/>" style="float:right;color:#CCC;" target="_top">退出</a>
					</li>
				</c:otherwise>
			</c:choose>


		</ul>
	</div>
</body>
</html>