<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SpringQuartz</title>
    
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

<p style="text-indent:2em">��JavaEEϵͳ�У����ǻᾭ���õ���ʱ���񣬱���ÿ���賿����ǰ�챨��ÿһСʱ���ɻ������ݵȵȡ�<br/>
&nbsp;&nbsp;���ǿ���ʹ��java.util.Timer���java.util.TimerTask��������������ʱ���ȿ��Ʒǳ������㣬����������Ҫ�����Ĵ��롣<br/>
&nbsp;&nbsp;ʹ��Quartz��������Ƿǳ��õ�ѡ�񣬲�����Spring���Էǳ�����ļ��ɡ�</p>

<p style="text-indent:2em">Spring�ṩ��֧��ʱ����ȵ������ࡣ��������������ȷ�����Ҫ������<br/>
&nbsp;&nbsp;1������Ŀ�����jar�������quartz.jar���������ӵ��㹤�̵�classpath��ȥ�� <br/>
&nbsp;&nbsp;2��дClass�ļ������ļ��ж�����Ҫִ�в����ĺ�����Ϳ���ͨ���������ﵽ��ʱ�����ˡ�<br/>
&nbsp;&nbsp;3���ṩapplicationContext.xml Spring�����ļ�������������Ķ�ʱ���Ͳ����Լ����ö�ʱ���ĸ������ԣ���������Ƶ�ʺͳ�ʼ����ʱ��������</p>

<p style="text-indent:2em">С������һ��ÿ5���ӡһ�ε�ǰʱ������ӣ�������ο�Դ�룬����ע�������ļ���д����</p>

  </body>
</html>
