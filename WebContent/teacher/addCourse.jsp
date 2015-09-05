<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>创建课程</title>
</head>

<body>
<center>
<h1>创建课程</h1>
<form action="processAddCourse.jsp" method="post" name="addCourse" >
课程名：<input name="csName" type="text" size="20" maxlength="50" /><br />
 <input name="submit" type="submit" value="提交"/>&nbsp;&nbsp;<input name="reset" type="reset" value="重置"/>
</form>
</center>
</body>
</html>
