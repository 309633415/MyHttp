<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <title>hibernate关系映射实例</title>
</head>
<body>
		<c:choose>
			<c:when test="${opreateType == 'edit'}">
				<c:url var="url" value="/relationship/updatePerson.action"></c:url>
			</c:when>
			<c:when test="${opreateType == 'add'}">
				<c:url var="url" value="/relationship/addPerson.action"></c:url>
			</c:when>
		</c:choose>
	<div align="center">
		<form action="${url}" method="post" id="fm">
			<br />
			<table border="1" cellpadding="0" cellspacing="0"  width="70%" >
					<thead>
						  <tr bgcolor="#ADD8E6">
						    <td align="center" colspan="2" height="30">
						    <c:choose>
								<c:when test="${opreateType == 'edit'}">
									修改用户信息
								</c:when>
								<c:when test="${opreateType == 'add'}">
									增加用户信息
								</c:when>
								<c:when test="${opreateType == 'view'}">
									查看用户信息
								</c:when>
							</c:choose>
							</td>
						  </tr>
					</thead>
				<tbody>
				<tr>
					<td width="202" height="30" nowrap="nowrap">编号</td>
					<td width="792">
						<c:choose>
							<c:when test="${opreateType == 'edit'}">
								${person.personCode}
								<input type="hidden" name="person.personCode" value="${person.personCode}" size="20"  width="200" />
								<input type="hidden" name="person.personInform.id"id="person.personInform.id"value="${person.personInform.id}" />
							</c:when>
							<c:when test="${opreateType == 'add'}">
								<input type="text" name="person.personCode"  id="personCode" size="20"  width="200" />
							</c:when>
							<c:when test="${opreateType == 'view'}">
								${person.personCode}
							</c:when>
						</c:choose>
						</td>
				</tr>
				<tr>
					<td height="30">姓名</td>
					<td>
						<c:choose>
							<c:when test="${opreateType != 'view'}">
								<input type="text" size="20" width="200"name="person.personName" value="${person.personName }"  />
							</c:when>
							<c:otherwise>
								${person.personName }
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td height="30">年龄</td>
					<td>
						<c:choose>
							<c:when test="${opreateType != 'view'}">
								<input type="text" size="20" width="200"name="person.personInform.age" value="${person.personInform.age}"  
						onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
							</c:when>
							<c:otherwise>
								${person.personInform.age}
							</c:otherwise>
						</c:choose>
						</td>
				</tr>
				<tr>
					<td height="30">邮箱</td>
					<td>
						<c:choose>
							<c:when test="${opreateType != 'view'}">
								<input type="text" size="20" width="200" name="person.personInform.mailBox" value="${person.personInform.mailBox }"  />
							</c:when>
							<c:otherwise>
								${person.personInform.mailBox }
							</c:otherwise>
						</c:choose>
						</td>
				</tr>
				<tr>
					<td align="center" colspan="2" height="30">
						<c:choose>
							<c:when test="${opreateType == 'edit'}">
								<input type="submit" value="提交"/>
								<input type="reset" value="重设" />
							</c:when>
							<c:when test="${opreateType == 'add'}">
								<input type="button" value="提交"  onclick="checkPersonAdd()"/>
								<input type="reset" value="重设" />
							</c:when>
						</c:choose>
						<input type="button" value="返回" onclick="window.history.back(-1)" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
<script type="text/javascript">
function checkPersonAdd(){
	var name = $("#personCode").val(); 
	 $.ajax({
		url : "<%=basePath%>relationship/checkPersonCode",
		type : "POST",
		data : {"name":name},
		dataType : "json",
		success : function(data) {
		 var d = eval("("+data+")");
		if(d.flag=="true"){
		 	$("#fm").submit(); 
		 }
		 else{
		 	alert("该编号已经使用过了，请换其他的编号");
		 	}
		},
		error : function(data){
			alert("内部错误");
		}
	}); 
}
</script>
</body>
</html>