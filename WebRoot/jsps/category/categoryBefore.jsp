<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/category/categoryBefore.css'/>">
	<script type="text/javascript" src="<c:url value='/jsps/js/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jsps/js/category/list.js'/>"></script>

  </head>
  
  <body>
    <div id="Logo">
	<ul>
	<c:forEach items="${parents }" var="parent">
		<li>
			<a href="#">${parent.cate_name }</a>
			<ul>
				
				<c:forEach items="${parent.children }" var="child">
                	<li><a href="">${child.cate_name }</a></li>
                </c:forEach>
          
            </ul>
		</li>
	</c:forEach>
	
	</ul>
</div>	


<div id="Main"></div>
<p class="Copy">齐鲁软件大赛 青岛科技大学 Great Mooc </p>
  </body>
</html>
