<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@page import="hncj.util.OnlineCounter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-image: url(images/5.png);
	font-size: x-large;
	text-indent: 50px;
}

.STYLE2 {
	font-size: medium;
	font-weight: bold;
	color: #66FFFF;
	margin: 13px;
	top: 41px;
	padding-top: 13px;
	padding-right: 13px;
	padding-bottom: 31px;
	padding-left: 13px;
	line-height: 80px;
	font-family: Arial, Helvetica, sans-serif;
}

.STYLE3 {
	font-size: medium;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #66FFFF;
	margin: 0px;
	padding: 0px;
}

a:link {
	color: #66FFFF;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: #66FFFF;
}

a:hover {
	text-decoration: none;
	color: #FF3300;
}

a:active {
	text-decoration: none;
}
-->
</style>
</head>

<body>
	<h3 align="right">
		<span class="STYLE3"><a href="personal-1.jsp" target="_blank">@<%=session.getAttribute("info").toString()%>，欢迎您</a></span><span
			class="STYLE2">[<a href="card.jsp?username=<%=session.getAttribute("info").toString()%>"target="_parent">发贴</a>,<a href="admini.jsp"
			target="_parent">管理</a>,<a href="exit.jsp"
			target="_parent">退出</a>]
		</span>
	</h3>

</body>
</html>