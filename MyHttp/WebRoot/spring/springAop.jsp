<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SpringAop</title>
    
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
 <p style="text-indent:2em">AOP(Aspect Oriented Programming)�������������̵ļ�����AOP����IoC�������Ƕ�OOP�����油�䡣<br/>
&nbsp;&nbsp;AOP֮�����ܵõ��㷺�Ͽɣ���Ҫ����Ϊ����Ӧ��ϵͳ��ַ���2�����֣�����ҵ���߼��������ͨ���߼���Ҳ������ν�����档���磬���д�����Ӧ�ö�Ҫ�漰���ĳ־û������������Ȩ�޹�����־����͵��Թ���ȡ�ʹ��AOP�����������ÿ�����Աֻרע����ҵ�񣬶�ͨ���߼���ʹ��AOP�������к������룬��ר��ȥ������Щͨ���߼�����ʹ����������ˣ���߿����͵��Ե�Ч�ʡ�</p>
<p style="text-indent:2em">�����������ٸ����ӣ��������μ��Ҳ�Դ�룬ֻ�ʺϲ��񿴣� </p>
<p><strong>ʾ������</strong></p>
<p style="text-indent:2em">�����������ݳ����֣��ݳ�֮ǰ����Ҫ������λ�ϲ��ҹر��ֻ����ݳ������󣬹���������͹��ƣ���������׳������˵��쳣��<br/>
&nbsp;&nbsp;�������������ĳ�����ݳ������Ǻ���ҵ���߼������ݳ�֮ǰ��֮������ǵĶ�������ͨ�õģ����ں����ͨ���߼���</p>
<p><strong>ʾ��ԭ��ͼ</strong></p>
<img alt="AOPԭ��ͼ" src="<%=basePath %>/image/aop.png" style="width:100%">
<p><strong>ʵ�ֲ���</strong></p>
<p>
&nbsp;&nbsp;1.���Ƚ���һ�����ֽӿ� Performer��<br/>
&nbsp;&nbsp;2.�ٽ�����ʿ���ָ����� DukePerformer ��ʵ������ӿڣ����а����˸��ֵĸ�����Ϣ��<br/>
&nbsp;&nbsp;3.Ȼ��������� Audience���������ڵ���Ϊ֪ͨ��<br/>
&nbsp;&nbsp;4.���֮�����Ǳ�����������ļ� applicationContext.xml �н���aop�������á��ؼ��������£�<br/>
<pre style="color:blue">
&lt;aop:config&gt;
	&lt;!-- ��������� --&gt;
	&lt;aop:pointcut id="sing" expression="execution(* *.perform(..))"/&gt;
	&lt;!-- �������� --&gt;
	&lt;aop:aspect ref="audience"&gt;
		&lt;!-- ǰ��֪ͨ --&gt;
		&lt;aop:before method="takeSeat" pointcut-ref="sing" /&gt;
		&lt;aop:before method="turnOffPhone" pointcut-ref="sing" /&gt;
		&lt;!-- ���غ�֪ͨ --&gt;
		&lt;aop:after-returning method="applaud" pointcut-ref="sing" /&gt;
		&lt;!-- �׳���֪ͨ --&gt;
		&lt;aop:after-throwing method="unHappy" pointcut-ref="sing" /&gt;
	&lt;/aop:aspect&gt;
&lt;/aop:config&gt;
</pre>
&nbsp;&nbsp;5.��д��������룬���Spring�ж����Bean����ִ��perform���ݷ������鿴��̨��������еġ�<br/>
&nbsp;&nbsp;��������£�����̨���ӡ���µ���Ϣ��<br/>
<pre style="color:blue">
����������λ�ϡ�
���ڹر��ֻ���
duke ��ʼ�ݳ�������
���ڹ��ƣ��������ò�Ϣ...
</pre>
</p>
  </body>
</html>
