<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>

<%
   User user = (User)session.getAttribute("user");
  int uID = user.getUID();
  
  String csName = null;
  String realName = null;
  int csID = 0;
  
  ResultSet rs = GetInfo.getEnrollingCourse(uID);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>所有可选课程</h1>
<table border="1">
   <tr>
     <td>课程名</td><td>讲课老师</td><td> 选课</td>
   </tr>
   
<%
  while(rs.next())
  {
	  csName = rs.getString("csName");
	  realName = rs.getString("realName");
	  csID = rs.getInt("csID");
	  
	  %>
	  <tr>
	   <td><%=csName %></td>
	   <td><%=realName %></td>
	   <td>
	      <a href="processEnroll.jsp?csID=<%=csID %>">选择该课程</a>
	   </td>				
      </tr>
 <% } %>
 
</table>
</div>

</body>
</html>