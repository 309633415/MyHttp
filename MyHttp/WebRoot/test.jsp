<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	response.setHeader("Pragma","no-cache");     
	response.setHeader("Cache-Control","no-cache");    
	response.setDateHeader("Expires",0);
	request.setCharacterEncoding("GBK");
%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/circle.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/SyntaxHighlighter.css">
	
<style type="text/css">
body{
background-color:lightcyan;
}
h3{
color:white;
background: cadetblue;
}
</style>
  </head>
  <body>
   <h3>֪ʶ׼��</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 
<p style="text-indent:2em">ʲô��AOP?<br/>
&nbsp;&nbsp;AOP: (Aspect Oriented Programming) ���������̡���Ŀǰ��������е�һ���ȵ㣬Ҳ��Spring������ݡ�����AOP���Զ�ҵ���߼��ĸ������ֽ��и��룬�Ӷ�ʹ��ҵ���߼�������֮�����϶Ƚ��ͣ���߳���Ŀ������ԣ�ͬʱ����˿�����Ч�ʡ���Ҫ�Ĺ����ǣ���־��¼������ͳ�ƣ���ȫ���ƣ��������쳣����ȵȡ�</p>
<p style="text-indent:2em">ʲô��OOP��AOP������ʲô����<br/>
&nbsp;&nbsp;AOP��OOP����������Ȼ�ǳ����ƣ���ȴ������ͬ������������˼�롣OOP����������̣����ҵ������̵�ʵ�弰�����Ժ���Ϊ���г����װ���Ի�ø���������Ч���߼���Ԫ���֡� ��AOP�������ҵ��������е����������ȡ��������Ե��Ǵ�������е�ĳ�������׶Σ��Ի���߼������и�����֮�������Եĸ���Ч�������������˼����Ŀ�������ű��ʵĲ��졣<br/>
&nbsp;&nbsp;ͨ��������OOP������������AOP���򶯴�����</p>
<p style="text-indent:2em">������AOP?<br/>
&nbsp;&nbsp;�ٸ������ӣ�����������ÿ��д��֮ǰ�����һ�±�����û��īˮ�ˣ�ͨ���������ǣ���д�����Action������ж��Ƿ���īˮ�ķ������������Ĳ���һ�������ǣ�д�ֵ�Action���Ƿ���īˮ�ķ����������������������ʮ��֧��ͬ�ı�д�֣�ÿһ���ʵ�Action�ﶼҪ�����ж��Ƿ���īˮ�ķ�������һ�������ǣ����������ĳ��������˵��д�ֺ��ж��Ƿ���īˮ�ķ�����ͬһ�ȼ��ģ��������д������������ж��Ƿ���īˮ�������Ի�����Υ�������ĳ�����Ƶ�˼�롣<br/>
&nbsp;&nbsp;�����Spring��AOP���ǰ�д�ֵ�Action��Ϊһ�����棬��ÿ�ε��ò�ͬ�ı���д�ֵķ���֮ǰ�������ж��Ƿ���īˮ�ķ�����������&lt;aop:config/&gt;��ǩ��Spring�����ļ��ﶨ��ġ�</p>
	</span> 
		<span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
</div> 
   <h3>��Դ׼��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar�����ص�ַ��<a href="http://repo.springsource.org/libs-release-local" target="_blank">spring jar��</a><br/>
 2.��ϸѧϰ�ο�spring�ο��ֲ�<a href="http://download.csdn.net/detail/jiashubing/9401325" target="_blank">spring�ο��ֲ�</a>
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>ʾ��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
&nbsp;&nbsp;����ʹ��setע��ķ�����ʵ��һ�����ӣ�ʾ���Ĺ��̼����ġ�ʾ��չʾ����������Դ�룺</br>
&nbsp;&nbsp;���Ƚ���һ���豸�ӿ�IDeviceWriter��</br>
   <pre  name="code" class="java">
package demoinfo.spring.ioc;

/**
 * �豸�ӿ�
 */
public interface IDeviceWriter {     
    public void saveToDevice();     
}    

</pre>
&nbsp;&nbsp;�ٽ���2���豸��</br>
&nbsp;&nbsp;������</br>
  <pre  name="code" class="java">
package demoinfo.spring.ioc;

/**
 * ������
 */
public class FloppyWriter implements IDeviceWriter {     
    public void saveToDevice() {     
        System.out.println("���������̡�");     
    }     
} 

</pre>
&nbsp;&nbsp;USB��</br>
  <pre  name="code" class="java">
package demoinfo.spring.ioc;

/**
 * USB��
 */
public class UsbDiskWriter implements IDeviceWriter {  
    public void saveToDevice() {  
        System.out.println("�������ƶ�Ӳ�̡�");  
    }  
} 

</pre>
&nbsp;&nbsp;BusinessBeanҵ����</br>
  <pre  name="code" class="java">
  package demoinfo.spring.ioc;

/**
 * ����ҵ���ҵ��JavaBean��
 */
public class BusinessBean {  
    private IDeviceWriter writer;  
  
    public void setDeviceWriter(IDeviceWriter writer) {  
        this.writer = writer;  
    }  
  
    public IDeviceWriter getDeviceWriter() {  
        return writer;  
    }  
  
    public void save() {  
        if (writer == null) {  
            throw new RuntimeException("DeviceWriter needed...");  
        }  
        writer.saveToDevice();  
    }  
} 
</pre>
&nbsp;&nbsp;�����ļ�businessFactoryConfig.xml�������£�</br>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tx="http://www.springframework.org/schema/tx"
	xmlns:aop="http://www.springframework.org/schema/aop" xmlns:p="http://www.springframework.org/schema/p"
	xmlns:context="http://www.springframework.org/schema/context"
	xsi:schemaLocation="http://www.springframework.org/schema/beans 
	http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
	http://www.springframework.org/schema/context   
     http://www.springframework.org/schema/context/spring-context-3.0.xsd   
     http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx-2.5.xsd 
     http://www.springframework.org/schema/aop http://www.springframework.org/schema/aop/spring-aop-2.5.xsd"
     default-autowire="byName"&gt;

	&lt;bean id="floppy" class="demoinfo.spring.ioc.FloppyWriter"/&gt;    
    &lt;bean id="usb" class="demoinfo.spring.ioc.UsbDiskWriter"/&gt;    
            
    &lt;bean id="businessBean"      
          class="demoinfo.spring.ioc.BusinessBean"&gt;      
        &lt;property name="deviceWriter"&gt;    
            &lt;ref bean="usb"/&gt;    
        &lt;/property&gt;      
    &lt;/bean&gt;      

&lt;/beans&gt;

</pre>
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>�ĵ�</h3>

<script language="javascript" src="<%=basePath%>/js/shCore.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCSharp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPhp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJScript.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJava.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushVb.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushSql.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushXml.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushDelphi.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPython.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushRuby.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCss.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCpp.js"></script> 
<script language="javascript"> 
dp.SyntaxHighlighter.HighlightAll('code'); 
</script> 
  </body>
</html>