<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>

<%
    int enID = Integer.parseInt(request.getParameter("enID"));
    boolean successed = DeleteInfo.deleteEnroll(enID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=myCourse.jsp"/>
<title>课程删除成功</title>
</head>
<body>
<center>
<h1>课程删除成功</h1>
<h4>三秒钟后自动返回到“所选课程”页面 <a href="myCourse.jsp">立即返回</a> </h4>
</center>

</body>
</html>