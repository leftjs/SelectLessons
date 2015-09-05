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
  String tName = null;
  int csID = 0;
  int enID = 0;
  
  ResultSet rs = GetInfo.getMyCourse(uID);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查看所选课程</title>
</head>
<body>
<div align="center">
<h1>查看所选课程</h1>
<table border="1">
<tr>
<td>课程名</td><td>讲课老师</td><td>查看留言</td><td>添加留言</td><td>删除课程</td>
</tr>
<%
  while(rs.next())
  {
	  csName = rs.getString("csName");
	  tName = rs.getString("tRealName");
	  csID = rs.getInt("csID");
	  enID = rs.getInt("enID");
	  
	  %>
	  <tr>
	   <td><%=csName %></td>
	   <td><%=tName %></td>
	 

				<td>
					<a href="../viewCourseMessage.jsp?csID=<%=csID %>&csName=<%=csName %>">查看留言</a>

				</td>

				<td>
					<a href="../addMessage.jsp?csID=<%=csID %>">添加留言</a>

				</td>
				<td>
					<a href="deleteEnroll.jsp?enID=<%=enID %>">删除该课程</a>

				</td>
				
		</tr>
 <% } %>
				
 </table>
</div>

</body>
</html>