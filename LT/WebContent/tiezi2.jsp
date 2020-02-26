<%@page import="java.sql.*"%>
<%@page import="hncj.util.DbUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>帖子内容</title>
<style type="text/css">
<!--
body, td, th {
	color: #FFFFFF;
}

body {
	background-color: #868585;
}
-->
</style>
</head>
<body>
	<%
		String headline = request.getParameter("headline");
	try{
		int rId = Integer.parseInt(request.getParameter("id"));
		session.setAttribute("rId", rId);
	}catch(Exception e){
		e.printStackTrace();
	}
	//out.print("tiezi.jsp"+rId);
		//out.print(titleId);
		String sql = "select * from title where headline='" + headline + "'";
		ResultSet rs = DbUtil.executeQuery(sql);
		out.print("<h2>帖子名称：" + headline + "</h2>");
		while (rs.next()) {
			out.print("<p>帖子内容: " + rs.getString("content") + "</p>");
		}
	%>
	回复
	<form action=response.jsp method="post">
		<input type=submit name=response value=回复>
	</form>
</body>
</html>