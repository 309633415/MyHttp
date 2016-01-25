<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
<head>
    <title>hibernate��ϵӳ��ʵ��</title>
</head>
<body>
    <a href="javascript:void(0)" onclick="checkAdd()">������Ա</a>
    <a id="addHref"  href="relationship/prepareAddPerson.action"></a>
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
							<a href="javascript:void(0)" onclick="checkDelete(this)">ɾ��</a> 
							<a href="relationship/deletePerson.action?personCode=${person.personCode}" class="deleteTd"></a>
							 </td>
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
<script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
		$("#addHref").click();
		function checkAdd(){
			if( ${sum} >9){
				alert("�������ֶ��������þͺã�����̫�࣡");
			}
			else{
			window.location.href = 'relationship/prepareAddPerson.action';
			} 
		}
		function checkDelete(h){
			if( ${sum} < 4){
				alert("��ˮǧɽ�����飬��Ҫɾ���в��С����Ƕ�Ҫɾ���ң�����̫�ٿɲ��ã�");
			}
			else{
				$(h).siblings(".deleteTd")[0].click(); 
			} 
		}
	</script>
</body>
</html>