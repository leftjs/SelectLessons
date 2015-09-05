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
<title></title>
<style type="text/css">
<!--
.STYLE3 {font-size: 18px; font-weight: bold; }
-->
</style>
</head>

<body>
<table width="130" border="1" align="center">
  		  <tr>
				<td height="30" align="center" valign="middle"><div align="center" class="STYLE3">
					欢迎您，<%=user.getRealName() %> </div>
				</td>
			</tr>
  <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE3"><a href="../myInfo.jsp" target="stuMainFrame">个人信息</a></div></td>
  </tr>
   <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE3"><a href="../changeMyInfo.jsp" target="stuMainFrame">修改个人信息</a></div></td>
  </tr>
   <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE3"><a href="../changePwd.jsp" target="stuMainFrame">修改密码</a></div></td>
  </tr>
  <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE3"><a href="myCourse.jsp" target="stuMainFrame">查看所选课程</a></div></td>
  </tr>
  <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE3"><a href="myGrade.jsp" target="stuMainFrame">查看成绩</a></div></td>
  </tr>
  <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE3"><a href="enroll.jsp" target="stuMainFrame">去选课</a></div></td>
  </tr>
    <tr>
    <td height="30" align="center" valign="middle"><div align="center" class="STYLE3"><a href="../deleteMe.jsp" target="_top">注销自己</a></div></td>
  </tr>
</table>
</body>

</html>
