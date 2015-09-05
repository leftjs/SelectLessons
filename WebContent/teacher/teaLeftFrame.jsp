<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>

<%
	User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>老师主页</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 18px}
.STYLE4 {font-size: 18px; font-weight: bold; }
-->
</style>
</head>

<body>
<table width="130" border="1" align="center">
  		  <tr>
				<td height="30" align="center" valign="middle"><div align="center" class="STYLE1">
					欢迎您，<%=user.getRealName() %> </div>
				</td>
			</tr>
  <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE1"><strong><a href="../myInfo.jsp" target="teaMainFrame">个人信息</a></strong></div></td>
  </tr>
   <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE1"><strong><a href="../changeMyInfo.jsp" target="teaMainFrame">修改个人信息</a></strong></div></td>
  </tr>
  <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE1"><strong><a href="../changePwd.jsp" target="teaMainFrame">修改密码</a></strong></div></td>
  </tr>
   <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE1"><strong><a href="viewCourse.jsp" target="teaMainFrame">查看课程</a></strong></div></td>
  </tr>
  <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE1"><strong><a href="addCourse.jsp" target="teaMainFrame">创建课程</a></strong></div></td>
  </tr>
  <tr>
    <td height="30" align="center" valign="middle"><span class="STYLE4"><a href="viewStu.jsp" target="teaMainFrame">查看选课学生</a></span></td>
  </tr>
    <tr>
    <td height="30" align="center" valign="middle"><span class="STYLE4"><a href="../deleteMe.jsp" target="_top">注销自己</a></span></td>
  </tr>
</table>
</body>
</html>
