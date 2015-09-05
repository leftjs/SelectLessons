<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<% 
   int enID = Integer.parseInt(request.getParameter("enID"));
 boolean successed = DeleteInfo.deleteEnStu(enID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewStu.jsp"/>
<title>删除选课学生</title>
</head>
<body>
<center> 
  <h1>删除成功</h1>
  <h4>三秒钟后，自动跳转到“选课学生”页面！<a href="viewStu.jsp">立即返回!</a></h4>
</center>

</body>
</html>