<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'springIoc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
 <p style="text-indent:2em">Spring MVC�����һ��MVC��ܣ�ͨ��ʵ��Model-View-Controllerģʽ���ܺõؽ����ݡ�ҵ����չʾ���з��롣<br/>
&nbsp;&nbsp;����һ�����͵Ľ̿���ʽ��mvc���ܣ�������struts�ȶ��Ǳ��ֻ��߲�����ȫ����mvcϵͳ�Ŀ�ܣ����ڳ�ѧ�߻������˽�mvc������˵�Ҿ��� spring����õģ�����ʵ�־��ǽ̿��飡</p>
<p style="text-indent:2em">��ΪSpringMVC������һ����ܣ��ڱ���վSSH�������ʵ������ʾ��С���Ѿ��½�����һ��SpringMVC��web���̣���ϸ�Ĵ�����ҲࡰԴ�롱�������кܶ��ע�ͣ����һ�ߴһ��ѧϰ�ɣ�</p>
  </body>
</html>
