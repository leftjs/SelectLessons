<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@ include file="header.jspf" %>
<html>
	<head>
		<title>起始页面</title>
						<script type="text/javascript">
function check(){
	if(login.userName.value==""){
		alert("请输入用户名");
		form.userName.focus();
		return false;
	}
	if(login.password.value==""){
		alert("请输入密码");
		form.password.focus();
		return false;
	}

}
</script>
	</head>
	<body>
    <div align="center">
		<form action="login.jsp" method="post" name="login" onsubmit="return check();">
			用户名：
			<input name="userName" type="text" size="20" maxlength="32" />
			<br />
			&nbsp;密码：&nbsp;
			<input name="password" type="password" size="21" maxlength="32" />
			<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="submit" type="submit" value="提交" />
			&nbsp;&nbsp;
			<input name="reset" type="reset" value="重置" />
		</form>

		</div>
		
		<br/>
				
		<table border="1" align="center" bordercolor="">
		<tr>
		<td colspan="4" style="font-size: 150%; color: navy; font-weight: bold;" align="center">用于测试系统的典型用户</td>
		</tr>
		<tr align="center">
		<td width="100">用户名</td><td width="50">密码</td><td width="100">身份</td><td width="250">测试项目</td>
		</tr>
		<tr>
		<td>adai</td><td align="center">123</td><td>管理员</td><td>管理员权限(不能注销自己)</td>
		</tr>
		<tr>
		<td>teacher</td><td align="center">123</td><td>老师</td><td>老师权限(不能注销自己)</td>
		</tr>
		<tr>
		<td>student</td><td align="center">123</td><td>学生</td><td>学生权限(不能注销自己)</td>
		</tr>
		<tr>
		<td>testAdmin</td><td align="center">123</td><td>管理员</td><td style="color: blue;">管理员权限 & <span style="color: red;"> 注销自己 </span></td>
		</tr>
		<tr>
		<td>testTeacher</td><td align="center">123</td><td>老师</td><td style="color: blue;" >老师权限 & <span style="color: red;"> 注销自己 </span></td>
		</tr>
		<tr>
		<td>testStudent</td><td align="center">123</td><td>学生</td><td style="color: blue;" >学生权限 & <span style="color: red;"> 注销自己 </span></td>
		</tr>
		</table>
		
		</body>
</html>