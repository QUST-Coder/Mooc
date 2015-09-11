<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>top</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/adminjsps/css/top.css'/>">

</head>

<body>
	<div id="top">
		<ul>
			<li><a href="<c:url value='/adminjsps/course/main.jsp'/>" target="body">课程管理</a>
				<ul>
					<li><a href="<c:url value='/adminjsps/course/main.jsp'/>" target="body">查看全部</a></li>
					<li><a href="<c:url value='/admin/AdminCourseServlet?method=addPre'/>"  target="body">添加课程</a></li>
				</ul></li>
			<li><a href="<c:url value='/admin/AdminCategoryServlet?method=findAll'/>" target="body">分类管理</a>
				<ul>
					<li><a href="<c:url value='/admin/AdminCategoryServlet?method=findAll'/>" target="body"">查看所有</a></li>
					<li><a href="<c:url value='/adminjsps/category/add.jsp'/>" target="body">添加一级分类</a></li>

				</ul></li>
			<li><a href="<c:url value='/admin/AdminSchoolServlet?method=findAll'/>" target="body">学校管理</a>
				<ul>
					<li><a href="#">查找全部</a></li>
					<li><a href="<c:url value='/adminjsps/school/add.jsp'/>" target="body">添加学校</a></li>
				</ul></li>

			<li><a href="">教师管理</a>
				<ul>
					<li><a href="#">金融学</a></li>
					<li><a href="#">微观经济学</a></li>
				</ul></li>
			<li><a href="">问答管理</a>
				<ul>
					<li><a href="#">高等数学</a></li>
					<li><a href="#">大学物理</a></li>
				</ul></li>
			<li><a href="">讨论管理</a>
				<ul>
					<li><a href="#">数据结构</a></li>
					<li><a href="#">计算思维导论</a></li>
		
				</ul></li>
		</ul>
	</div>
</body>
</html>
