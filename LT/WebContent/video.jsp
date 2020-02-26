<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function setControl(){
	var video=document.getElementById("video");
	video.controls=false;
	if(video.currentTime>=2*60){
	video.controls=true;
	}
	setTimeOut("setControl()",10);
	}
</script>

</head>
<body>
<video  muted autoplay loop width="100%" height="100%">
<source src="test.mp4" type="video/mp4"></source> 
</video> 
</body>
</html>