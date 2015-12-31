<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'hibernateQuery.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div align="center">
		<form action="hibernatecrud/update.action" method="post">
			<br />
			<table border="1" cellpadding="0" cellspacing="0"  width="70%">
					<thead>
						  <tr bgcolor="#ADD8E6">
						    <td align="center" colspan="2" height="30">个人信息表</td>
						  </tr>
					</thead>
				<tbody>
					<tr>
						<td width="202" height="30" nowrap="nowrap">编号</td>
						<td width="792"><input type="text" name="user.id" value="${user.id }"
							readonly="readonly" size="20"  width="200" /></td>
					</tr>
					<tr>
						<td height="30">姓名</td>
						<td><input type="text" size="20" width="200"
							name="user.username" value="${user.username }" /></td>
					</tr>
					<tr>
						<td height="30">密码</td>
						<td><input type="text" size="20" width="200"
							name="user.password" value="${user.password }" /></td>
					</tr>
					<tr>
						<td align="center" colspan="2" height="30">
						<input type="submit" value="提交"> 
						<input type="reset" value="重设" />
						<input type="button" value="返回" onclick="window.history.back(-1)" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>
