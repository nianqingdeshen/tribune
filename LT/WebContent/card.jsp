<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发表帖子</title>
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
<%
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String s=df.format(new Date());
%>
<body>
	<br>
	<br>
	<center>
		<form action="UserServlet?authorName=<%=request.getParameter("username")%>&time=<%=s %>&flag=card" onsubmit="return checkForm(this);" method="post">
			帖子标题<br>
			<input type=text name=headline style="width: 400px;vertical-align: text-top;"><br>
			帖子内容<br>
					<!-- <input type=textarea name=content style="width: 400px; height: 300px;"> --><br>
					<textarea name=content style="width: 400px; height: 300px;"></textarea>
			<br> <input type=submit name=submit value="确认发表" style="width: 100px;background-color: #5E5B5B;color:#FFFFFF;">
			<input type="reset" name="reseet" value="清空擦除" style="width: 100px;background-color: #5E5B5B;color:#FFFFFF;">
		</form>
	</center>
</body>
</html>