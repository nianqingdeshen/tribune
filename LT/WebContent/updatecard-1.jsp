<%@page import="hncj.util.DbUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 验证输入不为空的脚本代码
	function checkForm(form) {
		if (form.headline.value == "") {
			alert("帖子标题不能为空！");
			form.headline.focus();
			return false;
		}
		return true;
	}
</script>
<style>
body {
	background-color: #868585;
	color: #FFFFFF;
}
</style>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String sql = "select *from title where id='" + id + "'";
		ResultSet rs = DbUtil.executeQuery(sql);
		while (rs.next()) {
			String headline = rs.getString("headline");
			String content = rs.getString("content");
	%>
	<br>
	<br>
		<form action="UserServlet?flag=updatetitle&titleid=<%=id%>"
			onsubmit="return checkForm(this)" method="post">
			在下方更改帖子标题<br> <input name="headline" type="text"
				value="<%=headline%>" style="width: 400px;"><br>
			在下方更改帖子内容<br> 
			<textarea name=content style="width: 400px; height: 300px;"><%=content %></textarea><br>
			<br>
			<input type=submit name=submit value="修改"
				style="width: 100px; background-color: #5E5B5B; color: #FFFFFF;">
		</form>
	<%
		}
	%>
</body>
</html>
