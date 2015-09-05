<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>

<%
    int mgID = Integer.parseInt(request.getParameter("mgID"));
    boolean successed = DeleteInfo.deleteMessage(mgID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=">
<meta http-equiv="refresh" content="3;url=message.jsp"/>
<title>留言删除成功</title>
</head>
<body>
<center>
<h1>留言删除成功</h1>
<h4>三秒钟后自动返回到“留言信息”页面 <a href="message.jsp">立即返回</a> </h4>
</center>

</body>
</html>

