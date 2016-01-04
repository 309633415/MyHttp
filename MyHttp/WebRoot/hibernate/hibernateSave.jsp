<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'hibernateSave.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
tr {
	height: 30px;
}

td {
	text-align: center;
}
</style>
</head>

<body>
	<table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="25%">���</th>
				<th width="25%">����</th>
				<th width="25%">����</th>
				<th width="25%">����</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
					<td style="stylel-align: center;">
							<a href="hibernatecrud/prepareUpdate.action?id=${user.id}">�༭</a>
							<a href="hibernatecrud/delete.action?id=${user.id}">ɾ��</a> </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>
	<table align="center">
		<tr>
			<td style="vertical-align: middle;">
					<form action="hibernatecrud/query.action" method="post">
						������ 
						<input type="text" name="searchText" value="${searchText }" /> 
							<input type="submit" value="��ѯ"/>
					</form>
				</td>
		</tr>
		<tr>
			<td><input type="button" value="������û�"
				onclick="window.location.href='hibernatecrud/prepareAdd.action'" />
			</td>
		</tr>
	</table>
	<br />
	<br />
</body>
</html>
