<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>

<!--js css-->
<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/login.css'/>">
<script type="text/javascript" src="<c:url value='/jsps/js/jquery-1.5.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/jsps/js/login.js'/>"></script>

</head>

<body>
    <h2>${msg }</h2>
<div class="login">
	<form id="submitBtn" class="login-form" action="<c:url value='/UserServlet'/>" method="post">
		<input type="hidden" name="method" value="login"/>
	   	<div>
			<input id="email" type="email" name="email" class="input" value="${form.email }" placeholder="邮箱:"/>
			<span id="emailError" class="error">${errors.email }</span>
		</div>
		<div class="">
        	<input id="password" type="password" name="password" class="input" value="${form.password }" placeholder="密码:"/>
        	<span id="passwordError" class="error">${errors.password }</span>
        </div>
        <div class="">
			<input id="verifyCode" type="check" name="verifyCode" class="input" placeholder="验证码:"/>
			<img id="vCode" src="<c:url value='/VerifyCodeServlet'/>"/>
		</div>
		<div class="">
			<span id="verifyCodeError" class="error">${errors.verifyCode }</span>
			<a href="javascript:_change()">看不清，换一张</a>
		</div>
        <input type="submit" value="登录"></input>
	</form>
	<p><a href="<c:url value='/jsps/user/regist.jsp'/>">免费注册</a></p>
<p><a href="#">忘记密码？</a></p>
</div>

</body>
</html>