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
    boolean successed = DeleteInfo.deleteMe(uID);
    if(successed)
    	session.invalidate();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="3;url=index.jsp"/>
<title>注销自己</title>
</head>
<body>
  <center>
  <p>&nbsp;</p> <p>&nbsp;</p><p>&nbsp;</p> <p>&nbsp;</p>
    <h1>您已经成功注销了自己的账号，请以后重新注册账号！</h1>
    <h3>三秒钟后，自动跳转到“登录”界面！<a href="index.jsp">立即返回</a> </h3>

  </center>

</body>
</html>