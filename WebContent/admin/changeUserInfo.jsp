<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%
	User changingUser = null;
%>

<%
	//int uID = ParamUtils.getIntAttribute(request, "uID", 0);
    int uID = Integer.parseInt(request.getParameter("uID"));
	String sql = "select * from usertb where uID=" + uID;

	Connection conn = ConnectDB.getConnection();
	Statement stmt = ConnectDB.createStatement(conn);
	ResultSet rs = ConnectDB.executeQuery(stmt, sql);

	while (rs.next()) {
		changingUser = new User(rs.getInt("uID"), rs.getString("userName"), 
				rs.getString("password"), rs.getString("realName"), 
				rs.getString("email"), rs.getString("sex"), 
				rs.getInt("type"));
	}
	
	session.setAttribute("changingUser",changingUser);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<body >
	
	<center>
	   <h1>修改用户信息</h1>
		<form id="changeUserInfo" name="changeUserInfo" method="post" action="processChangeUserInfo.jsp">
		<table border="1">
		<tr>
			<td>&nbsp;用户名：&nbsp;</td>
			<td><input name="userName" type="text" maxlength="30" size="20" value=<%=changingUser.getUserName() %> /></td>
		</tr>
		<tr>
			<td>真实姓名：</td>
			<td> <input name="realName" type="text" maxlength="30" size="20" value=<%=changingUser.getRealName() %> /></td>
		</tr>
		<tr>
			<td>电子邮件：</td>
			<td><input name="email" type="text" maxlength="50" size="20" value=<%=changingUser.getEmail() %> /></td>
		</tr>
		<tr>
		<td colspan="2">
			&nbsp;&nbsp;性别：&nbsp;&nbsp;
			<input name="sex" type="radio" value="男" <% if("男".equals(changingUser.getSex())) out.print("checked"); %> />
			男
			<input name="sex" type="radio" value="女" <% if("女".equals(changingUser.getSex())) out.print("checked"); %> />
			女			</td>
			</tr>
			<tr>
			<td colspan="2">
			<input name="submit" type="submit" value="提交" />
			&nbsp;&nbsp;
			<input name="reset" type="reset" value="重置" />			</td>
			</tr>
			</table>
		</form>
		</center>
	
	


	</body>
</html>