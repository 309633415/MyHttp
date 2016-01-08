<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<sx:head />
</head>

<body>
	<br>
	
		<h3>自动补全</h3>
		<br />
	<form>
		<table>
			<tr>
				<td class="tdLabel"><label class="label">AJAX 自动补全:</label></td>
				<td>
						<s:url id="dataUrl"  value="%{#request.basePath}/ajax/autoCompleter.action" /> 
						<sx:autocompleter name="start" href="%{dataUrl}"  
						loadOnTextChange="true" 
						loadMinimumCount="1" 
						autoComplete="false" 
						showDownArrow="true"   
						indicator="indicator"
						/> 
						<img id="indicator" src="../image/icon.png" alt="Loading" />
					</td>
			</tr>
		</table>
	</form>
</body>
</html>
