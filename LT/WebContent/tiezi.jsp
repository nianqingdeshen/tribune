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
	//System.out.print(headline);
		int rId = Integer.parseInt(request.getParameter("id"));
		session.setAttribute("rId", rId);
	//out.print("tiezi.jsp"+rId);
		//out.print(titleId);
		String sql = "select * from title where headline = '" + headline + "'";
		ResultSet rs = DbUtil.executeQuery(sql);
		out.print("<h2>帖子名称：" + headline + "</h2>");
		while (rs.next()) {
			out.print("<p>帖子内容: " + rs.getString("content") + "</p>");
		}
	%>
	<% out.print("<h2>帖子回复信息</h2>");
String sqlr="select * from reply where rId="+rId;
ResultSet r=null;
r=DbUtil.executeQuery(sqlr);
try{
	out.print("<table border=0>");
	out.print("<tr><td>");
	out.print("回复人");
	out.print("</td><td>");
	out.print("回复内容");
	out.print("</td><td>");
	out.print("回复时间");
	out.print("</td></tr>");
	while(r.next()){
		out.print("<tr><td>");
		out.print(r.getString("rName"));
		out.print("</td><td>");
		out.print(r.getString("rContent"));
		out.print("</td><td>");
		out.print(r.getString("rTime"));
		out.print("</td></tr>");
	}
	out.print("</table>");
}catch(Exception e){
	e.printStackTrace();
}out.print("<br>");
%>
	<%/* 
	String username=session.getAttribute("info").toString();
	out.print(username); */
	try{
	if(session.getAttribute("info").toString()!=null){
		
	out.print("<form action=response.jsp method=post>");
	out.print("<input type=submit name=response value=回复></form>");
	 }else{
		 out.print("游客暂不支持回复");
	 }}catch(Exception e){
		 e.printStackTrace();
		 out.print("<p style=color:red >游客暂不支持回复</p>");
	 }
	 %>
</body>
</html>