<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SpringTransation.jsp' starting page</title>
    
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
    <p style="text-indent:2em">���񣬾��Ǳ�֤һϵ��ҵ���߼�ȫ��ִ�л���ȫ����ִ�С�</p>
    <p style="text-indent:2em">�ڿ����У���hibernate��Spring���ɣ��ϳ�ʹ��Spring��ܵ�����ʽ����<br/>
       &nbsp;&nbsp;ʹ��Spring������ʽ���񣬲�����Ҫ�Զ�����sessionFactory��Session��������Ҫ�ֶ���������Ŀ����͹رա�</p>
       <p style="text-indent:2em">ʹ��Spring����ʽ��������������裺<br/>
	       &nbsp;&nbsp;&nbsp;&nbsp;1.applicationContext.xml�н������á�<br/>
	       &nbsp;&nbsp;&nbsp;&nbsp;2.�ύ������̳�HibernateDaoSupport��  </p>
	       <p style="text-indent:2em">����Դ���뿴�Ҳ�</p>
  </body>
</html>
