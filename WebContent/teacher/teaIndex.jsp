<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>

<%
	User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>老师主页</title>
</head>

<frameset rows="*" cols="148,*" framespacing="0" frameborder="no" border="0">
  <frame src="teaLeftFrame.jsp" name="teaLeftFrame" scrolling="no" noresize="noresize" id="teaLeftFrame" title="teaLeftFrame" />
  <frame src="../myInfo.jsp" name="teaMainFrame" id="teaMainFrame" title="teaMainFrame" />
</frameset>
<noframes><body>
</body>
</noframes></html>
