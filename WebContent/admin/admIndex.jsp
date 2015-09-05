<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理员页面</title>
</head>

<frameset rows="*" cols="144,*" framespacing="0" frameborder="no" border="0">
  <frame src="admLeftFrame.jsp" name="admLeftFrame" scrolling="no" noresize="noresize" id="admLeftFrame" title="admLeftFrame" />
  <frame src="../myInfo.jsp" name="admMainFrame" id="admMainFrame" title="admMainFrame" />
</frameset>
</html>
