<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>主页</title>
	</head>

	<frameset rows="90,*" cols="*" framespacing="0" frameborder="no"
		border="0">
		<frame src="topFrame.jsp" name="topFrame" scrolling="no"
			noresize="noresize" id="topFrame" title="topFrame" />
		<frame src="mainFrame.jsp" name="mainFrame" id="mainFrame"
			title="mainFrame" />
	</frameset>
	<noframes>
		<body>
		   对不起，您的浏览器不支持“框架”！请更换浏览器！
		</body>
	</noframes>
</html>
