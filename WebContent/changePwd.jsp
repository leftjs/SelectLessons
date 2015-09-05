<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>修改密码</title>
		<script type="text/javascript">
function check(){
	if(changepwd.oldPwd.value==""){
		alert("请键入原密码");
		form.oldPwd.focus();
		return false;
	}
	if(changepwd.newPwd.value==""){
		alert("请键入新密码");
		form.newPwd.focus();
		return false;
	}
	if(changepwd.ensurePwd.value==""){
		alert("请确认新密码");
		form.ensurePwd.focus();
		return false;
	}
	if(changepwd.newPwd.value!=changepwd.ensurePwd.value){
		alert("两次输入的新密码不同请重新输入");
		form.newPwd.value="";
		form.ensurePwd.value="";
		form.newPasswd.focus();
		return false;
	}
}
</script>
	</head>
	<body>
		
		<form action="processChangePassword.jsp" method="post" name="changepwd" onsubmit="return check();">
			<div align="center">
				<h1>
					修改密码
				</h1>
				<table border="1">
				<tr>
				<td>
				&nbsp;&nbsp;原密码：</td><td>
				<input name="oldPwd" type="password" size="20" maxlength="32" />
				</td>
				</tr><tr>
				<td>
				&nbsp;&nbsp;新密码：</td><td>
				<input name="newPwd" type="password" size="20" maxlength="32" />
				</tr><tr><td>
				确认密码：</td><td>
				<input name="ensurePwd" type="password" size="20" maxlength="32" /></td>
				</tr><tr><td colspan="2">
				<input name="" type="submit" value="提交" />
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="" type="reset" value="重置" /></td>
				</tr>
				</table>
			</div>
		</form>
	</body>
</html>
