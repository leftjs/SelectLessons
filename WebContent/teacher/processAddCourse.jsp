<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%@page import="java.sql.* "%>

<%

   User user = (User)session.getAttribute("user");
   
   int uID = user.getUID();
   
   String csName = request.getParameter("csName");
   
   try{
	   Connection conn = ConnectDB.getConnection();
	   String sql = "Insert Into coursetb(csName, csTeacher) Values(?,?)";
	   PreparedStatement pstmt = ConnectDB.prepareStmt(conn, sql);
	   pstmt.setString(1,csName);
	   pstmt.setInt(2, uID);
	   pstmt.execute();
   }catch(Exception e)
   {
	   e.printStackTrace();
   }
   
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewCourse.jsp"/>
<title>Insert title here</title>
</head>
<body>
<center>
      <h1>添加成功</h1>
      <h4>三秒钟后，自动跳转到课程信息页面！<a href="viewCourse.jsp">立即返回!</a></h4>    
</center>

</body>
</html>