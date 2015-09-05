<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*" %>

<%
  User user = (User)session.getAttribute("user");
 
  int userID = user.getUID();
  
  int courseID = (Integer)session.getAttribute("csID");
  String csName = (String)session.getAttribute("csName");
  session.removeAttribute("csID");
  String mgTitle = request.getParameter("mgTitle");
  String mgContent = request.getParameter("mgContent");
  
  boolean successed = InsertInfo.message(userID, courseID, mgTitle, mgContent);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewCourseMessage.jsp?csID=<%=courseID %>&csName=<%=csName %>"/>
<title>留言成功</title>
</head>
<body>
<center> 
  <h1>留言成功</h1>
  <h4>三秒钟后，自动跳转到“留言信息”页面！<a href="viewCourseMessage.jsp?csID=<%=courseID %>&csName=<%=csName %>">立即返回!</a></h4>
</center>

</body>
</html>