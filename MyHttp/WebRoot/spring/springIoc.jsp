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
<p style="text-indent:2em">Spring的一大特点是利用配置的xml文件实现依赖注入。 所谓依赖注入是指把一个业务对象注入另一个业务对象，从而达到对象间的松耦合。（注意是业务对象哦！）<br/>
&nbsp;&nbsp;依赖注入讲的通俗一点，就是让一个对象的创建不用new了，可以自动的生产。这其实是利用java里的反射，反射就是在运行时动态的去创建、调用对象。</p>
<p style="text-indent:2em">下面我们来举个例子（具体代码参见右侧源码，只适合菜鸟看） </p>
<p><strong>示例场景</strong></p>
<p style="text-indent:2em">场景：现在有个磁盘输出的业务，客户端需要通过2个业务对象进行输出。 一个是通过Floppy(软盘)，另一个是通过USB接口。<br/>
&nbsp;&nbsp;如果是一般的写法，如果我们要进行磁盘输出业务，必须先new一个USB对象或者软盘对象，进行的次数多了就会非常的重复。<br/>
&nbsp;&nbsp;我们要实现一个功能，就是磁盘输出的时候，我们只负责磁盘输出的业务逻辑，至于首先new一个新的Bean的业务和new哪一个新Bean，我们交给xml配置文件管理，这样就可以减少代码的耦合。</p>
<p><strong>示例原理图</strong></p>
<img alt="IOC原理图" src="<%=basePath %>/image/ioc.png" style="width:100%">
<p><strong>实现步骤</strong></p>
<p>
&nbsp;&nbsp;1.首先建立一个设备接口 IDeviceWriter 类。<br/>
&nbsp;&nbsp;2.再建立软盘和USB类来实现这个接口，分别是 FloppyWriter 类和 UsbDiskWriter 类。<br/>
&nbsp;&nbsp;3.然后建立磁盘业务的JavaBean类，我们简称它为 BusinessBean 。 该Bean有一个成员用于存放设备－writer。 然后有get,set方法和一个核心的磁盘输出业务的方法。<br/>
&nbsp;&nbsp;4.业务类完成之后，我们便可以在配置文件 businessFactoryConfig.xml 中进行配置依赖关系了。 (注：bean依赖关键字是ref)。关键代码如下：</p>
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
&nbsp;&nbsp;5.编写客户端代码，获得Spring中定义的Bean对象，执行save方法，查看磁盘输出时是使用了哪一种方法。<br/>
&nbsp;&nbsp;在上面的配置文件中，如果注入了floppy bean，那么是储存至软盘… 如果注入usb bean，那么是储存至移动硬盘…<br/>

  </body>
</html>
