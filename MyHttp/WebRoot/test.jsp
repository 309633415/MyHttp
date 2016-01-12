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
   <h3>知识准备</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 
<p style="text-indent:2em">控制反转（Inversion of Control，英文缩写为IoC）是一个重要的面向对象编程的法则来削减计算机程序的耦合问题，也是轻量级的Spring框架的核心。 控制反转一般分为两种类型，依赖注入（Dependency Injection，简称DI）和依赖查找（Dependency Lookup）。依赖注入应用比较广泛。<br/>
&nbsp;&nbsp;从注入的方法上看，依赖注入主要可以划分为三种类型：属性注入（set注入）、构造函数注入和接口注入。由于接口注入需要额外声明一个接口，增加了类的数目，而且它的效果和属性注入并无本质区别，因此我们不提倡采用这种方式。</p>
<p style="text-indent:2em">三种注入方式的区别：<br/>
&nbsp;&nbsp;1.属性注入方式：对于需要注入的东西比较明确。符合java的设计规则。更适合java开发人员，使用起来更加自然，更加方便。<br/>
&nbsp;&nbsp;2.构造函数注入方式：在类加载的时候，就已经注入依赖的组件。但是若是参数多的话，使用起来不方便。<br/>
&nbsp;&nbsp;3.接口注入：组件需要依赖特定接口的实现，其中的加载接口实现和接口实现的具体对象都是由容器来完成。由于需要额外声明一个接口，增加了类的数目，而且它的效果和属性注入并无本质区别，因此我们不提倡采用这种方式。</p>
	</span> 
		<span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
</div> 
   <h3>资源准备</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar包下载地址：<a href="http://repo.springsource.org/libs-release-local" target="_blank">spring jar包</a><br/>
 2.详细学习参考spring参考手册<a href="http://download.csdn.net/detail/jiashubing/9401325" target="_blank">spring jar包</a><br/>
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>示例</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
&nbsp;&nbsp;我们使用set注入的方法来实现一个例子，示例的过程见左侧的“示例展示”，下面是源码：</br>
&nbsp;&nbsp;首先建立一个设备接口IDeviceWriter类</br>
   <pre  name="code" class="java">
package demoinfo.spring.ioc;

/**
 * 设备接口
 */
public interface IDeviceWriter {     
    public void saveToDevice();     
}    

</pre>
&nbsp;&nbsp;再建立2个设备类</br>
&nbsp;&nbsp;软盘类</br>
  <pre  name="code" class="java">
package demoinfo.spring.ioc;

/**
 * 软盘类
 */
public class FloppyWriter implements IDeviceWriter {     
    public void saveToDevice() {     
        System.out.println("储存至软盘…");     
    }     
} 

</pre>
&nbsp;&nbsp;USB类</br>
  <pre  name="code" class="java">
package demoinfo.spring.ioc;

/**
 * USB类
 */
public class UsbDiskWriter implements IDeviceWriter {  
    public void saveToDevice() {  
        System.out.println("储存至移动硬盘…");  
    }  
} 

</pre>
&nbsp;&nbsp;BusinessBean业务类</br>
  <pre  name="code" class="java">
  package demoinfo.spring.ioc;

/**
 * 磁盘业务的业务JavaBean类
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
&nbsp;&nbsp;配置文件businessFactoryConfig.xml代码如下：</br>
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
   <h3>文档</h3>

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