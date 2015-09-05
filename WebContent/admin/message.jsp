<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查看留言信息</title>
</head>
<body>
<div align="center">
<h1>所有留言信息</h1>
<table border="1" width="98%" >
<tr> 
  <td width="70">针对课程</td>
  <td width="50">留言人</td>
  <td width="80">留言标题</td>
  <td>留言详情</td>
  <td width="33">删除</td>
</tr>
<%
  String csName = null;
  String userName = null;
  String mgTitle = null;
  String mgContent = null;
  int mgID = 0;
   ResultSet rs = GetInfo.getAllMessage();
   while(rs.next())
   {
	   csName = rs.getString("csName");
	   userName = rs.getString("userName");
	   mgTitle = rs.getString("mgTitle");
	   mgContent = rs.getString("mgContent");
	   mgID = rs.getInt("mgID");
	   %>
	   <tr>
	      <td> <%=csName %>  </td>
	      <td> <%=userName %> </td>
	      <td> <%=mgTitle %> </td>
	      <td> <%=mgContent %> </td>
	      <td> <a href="deleteMessage.jsp?mgID=<%=mgID %>"> 删除 </a> </td>
	   </tr>
<%	   	   
 }
%>
</table>
</div>

</body>
</html>