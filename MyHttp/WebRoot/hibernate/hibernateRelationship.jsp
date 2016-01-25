<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<html>
<head>
    <title>hibernate关系映射实例</title>
</head>
<body>
    <a href="javascript:void(0)" onclick="checkAdd()">增加人员</a>
    <a id="addHref"  href="relationship/prepareAddPerson.action"></a>
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
							<a href="javascript:void(0)" onclick="checkDelete(this)">删除</a> 
							<a href="relationship/deletePerson.action?personCode=${person.personCode}" class="deleteTd"></a>
							 </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>   
	<p><strong>PersonInform.java实体类对应的数据表的内容是：</strong></p>
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
	&nbsp;&nbsp;Person和PersonInform是一对一的关联，在PersonInform中定义了外键personCode，所以是由PersonInform表来负责维护关联关系。<br/>
	&nbsp;&nbsp;一对一的关联关系一旦确立，在增删改查的操作上就有所不同了。<br/>
	&nbsp;&nbsp;当增加人员操作的时候，在jsp页面中，input框中name要如下命名：</p>
	<pre style="color:blue">
&lt;input type="text" name="person.personCode" /&gt;
&lt;input type="text" name="person.personName" /&gt;
&lt;input type="text" name="person.personInform.age" /&gt;
&lt;input type="text" name="person.personInform.mailBox"  /&gt;
	</pre>
	<p>&nbsp;&nbsp;action实现的时候，在添加数据库之前，需要维护下关联关系，保证一对一关联时另一张表的值不为空：</p>
	<pre style="color:blue">
public String doAddPerson() {
	person.getPersonInform().setPerson(person);
	relationShipService.addPerson(person);
	return SUCCESS;
}
	</pre>
	<p>&nbsp;&nbsp;更新操作和增加操作类似：</p>
	<pre style="color:blue">
public String doUpdatePerson() {
	person.getPersonInform().setPerson(person);
	relationShipService.updatePerson(person);
	return SUCCESS;
}</pre>
<p>&nbsp;&nbsp;但是在删除和查看操作的时候，只需要对主表进行操作，hibernate会自动将关联的表同时删除或查看。<br/>
删除操作：</p>
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
				alert("数据这种东西，够用就好，不必太多！");
			}
			else{
			window.location.href = 'relationship/prepareAddPerson.action';
			} 
		}
		function checkDelete(h){
			if( ${sum} < 4){
				alert("万水千山总是情，不要删我行不行。若是定要删了我，数据太少可不好！");
			}
			else{
				$(h).siblings(".deleteTd")[0].click(); 
			} 
		}
	</script>
</body>
</html>