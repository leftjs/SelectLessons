<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%
int enID = 0;
try{
	enID = Integer.parseInt(request.getParameter("enID"));
}catch(Exception e)
{
	e.printStackTrace();
}
   
   session.setAttribute("enID", enID);
   String userName = request.getParameter("userName");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>打分</title>
</head>
<body>
<h1 align="center">给学生“<%=userName %>”打分</h1>
<table align="center" border="1">


<tr>
<td>
<form action="processGrading.jsp" method="post" >
学生：</td><td><%=userName %></td>
</tr>
<tr>
<td>成绩：</td><td><input name="enGrade" type="text" size="10" maxlength="20" />

</td>
</tr>
<tr>
<td colspan="2" align="center">
 <input name="submit" type="submit" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;<input name="reset" type="reset" value="重置"/>
  </td>
</tr>



</table>

</body>
</html>