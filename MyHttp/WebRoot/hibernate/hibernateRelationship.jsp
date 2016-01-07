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
    <a href="relationship/prepareAddPerson.action">������Ա</a>
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
	<p><strong>PersonInform.javaʵ�����Ӧ�����ݱ�������ǣ�</strong></p>
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
	<p>
	&nbsp;&nbsp;Person��PersonInform��һ��һ�Ĺ�������PersonInform�ж��������personCode����������PersonInform��������ά��������ϵ��<br/>
	&nbsp;&nbsp;һ��һ�Ĺ�����ϵһ��ȷ��������ɾ�Ĳ�Ĳ����Ͼ�������ͬ�ˡ�<br/>
	&nbsp;&nbsp;��������Ա������ʱ����jspҳ���У�input����nameҪ����������</p>
	<pre style="color:blue">
&lt;input type="text" name="person.personCode" /&gt;
&lt;input type="text" name="person.personName" /&gt;
&lt;input type="text" name="person.personInform.age" /&gt;
&lt;input type="text" name="person.personInform.mailBox"  /&gt;
	</pre>
	<p>&nbsp;&nbsp;actionʵ�ֵ�ʱ����������ݿ�֮ǰ����Ҫά���¹�����ϵ����֤һ��һ����ʱ��һ�ű��ֵ��Ϊ�գ�</p>
	<pre style="color:blue">
public String doAddPerson() {
	person.getPersonInform().setPerson(person);
	relationShipService.addPerson(person);
	return SUCCESS;
}
	</pre>
	<p>&nbsp;&nbsp;���²��������Ӳ������ƣ�</p>
	<pre style="color:blue">
public String doUpdatePerson() {
	person.getPersonInform().setPerson(person);
	relationShipService.updatePerson(person);
	return SUCCESS;
}</pre>
<p>&nbsp;&nbsp;������ɾ���Ͳ鿴������ʱ��ֻ��Ҫ��������в�����hibernate���Զ��������ı�ͬʱɾ����鿴��<br/>
ɾ��������</p>
<pre style="color:blue">
public String doDeletePerson(){
	relationShipService.deletePerson(personCode);
	return SUCCESS;
}
</pre>
<br/>
<br/>
</body>
</html>