<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>


<% 
	//int uID = ParamUtils.getIntAttribute(request, "uID", 0);
    int csID = Integer.parseInt(request.getParameter("csID"));
	String sql = "delete from coursetb where csID="+csID;

	Connection conn = ConnectDB.getConnection();
	Statement stmt = ConnectDB.createStatement(conn);
	//boolean deleteSuccessed = false;
	//boolean deleteSuccessed  =  false;
    //deleteSuccessed = stmt.execute(sql);
    int deleteLine = stmt.executeUpdate(sql);
%>	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewCourse.jsp"/>
<title>Insert title here</title>
</head>
<body>
<center>
      <h1><%="删除成功"%></h1>
      <h4>三秒钟后，自动跳转到起始页面！<a href="viewCourse.jsp">立即返回!</a></h4>
</center>

</body>
</html>