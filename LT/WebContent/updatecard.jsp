<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<%@page import="hncj.util.DbUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改帖子</title>
<style type="text/css">
<!--
body,td,th {
	color: #FFFFFF;
	border-top-style: outset;
	border-right-style: outset;
	border-bottom-style: outset;
	border-left-style: outset;
	background-color: #999999;
	margin: 12px;
	padding: 12px;
	font-size: large;
}
body {
	background-color: #868585;
}
a {
	font-size: larger;
}
.STYLE3 {font-size: medium}
.STYLE4 {font-size: larger}
-->
</style></head>

<body>
<%
String name=session.getAttribute("info").toString();
//name= "测试";
String sql="select * from title where authorName='"+name+"'";
ResultSet rs=DbUtil.executeQuery(sql);
out.print("<h2>我的帖子</h2>");
try{
	out.print("<table border=1>");
	out.print("<tr><td>");
	out.print("帖子主题");
	out.print("</td><td>");
	out.print("发表时间");
	out.print("</td><td>");
	out.print("修改帖子");
	out.print("</td><td>");
	out.print("删除帖子");
	out.print("</td></tr>");
	while(rs.next()){
		out.print("<tr><td><a href=tiezi.jsp?headline="+rs.getString("headline")+"&id="+rs.getInt("id")+" target=_blank>");
		out.print(rs.getString("headline"));
		out.print("</a></td><td>");
		out.print(rs.getString("ftime"));
		out.print("</td><td><a href=updatecard-1.jsp?id="+rs.getInt("id")+">");
		out.print("修改");
		out.print("</td><td><a href=UserServlet?flag=deletetitle&titleId="+rs.getInt("id")+">");
		out.print("删除");
		out.print("</a></td></tr>");
	}
	out.print("</table>");
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>