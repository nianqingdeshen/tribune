<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 验证输入不为空的脚本代码
	function checkForm(form) {
		if (form.password1.value.equals(form.passord2.value)) {
			return true;
		} else {
			alert("您两次输入的密码不一致");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<%
		String username = session.getAttribute("username").toString();
		out.print(username);
	%>
	<form action="UserServlet?flag=updatePassword&username1=<%=username %>" method="post">
		请输入新的密码<input type=password name=password><br> 
		请再次输入新的密码<input type=password name=password1>
			 <input type=submit name=submit
			value="确认修改">
	</form>
</body>
</html>