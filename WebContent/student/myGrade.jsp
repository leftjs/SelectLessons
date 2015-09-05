<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>

<%
	User user = (User) session.getAttribute("user");
    int uID = user.getUID();
    
    ResultSet rs = GetInfo.getMyGrade(uID);
    String csName = null;
    int enGrade = 0;
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查看成绩</title>
</head>
<body>
<div align="center">
<h1>查看成绩</h1>
<table border="1" width="150">
<tr>
  <td>课程名</td><td>成绩</td>
</tr>

<%
  while(rs.next())
  {
	  csName = rs.getString("csName");
	  enGrade = rs.getInt("enGrade");
	  
	  %>
	  <tr>
	   <td><%=csName %></td>
	   <td><%=enGrade %></td>				
	</tr>
 <% } %>



</table>
 </div>

</body>
</html>