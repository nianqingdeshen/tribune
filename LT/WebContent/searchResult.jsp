<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*,hncj.util.DbUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	background-color: #868585;
	margin: 0px;
	padding: 0px;
}
-->
</style>
<link href="*" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body,td,th {
	color: #FFFFFF;
	vertical-align: top;
	font-family: Arial, Helvetica, sans-serif;
	font-size: larger;
	text-align: left;
	padding: 12px;
	border-top-style: outset;
	border-right-style: outset;
	border-bottom-style: outset;
	border-left-style: outset;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
	color: #FF0000;
}
a:active {
	text-decoration: none;
}
.STYLE2 {color: #FFFFFF}
.STYLE3 {font-size: medium}
-->
</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String type=request.getParameter("type");
String search=request.getParameter("search");
/* out.print(type);
out.print(search); */
String sql;
 
	sql="select * from title where "+type+" like '%"+search+"%'";
 
 ResultSet rs=null;
rs = DbUtil.executeQuery(sql); 
try{
	out.print("<table border=1>");
	out.print("<tr><td>");
	out.print("作者");
	out.print("</td><td>");
	out.print("帖子主题");
	out.print("</td><td>");
	out.print("发表时间");
	out.print("</td></tr>");
	while(rs.next()){
		out.print("<tr><td><a href=author.jsp?name1="+rs.getString("authorName")+" target=_blank>");
		out.print(rs.getString("authorName"));
		out.print("</a></td><td><a href=tiezi.jsp?headline="+rs.getString("headline")+" target=_blank>");
		out.print(rs.getString("headline"));
		out.print("</a></td><td>");
		out.print(rs.getString("ftime"));
		out.print("</td></tr>");
	}
	out.print("</table>");
}catch(Exception e){
	e.printStackTrace();
}

%>

</body>
</html>