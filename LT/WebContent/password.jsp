<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
background-color: #868585;
	color: #FFFFFF;
}
</style>
</head>
<body>
<form action="UserServlet?flag=updatepassword" method="post">
请输入您的用户名：<input name="username" type="text"><br>
请输入你的年龄：<input name="age" type="text" ><br>
请输入你的电话：<input name="tel" type="text"><br>
请输入你的邮箱：<input name="email" type="text"><br>
<input type=submit name=submit value="提交" style="width: 100px;background-color: #5E5B5B;color:#FFFFFF;">
</form>
</body>
</html>