<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>创建用户</title>
				<script type="text/javascript">
function check(){
	if(addUserForm.userName.value==""){
		alert("请输入用户名");
		form.userName.focus();
		return false;
	}
	if(addUserForm.password.value==""){
		alert("请输入密码");
		form.password.focus();
		return false;
	}

}
</script>
	</head>
	<body>
	  <div align="center">
	  
	  <h1>创建用户</h1>
	  
		<form action="processAddUser.jsp" method="post" name="addUserForm" onSubmit="return check();">
		<table border="1">
		<tr>
		<td>
			&nbsp;用户名&nbsp;：			</td><td>
			<input name="userName" type="text" size="20" maxlength="32" />
			</td>
			</tr>
			<tr>
			<td>
			&nbsp;密&nbsp;&nbsp;码：&nbsp;</td><td>
            <input name="password" type="password" size="21" maxlength="32" /></td>
            </tr>
            <tr>
            <td>
			真实姓名：</td><td>
			<input name="realName" type="text" size="20" maxlength="32" />
			</td>
			</tr><tr>
			<td colspan="2">
			&nbsp;性&nbsp;&nbsp;别：&nbsp;
			<input name="sex" type="radio" value="男" checked="checked" />
			男
			<input name="sex" type="radio" value="女" />
			女			</td>
			</tr>
			<tr>
			<td>
			&nbsp;E-mail:&nbsp;&nbsp;			</td><td>
			<input name="email" type="text" size="20" maxlength="50" />
			</td>
			</tr><tr>
			<td>
			用户类型：</td><td>
			<select name="type">
				<option value="3" selected="selected">
					学生				</option>
				<option value="2">
					老师				</option>
				<option>
					———				</option>
				<option value="1">
					管理员				</option>
			</select>
            &nbsp;
            </td>
            </tr><tr>
            <td colspan="2" align="center">
            <input name="submit" type="submit" value="提交" />
            &nbsp;&nbsp;&nbsp;
            <input name="reset" type="reset" value="重置" />            </td>
            </tr>
            </table>

		</form>
	  </div>

	</body>
</html>