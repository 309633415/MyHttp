<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>hibernate关系映射实例</title>
</head>
<body>
<div style="color:blue;">
<br/>

</div>
    
		<c:choose>
			<c:when test="${opreateType == 'edit'}">
				<c:set var="url" value="http://localhost:8080/MyHttp/relationship/updatePerson.action"></c:set>
			</c:when>
			<c:when test="${opreateType == 'add'}">
				<c:set var="url" value="http://localhost:8080/MyHttp/relationship/addPerson.action"></c:set>
			</c:when>
		</c:choose>
	<div align="center">
		<form action="${url}" method="post">
			<br />
			<table border="1" cellpadding="0" cellspacing="0"  width="70%" >
					<thead>
						  <tr bgcolor="#ADD8E6">
						    <td align="center" colspan="2" height="30"><c:choose>
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
							</c:when>
							<c:when test="${opreateType == 'add'}">
								<input type="text" name="person.personCode" value="${person.personCode}" size="20"  width="200" />
							</c:when>
							<c:when test="${opreateType == 'view'}">
								${person.personCode}
							</c:when>
						</c:choose>
					<input type="hidden" name="person.personInform.id"
						id="person.personInform.id"
						value="${person.personInform.id}" />
						</td>
				</tr>
				<tr>
					<td height="30">姓名</td>
					<td>
						<c:choose>
							<c:when test="${opreateType != 'view'}">
								<input type="text" size="20" width="200"name="person.personName" value="${person.personName }" />
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
								<input type="text" size="20" width="200" name="person.personInform.mailBox" value="${person.personInform.mailBox }" />
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
							<c:when test="${opreateType != 'view'}">
								<input type="submit" value="提交"  />
								<input type="reset" value="重设" />
							</c:when>
							<%-- <c:when test="${opreateType == 'add'}">
								<input type="submit" value="提交"  />
								<input type="reset" value="重设" />
							</c:when> --%>
						</c:choose>
						<input type="button" value="返回" onclick="window.history.back(-1)" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
</body>
</html>