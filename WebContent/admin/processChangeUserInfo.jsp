<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%
   User changingUser = (User)session.getAttribute("changingUser");
   int cUID  = changingUser.getUID();
   
   session.removeAttribute("changingUser");
   
   String userName = request.getParameter("userName");
   String realName = request.getParameter("realName");
   String email = request.getParameter("email");
   String sex = request.getParameter("sex");
   
   ChangeMyInfo.changeMyInfo(cUID, userName, realName, email, sex);
   
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=userInfo.jsp"/>
<title>Insert title here</title>
</head>
<body>
<center>
<h1>修改成功</h1>
      <h4>三秒钟后，自动跳转到“用户信息”页面！<a href="userInfo.jsp">立即返回!</a></h4>    
</center>

</body>
</html>