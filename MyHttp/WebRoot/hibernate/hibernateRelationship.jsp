<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
<head>
    <title>hibernate��ϵӳ��ʵ��</title>
</head>
<body>
<div style="color:blue;">
<br/>

</div>
    <a href="relationship/prepareAddPerson.action">�����Ա</a>
    <!-- <input type="button" value="�����Ա"  onclick="window.location.href='%{#request.basePath}/relationship/prepareAddPerson.action'"/> -->
    <p><strong>Person</strong></p>
    <a href="relationship/viewPerson.action?personCode=${person.personCode}">${person.personCode}</a>
    <table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="33%">���</th>
				<th width="33%">����</th>
				<th width="33%">����</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="person" items="${personList}">
				<tr>
					<td><a href="relationship/viewPerson.action?personCode=${person.personCode}">${person.personCode}</a></td>
					<td>${person.personName}</td>
					<td style="stylel-align: center;">
							<a href="relationship/prepareUpdatePerson.action?personCode=${person.personCode}">�༭</a> 
							<a href="relationship/deletePerson.action?personCode=${person.personCode}">ɾ��</a> </td>
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