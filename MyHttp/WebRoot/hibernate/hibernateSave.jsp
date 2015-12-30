<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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

  </head>
  
  <body>
   fuck<br>
   <form action="query.action" method="post">
		<table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
				  <tr bgcolor="#ff0">
				    <th width="25%">编号</th>
				    <th width="25%">姓名</th>
				    <th width="25%">密码</th>
				    <th width="25%">操作</th>
				  </tr>
				  </thead>
				  <tbody>
				  <c:forEach var="user" items="${users }">
						<tr  >
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.password}</td>
							<td style="stylel-align: center;">
							<%-- 	<a href="edit.action?param=0&id=${user.id}">编辑</a>
								<a href="delete.action?id=${user.id}">删除</a> --%>
							</td>
						</tr>
					</c:forEach>
				  </tbody>
		</table>
		</form>
   		<br><br>
		<table align="center">
			<tr>
				<td style="vertical-align: middle;">
				<form action="queryname.action" method="post">
				姓名：
							<input type="text" style="width: 300px;height: 30px;font-size: 16px" name="queryTextName"  value="${searchTextName }"/>
							<input type="submit" value="查询" style="width: 100px;height: 30px;font-size: 16px" 
							onclick="window.location.href='query.action'"/>
						</form>
				</td>
			</tr>
			
			<tr></tr>
			<tr>
				<td>
				<input type="button" value="添加新用户" style="width: 100px;height: 30px;font-size: 16px" 
							onclick="window.location.href='add.action?param=0'"/>
				</td>
			</tr>
			
		</table>
  </body>
</html>
