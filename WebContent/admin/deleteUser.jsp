<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>


<% 
	//int uID = ParamUtils.getIntAttribute(request, "uID", 0);
    int uID = Integer.parseInt(request.getParameter("uID"));
	String sql = "delete from usertb where uID="+uID;

	Connection conn = ConnectDB.getConnection();
	Statement stmt = ConnectDB.createStatement(conn);
	//boolean deleteSuccessed = false;
	//boolean deleteSuccessed  =  false;
    //deleteSuccessed = stmt.execute(sql);
    int deleteLine = stmt.executeUpdate(sql);
%>	

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="refresh" content="3;url=userInfo.jsp"/>

<title>Insert title here</title>
</head>
<body>
<center>
      <h1><%="删除成功"%></h1>
      <h4>三秒钟后，自动跳转到起始页面！<a href="userInfo.jsp">立即返回!</a></h4>
</center>
   
</body>
</html>