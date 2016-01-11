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
	<!-- 注意这里看要加这个标签 -->
	<sx:head />
</head>
<body>
	<br>
	<h3>自动补全</h3>
	<br />
	<p style="text-indent:2em">本例使用基于struts2的ajax方法实现，实现过程非常简单，其中数据是在Action中添加的，可以从右侧代码中查看详细信息。</p>
	<form>
		<table>
			<tr>
				<td class="tdLabel"><label class="label">AJAX 自动补全:</label>
				</td>
				<td >
					<s:url id="dataUrl" value="%{#request.basePath}/ajax/autoCompleter.action" />
					<!-- name属性必须设置，其名字是什么无所谓 -->
					 <sx:autocompleter 
						name="start"
						href="%{dataUrl}" 
						loadOnTextChange="true"
						loadMinimumCount="1"
					 	autoComplete="false" 
					 	showDownArrow="false" 		
					 	indicator = "indicator"			
					 	/>
					<!-- indicator是加载时显示的动态图片 -->
					<img id="indicator" src="../image/indicator.gif" alt="Loading" /></td>
			</tr>
		</table>
	</form> 
</body>
</html>
