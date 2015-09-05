<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>

<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
		<%
		    String pageuserName  = request.getParameter("userName");
		    
			String pagepassword = request.getParameter("password");
			
			String sql = "select * from usertb where username='" +pageuserName+ "'";
			
			Connection conn = ConnectDB.getConnection();
			Statement stmt = ConnectDB.createStatement(conn);
			ResultSet rs = ConnectDB.executeQuery(stmt, sql);
			
			User user = null;
			int uID =0;
			String userName = null; 
			String password = null;
			String realName;
			String email;
			String sex ;
			int type = 0;
			
			while (rs.next()) {
				uID = rs.getInt("uID");
				userName = rs.getString("username");
			    password = rs.getString("password");
			    realName = rs.getString("realName");
			    email = rs.getString("email");
			    sex = rs.getString("sex");
				type = rs.getInt("type");
				user = new User(uID, userName, password, realName, email, sex, type);
				
			}
			if (password.equalsIgnoreCase(pagepassword)) {
				
				session.setAttribute("uID", uID);
				session.setAttribute("user", user);
				session.setMaxInactiveInterval(10*60);
				
				switch (type) {
				case 1:
					response.sendRedirect("admin/admIndex.jsp");
					break;
				case 2:
					response.sendRedirect("teacher/teaIndex.jsp");
					break;
				case 3:
					response.sendRedirect("student/stuIndex.jsp");
					break;
				}
			} else {
		%>

		<center>
			<h1>
				输入有误
			</h1>
			<a href=mainFrame.jsp>点击返回</a>
		</center>
		<%
			}
			ConnectDB.close(rs);
			ConnectDB.close(stmt);
			ConnectDB.close(conn);
		%>


	</body>
</html>