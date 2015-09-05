<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%@page import="util.*"%>
<%
	User user = (User)session.getAttribute("user");

int uID = user.getUID();

int csID = Integer.parseInt(request.getParameter("csID"));
session.setAttribute("csID",csID);

String csName = null;

String sql = "select * from coursetb where csID="+csID;


try{
	Connection conn = ConnectDB.getConnection();
	Statement stmt = ConnectDB.createStatement(conn);
	ResultSet rs = ConnectDB.executeQuery(stmt, sql); 
	while (rs.next()) {
		csName = rs.getString("csName");
	}
}catch(Exception e)
{
	e.printStackTrace();
}


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>修改课程信息</title>
</head>
<body>
<center>
<h1>修改课程信息</h1>
<form id="changeCourseInfo" name="changeCourseInfo" method="post" action="processChangeCourseInfo.jsp">
			&nbsp;课程名：&nbsp;
			<input name="csName" type="text" maxlength="30" size="20"
				value=<%=csName %> />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="submit" type="submit" value="提交" />
			&nbsp;&nbsp;
			<input name="reset" type="reset" value="重置" />
		</form>
</center>
</body>
</html>