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
				<th width="25%">编号</th>
				<th width="25%">姓名</th>
				<th width="25%">密码</th>
				<th width="25%">操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
						<td style="stylel-align: center;">
								<a href="hibernatecrud/prepareUpdate.action?id=${user.id}">编辑</a>
								<a href="javascript:void(0)" onclick="checkDelete(this)">删除</a>
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
						姓名： 
						<input type="text" name="searchText" value="${searchText }" /> 
							<input type="submit" value="查询"/>
					</form>
				</td>
		</tr>
		<tr>
			<td>
				<form action="hibernatecrud/prepareAdd.action" method="post"  id="addFm">
					<input type="button" value="添加新用户"onclick="checkAdd()" />
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
				alert("数据这种东西，够用就好，不必太多！");
			}
			else{
				addFm.submit();
			} 
		}
		function checkDelete(h){
		temp = $($(h).parent().prevAll().eq(2)).text();
		console.log(temp);
			if( ${sum} < 6){
				alert("万水千山总是情，不要删我行不行。若是定要删了我，数据太少可不好！");
			}
			else if(temp < 4){
				alert("请不要删除前三条数据，它们的id在‘连接查询’中使用到");
			}
			else{
				$(h).siblings(".deleteTd")[0].click(); 
			} 
		}
	</script>
</body>
</html>
