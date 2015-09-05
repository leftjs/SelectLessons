<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="model.*"%>

<%
	User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>无标题文档</title>

	</head>

	<body>
	   <center>
	   <h1>修改个人信息</h1>
		<form id="changeMyInfo" name="changeMyInfo" method="post" action="processChangeMyInfo.jsp">
		<table border="1">
		<tr>
			<td>&nbsp;用户名：&nbsp;</td>
			<td><input name="userName" type="text" maxlength="30" size="20" value=<%=user.getUserName() %> /></td>
		</tr>
		<tr>
			<td>真实姓名：</td>
			<td> <input name="realName" type="text" maxlength="30" size="20" value=<%=user.getRealName() %> /></td>
		</tr>
		<tr>
			<td>电子邮件：</td>
			<td><input name="email" type="text" maxlength="50" size="20" value=<%=user.getEmail() %> /></td>
		</tr>
		<tr>
		<td colspan="2">
			&nbsp;&nbsp;性别：&nbsp;&nbsp;
			<input name="sex" type="radio" value="男" <% if("男".equals(user.getSex())) out.print("checked"); %> />
			男
			<input name="sex" type="radio" value="女" <% if("女".equals(user.getSex())) out.print("checked"); %> />
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
