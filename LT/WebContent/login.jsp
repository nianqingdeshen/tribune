<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="hncj.servlet.UserServlet"%>
<%@page import="hncj.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script type="text/javascript">
	// 验证输入不为空的脚本代码
	function checkForm(form) {
		if (form.username.value == "") {
			alert("用户名不能为空!");
			form.username.focus();
			return false;
		}
		if (form.password.value == "") {
			alert("密码不能为空!");
			form.password.focus();
			return false;
		}
		return true;
	}
</script>
<style>
body {
	color: #FFFFFF;
}

a {
	color: #FFFFFF;
}

a:link {
	color: #FFFFFF;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
	color: #FF0000;
}

a:active {
	text-decoration: none;
}
</style>
</head>
<body style="background: url(11.jpg)">
	<br><br><br><br><br><br>
	<center>
		<form action="UserServlet?flag=login" target="_parent" onsubmit="return checkForm(this);" method="post">
			&nbsp;用户名： <input style="width: 145px;" type="text" name="username"><br>
			<br> 密&emsp;码： <input style="width: 145px;" type="password"
				name="password"><br> <br> <input
				style="width: 107px;" type="submit" name="submit" value="登录">
			<input style="width: 107px;" type="reset" name="reseet" value="重置">
		</form>
		<form action="regist.jsp" target="parent">
			<input style="width: 217px;" type=submit name=regist value="注册">
		</form>
		<br><br><br><br> <a href="g2.jsp" target="_black">游客</a>&ensp;|&ensp; <a href="password.jsp" target="_parent">找回密码</a>&ensp;|&ensp;
		<a href="">官方微信</a>&ensp;|&ensp; <a href="">河南城建学院官方网站</a>&ensp;|&ensp;
		<a href="">关于</a><br> <a href="">@2018&nbsp;河南城建BBS</a>
	</center>
</body>
</html>