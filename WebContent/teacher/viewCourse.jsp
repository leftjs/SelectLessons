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
   
   int csID = 0;
   String  csName = null;
   int csTeacher = 0;
   
   String sql = "select * from coursetb where csTeacher="+ uID;
   Connection conn = ConnectDB.getConnection();
   Statement stmt = ConnectDB.createStatement(conn);
   ResultSet rs = ConnectDB.executeQuery(stmt, sql);
   
   
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>查看课程</title>
</head>

<body>
<center>
<h1>您讲授的所有课程</h1>
<table width="400" border="1" align="center">
  <tr>
    <td>课程名</td>
    <td>查看留言</td>
    <td>添加留言</td>
    <td>修改</td>
    <td>删除</td>
  </tr>
  <%
			try
			{
				while(rs.next())
				{
					csID = rs.getInt("csID");
					csName = rs.getString("csName");
						%>
			<tr>
				<td><%=csName %>

				</td>
				<td>
					<a href="../viewCourseMessage.jsp?csID=<%=csID %>&csName=<%=csName %>">查看留言</a>

				</td>
				<td>
					<a href="../addMessage.jsp?csID=<%=csID %>">添加留言</a>

				</td>			
				
				<td>
					<a href="changeCourseInfo.jsp?csID=<%=csID %>">修改</a>

				</td>
				<td>
					<a href="deleteCourse.jsp?csID=<%=csID %>">删除</a>

				</td>
			</tr>

			<%}
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			%>
</table>
</center>
</body>
</html>
