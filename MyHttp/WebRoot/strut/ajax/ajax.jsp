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
	<h3>�첽У�飨����struts2ʵ��ajax��</h3>
	<br>
	<div style="color:red">
		<h3>�������û�Ϊtomʱ��ʾ���û��Ѿ�ע������û��������ʧȥ����󴥷��첽�ύ�¼�</h3>
	</div>
	<div id="checkinfo"></div>
	<s:url id="url" action="/ajax/checkAjax.action"></s:url>
	<form id="first" action="<%=basePath %>/ajax/checkAjax">
		<table>
			<tr>
				<td>
					<s:textfield name="username" label="�û���"></s:textfield><br />
					<s:password name="pwd" label="��     ��"></s:password><br /> 
					<s:submit value="�ύ"></s:submit><br /></td>
			</tr>
			<tr>
				<td><sx:bind formId="first" sources="username" events="onblur"
						targets="checkinfo"></sx:bind></td>
			</tr>
		</table>
	</form>
</body>
</html>
