<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>webServiceConf.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <h2>ʹ��XFire��������ӿ� </h2>
      <p style="text-indent:2em;">ע���ɹ��Ժ�Ϳ���ͨ����ַ�����ʲ鿴</p>
    <a href="<%=basePath%>services" target="_blank">�����ɹ��������</a><br/><br/>
    <button onclick="window.open('<%=basePath%>services/HelloWebService?WSDL')">�鿴WebService����</button>
    <p style="text-indent:2em;">�����ɹ�����ԴӴ����п�����HelloWebService �ӿ����� sayHello �� sayLove ����������</p>
    <br/><br/>
    <p style="text-indent:2em;">WebService�����ǻ���Web�ķ�����ʹ��Web(HTTP)��ʽ�����պ���Ӧ�ⲿϵͳ��ĳ�����󡣴Ӷ�Զ�̵��á���ô��βſ��Է���һ��WebService�أ�
		���Խ�������Jdk1.6.0_21�Ժ�İ汾����һ��WebService���񡣲�ͨ����ַ���鿴����wsdl�ĵ�������ķ����ο�Դ�롣</p>
	<p style="text-indent:2em;">С���д����SSH+XFireʵ��WebService��д������Ҫע��struts��������xfire�����󣬵�Ȼ�����ϵĻ����Ӽ򵥡�</p>
  </body>
</html>
