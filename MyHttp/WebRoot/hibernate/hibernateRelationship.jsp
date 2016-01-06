<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
<head>
    <title>hibernate关系映射实例</title>
</head>
<body>
<div style="color:blue;">
<br/>

</div>
    <a href="relationship/prepareAddPerson.action">添加人员</a>
    <!-- <input type="button" value="添加人员"  onclick="window.location.href='%{#request.basePath}/relationship/prepareAddPerson.action'"/> -->
    <p><strong>Person</strong></p>
    <a href="relationship/viewPerson.action?personCode=${person.personCode}">${person.personCode}</a>
    <table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="33%">编号</th>
				<th width="33%">姓名</th>
				<th width="33%">操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="person" items="${personList}">
				<tr>
					<td><a href="relationship/viewPerson.action?personCode=${person.personCode}">${person.personCode}</a></td>
					<td>${person.personName}</td>
					<td style="stylel-align: center;">
							<a href="relationship/prepareUpdatePerson.action?personCode=${person.personCode}">编辑</a> 
							<a href="relationship/deletePerson.action?personCode=${person.personCode}">删除</a> </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>   
	<p><strong>PersonInform</strong></p>
	<table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="25%">Id</th>
				<th width="25%">Age</th>
				<th width="25%">mailBox</th>
				<th width="25%">personCode</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="personInform" items="${personInformList}">
				<tr>
					<td>${personInform.id}</td>
					<td>${personInform.age}</td>
					<td>${personInform.mailBox}</td>
					<td>${personInform.person.personCode}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>   
	
	
</body>
</html>