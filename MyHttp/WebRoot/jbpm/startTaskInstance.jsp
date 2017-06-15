<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java"  import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>发起任务</title>
</head>
<body>
    <s:form action="/jbpm/startTask.action" method="post">
    
	<p>发起任务，录入请假id和请假原因发起请假任务。录入的请假人id和请假原因点击提交，发起请假任务。请假人id和请假原因保存在数据库qingjia表中，同时创建一个新的流程实例，添加在流程实例表jbpm_processinstance中。然后发起该流程实例的任务，在jbpm_token表和jbpm_taskinstance表中添加管理数据，任务发起成功之后将任务id和流程id保存在请假表中。
	</p>
	<table>
	<tr><s:textfield name="qj.userId" label="请假人Id" /></tr>
	<tr><s:textfield name="qj.content"  label="请假原因"/></tr>
	<tr><s:submit value="提交"/></tr>
	</table>
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
	</table>
    </s:form>           
    
</body>
</html>
