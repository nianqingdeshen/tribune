<%@page import="java.sql.*" %>
<%@page import="hncj.util.DbUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body,td,th {
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
String name=session.getAttribute("info").toString();
String sql="select *from testuser where username='"+name+"'";
ResultSet rs=DbUtil.executeQuery(sql);
while(rs.next()){
	
	%>
	<form action="UserServlet?flag=updateuser&userId=<%=rs.getInt("id")%>"method=post>
	<p>ID：<%=rs.getInt("id") %></p>
	<p>用户名：<%=rs.getString("username") %></p>
	<p>年龄：<input name="age" type="text" value="<%=rs.getString("age") %>"></p>
	<p>性别：<input name="sex" type="text" value="<%=rs.getString("sex")%>"></p>
	<p>邮箱：<input name="email" type="text" value="<%=rs.getString("email")%>"></p>
	<p>电话：<input name="tel" type="text" value="<%=rs.getString("tel")%>"></p>
	<p>学校：<input name="collage" type="text" value="<%=rs.getString("collage")%>"></p>
	<p>专业：<input name="major" type="text" value="<%=rs.getString("major")%>"></p>
    <input name="submit" type="submit" name="submit" value="修改" style="width: 100px;background-color: #5E5B5B;color:#FFFFFF;">
    </form>
<%
} 
%>