<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
   <%
      session.invalidate();
   %>
   

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="refresh" content="3;url=mainFrame.jsp"/>
<title>Insert title here</title>
</head>
<body>

   <center>
      <h1>退出成功</h1>
      <h4>三秒钟后，自动跳转到起始页面！<a href="mainFrame.jsp">立即返回!</a></h4>
   </center>
</body>
</html>