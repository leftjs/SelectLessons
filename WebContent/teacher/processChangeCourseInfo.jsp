<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%
  int csID = (Integer)session.getAttribute("csID");
  String csName = request.getParameter("csName");
  boolean successed = UpdateInfo.upCouseInfo(csID, csName);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewCourse.jsp"/>
<title>修改课程信息</title>
</head>
<body>
<center> 
  <h1>修改课程信息成功</h1>
  <h4>三秒钟后，自动跳转到“查看课程信息”页面！<a href="viewCourse.jsp">立即返回!</a></h4>
</center>

</body>
</html>