<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SpringJdbc</title>
    
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
<p style="text-indent:2em">Spring��һ���ص����������õ�xml�ļ�ʵ������ע�롣 ��ν����ע����ָ��һ��ҵ�����ע����һ��ҵ����󣬴Ӷ��ﵽ����������ϡ���ע����ҵ�����Ŷ����<br/>
&nbsp;&nbsp;����ע�뽲��ͨ��һ�㣬������һ������Ĵ�������new�ˣ������Զ�������������ʵ������java��ķ��䣬�������������ʱ��̬��ȥ���������ö���</p>
<p style="text-indent:2em">�����������ٸ����ӣ��������μ��Ҳ�Դ�룬ֻ�ʺϲ��񿴣� </p>
<p><strong>ʾ������</strong></p>
<p style="text-indent:2em">�����������и����������ҵ�񣬿ͻ�����Ҫͨ��2��ҵ������������� һ����ͨ��Floppy(����)����һ����ͨ��USB�ӿڡ�<br/>
&nbsp;&nbsp;�����һ���д�����������Ҫ���д������ҵ�񣬱�����newһ��USB����������̶��󣬽��еĴ������˾ͻ�ǳ����ظ���<br/>
&nbsp;&nbsp;����Ҫʵ��һ�����ܣ����Ǵ��������ʱ������ֻ������������ҵ���߼�����������newһ���µ�Bean��ҵ���new��һ����Bean�����ǽ���xml�����ļ����������Ϳ��Լ��ٴ������ϡ�</p>
<p><strong>ʾ��ԭ��ͼ</strong></p>
<img alt="IOCԭ��ͼ" src="<%=basePath %>/image/ioc.png" style="width:100%">
<p><strong>ʵ�ֲ���</strong></p>
<p>
&nbsp;&nbsp;1.���Ƚ���һ���豸�ӿ� IDeviceWriter �ࡣ<br/>
&nbsp;&nbsp;2.�ٽ������̺�USB����ʵ������ӿڣ��ֱ��� FloppyWriter ��� UsbDiskWriter �ࡣ<br/>
&nbsp;&nbsp;3.Ȼ��������ҵ���JavaBean�࣬���Ǽ����Ϊ BusinessBean �� ��Bean��һ����Ա���ڴ���豸��writer�� Ȼ����get,set������һ�����ĵĴ������ҵ��ķ�����<br/>
&nbsp;&nbsp;4.ҵ�������֮�����Ǳ�����������ļ� businessFactoryConfig.xml �н�������������ϵ�ˡ� (ע��bean�����ؼ�����ref)���ؼ��������£�</p>
<pre style="color:blue">
&lt;bean id="floppy" class="spring.basic.BusinessFactory.FloppyWriter"/&gt;    
    &lt;bean id="usb" class="spring.basic.BusinessFactory.UsbDiskWriter"/&gt;          
    &lt;bean id="businessBean"      
          class="spring.basic.BusinessFactory.BusinessBean"&gt;      
        &lt;property name="deviceWriter"&gt;    
            &lt;ref bean="floppy"/&gt;    
        &lt;/property&gt;      
&lt;/bean&gt;     
</pre>
&nbsp;&nbsp;5.��д�ͻ��˴��룬���Spring�ж����Bean����ִ��save�������鿴�������ʱ��ʹ������һ�ַ�����<br/>
&nbsp;&nbsp;������������ļ��У����ע����floppy bean����ô�Ǵ��������̡� ���ע��usb bean����ô�Ǵ������ƶ�Ӳ�̡�<br/>

  </body>
</html>
