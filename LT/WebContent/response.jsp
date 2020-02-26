<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	background-color: #868585;
	text-color:#FFFFFF;
}
-->
</style>
</head>
<%
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String s=df.format(new Date());
%>
<body>
	<%String rName=session.getAttribute("info").toString(); 
	String rId=session.getAttribute("rId").toString(); 
	%>
	<br><br><br><br><center>
	<form action="UserServlet?flag=reply&rName=<%=rName%>&rId=<%=rId%>&rTime=<%=s%>" method="post">
	<textarea name=rContent style="width: 400px; height: 300px;"></textarea><br>
	<input type=submit name=submit value=确认回复>
	<input type="reset" name="reseet" value="清空擦除">
	</form></center>
</body>
</html>