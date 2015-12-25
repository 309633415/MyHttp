<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'maintainAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
       <form name="fm" id="fm" action="./action/demoInfoAdd.action" method="post">
        <table>
	        <tr>
	        <td>标题</td>
	        <td><input type="text" name="demoInfo.title" size="100" /></td>
	        </tr>
			<tr>
				 <td>知识准备</td>
				 <td><textarea  id="demoInfo.KnowLedageReady" name="demoInfo.KnowLedageReady"  rows="40" cols="150">${demoInfo.KnowLedageReady}</textarea></td>
			</tr>
			<tr>
				<td >资源准备</td>
				<td><textarea   id="demoInfo.ResourceReady" name="demoInfo.ResourceReady"  rows="40" cols="150">${demoInfo.ResourceReady}</textarea></td>
			</tr>
			<tr>
				<td>示例</td>
				<td><textarea   name="demoInfo.Example"  rows="40" cols="150">${demoInfo.Example}</textarea></td>
			</tr>
			<tr>
				<td >备注</td>
				<td><textarea   name="demoInfo.Remark"  rows="40" cols="150">${demoInfo.Remark}</textarea></td>
			</tr>
			<tr>
			<td><input type="submit" value="提交" /></td>
			</tr>
		</table>
       </form>
  </body>
</html>
