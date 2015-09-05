<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>

<%
   //User addingUser = null;
   String userName = request.getParameter("userName");
   String password = request.getParameter("password");
   String realName = request.getParameter("realName");
   String email = request.getParameter("email");
   String sex = request.getParameter("sex");
   int type = 3;
   type = Integer.parseInt(request.getParameter("type"));
   
   
   
   boolean addSuccessed = AddUser.addUser(userName, password, realName, email, sex, type);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<%
   out.println("<meta http-equiv=\"refresh\" content=\"3;url=userInfo.jsp\"/>");
%>
<meta http-equiv="refresh" content="3;url=userInfo.jsp"/>
<title>处理创建用户</title>
</head>
<body>

<center>
  
      <h1><%="创建成功"%></h1>
      <h4>三秒钟后，自动跳转到用户信息页面！<a href="userInfo.jsp">立即返回!</a></h4>
    
   </center>

</body>
</html>