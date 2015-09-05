<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="java.sql.*"%>
<%@page import="model.*"%>
<%
   User user = (User)session.getAttribute("user");
   int uID = user.getUID();
   
   ResultSet rs = GetInfo.getStudentWithUID(uID);
   
   String userName = null;
   String realName = null;
   String csName = null;
   int enGrade =  0;
   int enID = 0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>查看选您讲授的课程的学生</h1>
<table border="1">
<tr>
<th >学生姓名</th><th>所选课程</th><th>成绩</th><th>打分</th><th>删除</th>
</tr>
<%

   while(rs.next())
   {
	   userName = rs.getString("userName");
	   realName = rs.getString("realName");
	   csName = rs.getString("csName");
	   enGrade = rs.getInt("enGrade");
	   enID = rs.getInt("enID");
%>
 <tr>
<td><%=realName %>（<%=userName %>）</td><td><%=csName %></td><td><%=enGrade %></td><td><a href="grading.jsp?enID=<%=enID %>&userName=<%=userName %>"><%if(enGrade==0) {out.print("打分");}else {out.print("修改");} %></a></td><td><a href="deleteEnStu.jsp?enID=<%=enID %>">删除</a> </td>
</tr>
	 <% } %>
</table>
</div>

</body>
</html>