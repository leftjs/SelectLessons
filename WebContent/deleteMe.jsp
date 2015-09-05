<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>

<%
    User user = (User)session.getAttribute("user");
    int uID = user.getUID();
    boolean successed = DeleteInfo.deleteMe(uID);
    if(successed)
    	session.invalidate();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="3;url=index.jsp"/>
<title>×¢Ïú×Ô¼º</title>
</head>
<body>
  <center>
  <p>&nbsp;</p> <p>&nbsp;</p><p>&nbsp;</p> <p>&nbsp;</p>
    <h1>ÄúÒÑ¾­³É¹¦×¢ÏúÁË×Ô¼ºµÄÕËºÅ£¬ÇëÒÔºóÖØÐÂ×¢²áÕËºÅ£¡</h1>
    <h3>ÈýÃëÖÓºó£¬×Ô¶¯Ìø×ªµ½¡°µÇÂ¼¡±½çÃæ£¡<a href="index.jsp">Á¢¼´·µ»Ø</a> </h3>

  </center>

</body>
</html>