<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%
   User user = (User)session.getAttribute("user");
  int uID = user.getUID();
  int csID = Integer.parseInt(request.getParameter("csID"));
  boolean successed = InsertInfo.enrollment(uID, csID);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=myCourse.jsp"/>
<title>添加选课</title>
</head>
<body>
<center> 
  <h1>添加选课成功</h1>
  <h4>三秒钟后，自动跳转到“查看所选课程”页面！<a href="myCourse.jsp">立即返回!</a></h4>
</center>

</body>
</html>