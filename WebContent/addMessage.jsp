<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="java.sql.*"%>

<%
    int csID = Integer.parseInt(request.getParameter("csID"));
    session.setAttribute("csID", csID);
    ResultSet courseRs = GetInfo.getCourseInfo(csID);
    String realName = null;
    String csName = null;
    try{
    	while(courseRs.next())
        {
        	realName = courseRs.getString("realName");
        	csName = courseRs.getString("csName");
        	
        }
    }catch(Exception ex)
    {
    	ex.printStackTrace();
    }
    session.setAttribute("csName",csName);
    
    
    
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
</head>
<body>
<center>
<form name="addMessage" method="post" action="processAddMessage.jsp">
<h1>您正在针对“<%=csName %>”课程留言</h1>
<table width="400" border="0">
     <tr>
    <td colspan="10"><hr/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
  <tr>
    <th colspan="5" scope="col" width="50%" align="left">课程名：<%=csName %></th>
    <th colspan="5" scope="col" width="50%" align="left">讲课老师：<%=realName %></th>
  </tr>
  <tr>
    <td colspan="1" scope="col"  align="left">留言标题：</td>
    <td colspan="9" scope="col"  align="left"><input name="mgTitle" type="text" size="61" maxlength="100"></td>
  </tr>

  <tr>
    <td>留言内容：</td>
    <td colspan="9" rowspan="2" height="10">
      <textarea name="mgContent" id="mgContent" cols="60" rows="5"></textarea>    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
  <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" align="center"><input name="submint" type="submit" value="Submit"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" align="center"><input name="reset" type="reset" value="Reset"></td>
    <td>&nbsp;</td>
    <td >&nbsp; </td>
  </tr>
</table>
</form>
</center>
</body>
</html>