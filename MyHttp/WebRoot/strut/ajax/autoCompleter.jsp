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
	<!-- ע�����￴Ҫ�������ǩ -->
	<sx:head />
</head>
<body>
	<br>
	<h3>�Զ���ȫ</h3>
	<br />
	<p style="text-indent:2em">����ʹ�û���struts2��ajax����ʵ�֣�ʵ�ֹ��̷ǳ��򵥣�������������Action����ӵģ����Դ��Ҳ�����в鿴��ϸ��Ϣ��</p>
	<form>
		<table>
			<tr>
				<td class="tdLabel"><label class="label">AJAX �Զ���ȫ:</label>
				</td>
				<td >
					<s:url id="dataUrl" value="%{#request.basePath}/ajax/autoCompleter.action" />
					<!-- name���Ա������ã���������ʲô����ν -->
					 <sx:autocompleter 
						name="start"
						href="%{dataUrl}" 
						loadOnTextChange="true"
						loadMinimumCount="1"
					 	autoComplete="false" 
					 	showDownArrow="false" 		
					 	indicator = "indicator"			
					 	/>
					<!-- indicator�Ǽ���ʱ��ʾ�Ķ�̬ͼƬ -->
					<img id="indicator" src="../image/indicator.gif" alt="Loading" /></td>
			</tr>
		</table>
	</form> 
</body>
</html>
