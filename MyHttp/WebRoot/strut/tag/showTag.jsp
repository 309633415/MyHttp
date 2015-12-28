<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<s:head />
<sx:head />
<base href="<%=basePath%>">
<title>My JSP 'showTag.jsp' starting page</title>
</head>
<body>
	<table border="1" cellspacing="0" width="100%">
		<tr>
			<td width="30%">姓名</td>
			<td width="70%"><s:property value ="name" /></td>
		</tr>
		<tr>
			<td>生日</td>
			<td><s:property value ="birthday" /></td>
		</tr>
		<tr>
			<td>是否成年</td>
			<td>
						<s:if test="%{legalAge==true}">成年</s:if>
    					<s:else>未成年</s:else>
			</td>
		</tr>
		<tr>
			<td>传记</td>
			<td><s:property value ="bio" /></td>
		</tr>
		<tr>
			<td>电影</td>
			<td><s:property value ="film" /></td>
		</tr>
		<tr>
			<td>语言</td>
			<td><s:property value ="favouriteLanguage" /></td>
		</tr>
		<tr>
			<td>朋友</td>
			<td>
				<s:iterator value="friends" >  
					    <s:property />    
				</s:iterator> 
			</td>
		</tr>
		<tr>
			<td>居住地</td>
			<td><s:property value ="region" />--><s:property value ="state" /></td>
		</tr>
		<tr>
			<td>爱车</td>
			<td><s:property value ="favouriteVehicalType" />--><s:property value ="favouriteVehicalSpecific" /></td>
		</tr>
		<tr>
			<td>左边角色</td>
			<td><s:iterator value="leftSideCartoonCharacters" >  
					    <s:property />    
				</s:iterator> </td>
		</tr>
		<tr>
			<td>右边角色</td>
			<td><s:iterator value="rightSideCartoonCharacters" >  
					    <s:property />    
				</s:iterator> </td>
		</tr>
		</table>
		<br/>
	<a href="#" onclick="javascript:history.go(-1);return false;">返回</a>
</body>
</html>
