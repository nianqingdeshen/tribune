<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
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
</style>
</head>
<body style="background: url(11.jpg);text-align:center;"><br><br><br><br><br><br>
	<form action="UserServlet?flag=regist" onsubmit="return checkForm(this);"  method="post">
		用户名：<input type=text name="username"><span style="color: red">*</span><br>
		密&emsp;码：<input type="password" name="password"><span
			style="color: red">*</span><br>
		性&emsp;别：&emsp;&emsp;&emsp;<input type=radio
			name=sex value=male>男&emsp; <input type=radio name=sex value=female>女&emsp;&emsp;&nbsp;<br>
		年&emsp;龄：<input type=text name=age><br> 邮&emsp;箱：<input
			type=text name=email>&nbsp;<br> 电&emsp;话：<input type=text
			name=tel>&nbsp;<br> 学&emsp;院：<input type=text name=collage>&nbsp;<br>
		专&emsp;业：<input type=text name=major><br> <input
			type="submit" name="submit" value="注册"> <input type="reset"
			name="reseet" value="重置">
	</form>
</body>
</html>