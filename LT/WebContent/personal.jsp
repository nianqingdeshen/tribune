<%@page import="java.sql.*" %>
<%@page import="hncj.util.DbUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<style type="text/css">
<!--
body,td,th {
	color: #FFFFFF;
}
body {
	background-color: #868585;
}
-->
</style></head>

<body>
<%
String name=session.getAttribute("info").toString();
String sql="select *from testuser where username='"+name+"'";
ResultSet rs=DbUtil.executeQuery(sql);
out.print("<h2>个人资料</h2>");
while(rs.next()){
out.print("<p>ID: "+rs.getInt("id")+"</p>" );
out.print("<p>用户名: "+rs.getString("username")+"</p>");
out.print("<p>年龄: "+rs.getString("age")+"</p>");
out.print("<p>性别: "+rs.getString("sex")+"</p>");
out.print("<p>邮箱: "+rs.getString("email")+"</p>");
out.print("<p>院系: "+rs.getString("collage")+"</p>");
out.print("<p>专业: "+rs.getString("major")+"</p>");
out.print("<p>发表帖子数: "+rs.getString("number")+"</p>");
}
%>
</body>
</html>
