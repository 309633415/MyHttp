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
		
			<form action="jbpm/transition.action" method="post">
			<table border="1" cellpadding="0" cellspacing="0"  width="70%">
					<thead>
						  <tr bgcolor="#ADD8E6">
						    <td align="center" colspan="2" height="30">任务流转</td>
						  </tr>
					</thead>
					<tbody>
						<tr>
							<td height="30">任务id</td>
							<td>
								<input type="text"  size="20"  width="200" name="taskId" />
							</td>
						</tr>
						<tr>
							<td height="30">转向</td>
							<td>
								<input type="text"  size="20"  width="200" name="transitionName" />
							</td>
						</tr>
						<tr >
								<td align="center"  colspan="2"  height="30">
									<input type="submit"  value="提交" > 
									<input type="reset"  value="重设" />
									<input type="button"  value="返回" onclick="window.history.back(-1)"/>
								</td>
						</tr>
					</tbody>
				</table>
				<br />
			<table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th >请假id</th>
				<th >请假人Id</th>
				<th >请假内容content</th>
				<th >任务Id</th>
				<th >任务名</th>
				<th >节点名</th>
				<th >是否是待办任务</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="qj" items="${qingjiaVOs}">
				<tr>
					<td>${qj.qingjiaid}</td>
					<td>${qj.userId}</td>
					<td>${qj.content}</td>
					<td>${qj.taskId}</td>
					<td>${qj.taskName}</td>
					<td>${qj.nodeName}</td>
					<td><c:if test="${qj.issignalling}"><font color="red">${qj.issignalling}</font></c:if>
						<c:if test="${qj.issignalling == false}">${qj.issignalling}</c:if>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table><br/>
				<br />
				
			</form>
		</div>
  </body>
</html>
