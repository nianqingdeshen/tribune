<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*,hncj.util.DbUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理站点数据</title>
<style>
body {
	background-color: #868585;
	color: #FFFFFF;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: #FFFFFF;
}

a:hover {
	text-decoration: none;
	color: red;
}

a:active {
	text-decoration: none;
}
</style>
</head>
<body>
	<%
		out.print("<h2>所有帖子信息</h2>");
		String sqlTitle = "select * from title";
		ResultSet rs = null;
		rs = DbUtil.executeQuery(sqlTitle);
		try {
			out.print("<table border=1>");
			out.print("<tr><td>");
			out.print("id");
			out.print("</td><td>");
			out.print("作者");
			out.print("</td><td>");
			out.print("帖子主题");
			out.print("</td><td>");
			out.print("发表时间");
			out.print("</td><td>");
			out.print("管理");
			out.print("</td></tr>");
			while (rs.next()) {
				out.print("<tr><td>");
				out.print(rs.getString("id"));
				out.print("</td><td>");
				out.print(rs.getString("authorName"));
				out.print("</td><td><a href=tiezi2.jsp?headline=" + rs.getString("headline") + " target=_blank>");
				out.print(rs.getString("headline"));
				out.print("</a></td><td>");
				out.print(rs.getString("ftime"));
				out.print("</td><td>");
				out.print("<a href='UserServlet?flag=deleteTitle&titleId=" + rs.getInt("id") + "'>删除</a>");
				out.print("</td></tr>");
			}
			out.print("</table>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		out.print("<br>");
	%>
	<%
		out.print("<h2>所有用户信息</h2>");
		String sqlUser = "select * from testuser";
		ResultSet r = null;
		rs = DbUtil.executeQuery(sqlUser);
		try {
			out.print("<table border=1>");
			out.print("<tr><td>");
			out.print("id");
			out.print("</td><td>");
			out.print("用户名");
			out.print("</td><td>");
			out.print("密码");
			out.print("</td><td>");
			out.print("性别");
			out.print("</td><td>");
			out.print("年龄");
			out.print("</td><td>");
			out.print("邮箱");
			out.print("</td><td>");
			out.print("电话");
			out.print("</td><td>");
			out.print("学院");
			out.print("</td><td>");
			out.print("专业");
			out.print("</td><td>");
			out.print("管理");
			out.print("</td></tr>");
			while (rs.next()) {
				out.print("<tr><td>");
				out.print(rs.getString("id"));
				out.print("</td><td>");
				out.print(rs.getString("username"));
				out.print("</td><td>");
				out.print(rs.getString("password"));
				out.print("</td><td>");
				out.print(rs.getString("sex"));
				out.print("</td><td>");
				out.print(rs.getString("age"));
				out.print("</td><td>");
				out.print(rs.getString("email"));
				out.print("</td><td>");
				out.print(rs.getString("tel"));
				out.print("</td><td>");
				out.print(rs.getString("collage"));
				out.print("</td><td>");
				out.print(rs.getString("major"));
				out.print("</td><td>");
				out.print("<a href='UserServlet?flag=deleteUser&userId=" + rs.getInt("id") + "'>删除</a>");
				out.print("</td></tr>");
			}
			out.print("</table>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<%
		out.print("<h2>所有回帖信息</h2>");
		String sqlr = "select * from reply";
		rs = DbUtil.executeQuery(sqlr);
		try {
			out.print("<table border=1>");
			out.print("<tr><td>");
			out.print("id");
			out.print("</td><td>");
			out.print("回复人");
			out.print("</td><td>");
			out.print("回复内容");
			out.print("</td><td>");
			out.print("回复时间");
			out.print("</td><td>");
			out.print("回复的主帖id");
			out.print("</td><td>");
			out.print("管理");
			out.print("</td></tr>");
			while (rs.next()) {
				out.print("<tr><td>");
				out.print(rs.getString("id"));
				out.print("</td><td>");
				out.print(rs.getString("rName"));
				out.print("</td><td>");
				out.print(rs.getString("rContent"));
				out.print("</td><td>");
				out.print(rs.getString("rTime"));
				out.print("</td><td>");
				out.print(rs.getString("rId"));
				out.print("</td><td>");
				out.print("<a href='UserServlet?flag=deleteReply&id=" + rs.getInt("id") + "'>删除</a>");
				out.print("</td></tr>");
			}
			out.print("</table>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		out.print("<br>");
	%>
</body>
</html>