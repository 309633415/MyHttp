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

<title>hibernateSave</title>

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
								<a href="javascript:void(0)" onclick="checkDelete(this)">ɾ��</a>
								<a href="hibernatecrud/delete.action?id=${user.id}" class="deleteTd" ></a>
 						</td>
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
			<td>
				<form action="hibernatecrud/prepareAdd.action" method="post"  id="addFm">
					<input type="button" value="������û�"onclick="checkAdd()" />
				</form>
			</td>
		</tr>
	</table>
	<br />
	<br />
	<script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		function checkAdd(){
			if( ${sum} >14){
				alert("�������ֶ��������þͺã�����̫�࣡");
			}
			else{
				addFm.submit();
			} 
		}
		function checkDelete(h){
		temp = $($(h).parent().prevAll().eq(2)).text();
		console.log(temp);
			if( ${sum} < 6){
				alert("��ˮǧɽ�����飬��Ҫɾ���в��С����Ƕ�Ҫɾ���ң�����̫�ٿɲ��ã�");
			}
			else if(temp < 4){
				alert("�벻Ҫɾ��ǰ�������ݣ����ǵ�id�ڡ����Ӳ�ѯ����ʹ�õ�");
			}
			else{
				$(h).siblings(".deleteTd")[0].click(); 
			} 
		}
	</script>
</body>
</html>
