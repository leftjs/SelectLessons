<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%
  int enID = (Integer)session.getAttribute("enID");
  session.removeAttribute("enID");
  int enGrade = Integer.parseInt(request.getParameter("enGrade"));
  
  boolean successed = UpdateInfo.upEnGrade(enID,enGrade);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewStu.jsp"/>
<title>打分成功</title>
</head>
<body>
<center> 
  <h1>打分成功</h1>
  <h4>三秒钟后，自动跳转到“选课学生”页面！<a href="viewStu.jsp">立即返回!</a></h4>
</center>

</body>
</html>