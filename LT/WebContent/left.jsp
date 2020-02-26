<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>left</title>
<script type="text/javascript">
//键盘事件处理方法
function keyDown(event){
if(event.ctrlKey && event.keyCode==13){//Ctrl + Enter 有效
document.all.fm.word.value=document.all.wordx.value;
document.all.fm.submit();
}
}
</script>
<style type="text/css">
<!--
body {
	background-color: #868585;
	margin: 0px;
	padding: 0px;
	background-image: url();
	margin-top: 10%;
	margin-left: 0%;
	margin-right: 0%;
	margin-bottom: 0%;
}
-->
</style>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	font-size: medium;
	color: #FFFFFF;
	text-indent: 35px;
	font-family: Arial, Helvetica, sans-serif;
	background-color: #5E5B5B;
}
a:link {
	color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: none;
	color: #66FFFF;
}
a:active {
	text-decoration: none;
}
-->
</style>
</head>

<body>
<!-- <input type=text name=search value=search style="width:50px;"> -->
<form action="searchResult.jsp" target="in" method="post">
<select id =type name=type style="width:50px;height:25px;">
<option value="headline" >帖子</option>
<option value="authorName" >作者</option>
</select>
<input type=text name=search style="width:140px;height:20px;">
</form>

<p class="STYLE1"><a href="main.jsp" target="in">首页</a></p>
<p class="STYLE1"><a href="mu.jsp" target="in">城建热点</a></p>
<p class="STYLE1"><a href="xue.jsp" target="in">学术专区</a></p>
<p class="STYLE1"><a href="mu.jsp" target="in">城建话题</a></p>
<p class="STYLE1"><a href="mu.jsp" target="in">体育快讯</a></p>
<p class="STYLE1"><a href="mu.jsp" target="in">社团群体</a></p>
<p class="STYLE1"><a href="mu.jsp" target="in">四六级专区</a></p>
</body>

</html>