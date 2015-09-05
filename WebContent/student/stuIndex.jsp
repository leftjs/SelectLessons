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
<title>学生主页</title>
</head>

<frameset rows="*" cols="149,*" framespacing="1" frameborder="no" border="1" bordercolor="#CCFFFF">
  <frame src="stuLeftMain.jsp" name="stuLeftMain" scrolling="no" noresize="noresize" id="stuLeftMain" title="stuLeftMain" />
  <frame src="../myInfo.jsp" name="stuMainFrame" id="stuMainFrame" title="stuMainFrame" />
</frameset>
<noframes><body>
</body>
</noframes></html>
