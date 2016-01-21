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

<p style="text-indent:2em"><strong>什么是WebService?</strong><br/>
&nbsp;&nbsp;Web Service也叫XML Web Service WebService是一种可以接收从Internet或者Intranet上的其它系统中传递过来的请求，轻量级的独立的通讯技术。是:通过SOAP在Web上提供的软件服务，使用WSDL文件进行说明，并通过UDDI进行注册。
</p>
<p style="text-indent:2em"><strong>WebService能做什么?</strong><br/>
&nbsp;&nbsp;我们可以调用互联网上查询天气信息Web服务，然后将它嵌入到我们的程序(C/S或B/S程序)当中来，当用户从我们的网点看到天气信息时，他会认为我们为他提供了很多的信息服务，但其实我们什么也没有做，只是简单了调用了一下别人服务器上的一段代码而已。
</p>
<p style="text-indent:2em"><strong>为什么要学习WebService?</strong><br/>
&nbsp;&nbsp;学习WebSerice可以将你的服务(一段代码)发布到互联网上让别人去调用,也可以调用别人机器上发布的WebService,就像使用自己的代码一样.。
</p>
<p style="text-indent:2em"><strong>Web Service基本概念</strong><br/>
&nbsp;&nbsp;XML：(Extensible Markup Language)扩展型可标记语言。面向短期的临时数据处理、面向万维网络，是Soap的基础。<br/>
&nbsp;&nbsp;Soap：(Simple Object Access Protocol)简单对象存取协议。是XML Web Service 的通信协议。当用户通过UDDI找到你的WSDL描述文档后，他通过可以SOAP调用你建立的Web服务中的一个或多个操作。SOAP是XML文档形式的调用方法的规范，它可以支持不同的底层接口，像HTTP(S)或者SMTP。<br/>
&nbsp;&nbsp;WSDL：(Web Services Description Language) WSDL 文件是一个 XML 文档，用于说明一组 SOAP 消息以及如何交换这些消息。大多数情况下由软件自动生成和使用。<br/>
&nbsp;&nbsp;UDDI (Universal Description, Discovery, and Integration) 是一个主要针对Web服务供应商和使用者的新项目。在用户能够调用Web服务之前，必须确定这个服务内包含哪些商务方法，找到被调用的接口定义，还要在服务端来编制软件，UDDI是一种根据描述文档来引导系统查找相应服务的机制。UDDI利用SOAP消息机制（标准的XML/HTTP）来发布，编辑，浏览以及查找注册信息。它采用XML格式来封装各种不同类型的数据，并且发送到注册中心或者由注册中心来返回需要的数据。
</p>

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
 1:jar包下载地址：<a href="http://download.csdn.net/detail/jiashubing/9411845" target="_blank">XFire+WebService的jar包合集</a>（jar包介绍这里就不啰嗦了）
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
 <p style="text-indent:2em">
1:建立webservice首先需要建立一个服务接口，我们的例子是HelloWebService。</p>
<pre name="code" class="java">
package demoinfo.webservice.xfire;

import javax.jws.WebService;  
@WebService 
public interface HelloWebService {
	public String sayHello(String name);
	public String sayLove(String name);
}
</pre>
<p style="text-indent:2em">
2:建立这个接口的实现类。</p>
<pre name="code" class="java">
package demoinfo.webservice.xfire;

public class HelloWebServiceImpl implements HelloWebService {
	public String sayHello(String name) {
		return "&lt;font color='red'&gt;"+name+"&lt;/font&gt; Hello , welcome to Webservice !";
	}
	public String sayLove(String name) {
		return "&lt;font color='red'&gt;"+name+"&lt;/font&gt; I Love You !";
	}
}
</pre>
<p style="text-indent:2em">
3:建立服务端，将服务发布出去。<br/>
&nbsp;&nbsp;这里有两种方法，一种是运行java类，手动将其发布；另一种是通过XML配置文件，在项目启动的时候自动发布。<br/>
&nbsp;&nbsp;第一种方法，需要新建一个服务类WebServiceServer。
</p>
<pre name="code" class="java">
package demoinfo.webservice.xfire;

import javax.xml.ws.Endpoint;
import demoinfo.webservice.xfire.HelloWebServiceImpl;  
  
public class WebServiceServer {  
    public static void main(String[] args) {  
    	Endpoint.publish("http://localhost:8080/hellowebservice", new HelloWebServiceImpl());  
    	System.out.println("server is ready...");  
        try {  
            Thread.sleep(1000*300);  
        } catch (InterruptedException e) {  
            e.printStackTrace();  
        }  
        System.out.println("server exit...");  
        System.exit(0);  
    }  
}  

</pre>
<p style="text-indent:2em">
这时候我们就可以通过浏览器访问http://localhost:8080/hellowebservice来访问我们这个类，看到它的类的描述文件了。<br/>
&nbsp;&nbsp;我们还可以使用另外一种方法，通过XML配置文件来发布服务，这也是比较常用的方法。<br/>
&nbsp;&nbsp;首先在web.xml中增加Xfire Servlet的配置。
</p>
<pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;web-app xmlns="http://java.sun.com/xml/ns/j2ee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	version="2.4"
	xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"&gt;

	&lt;!-- struts2的配置 Start --&gt;
	&lt;filter&gt;
		&lt;filter-name&gt;struts2&lt;/filter-name&gt;
		&lt;filter-class&gt;org.apache.struts2.dispatcher.FilterDispatcher&lt;/filter-class&gt;
	&lt;/filter&gt;
	&lt;filter-mapping&gt;
		&lt;filter-name&gt;struts2&lt;/filter-name&gt;
		&lt;url-pattern&gt;/*&lt;/url-pattern&gt;
	&lt;/filter-mapping&gt;
	&lt;!-- struts2的配置 end --&gt;

	&lt;!-- Spring配置和监听start --&gt;
	&lt;context-param&gt;
		&lt;!-- 配置多个文件时需要的参数 --&gt;
		&lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
		&lt;!-- 需要加载的配置文件，可以有多个，用逗号或者空格或者分号隔开 --&gt;
		&lt;param-value&gt;/WEB-INF/classes/spring/application*.xml
		&lt;/param-value&gt;
	&lt;/context-param&gt;
	&lt;listener&gt;
		&lt;listener-class&gt;org.springframework.web.context.ContextLoaderListener&lt;/listener-class&gt;
	&lt;/listener&gt;
	&lt;!--end --&gt;

	&lt;!-- Xfire Servlet start --&gt;
	&lt;servlet&gt;
		&lt;servlet-name&gt;XFireServlet&lt;/servlet-name&gt;
		&lt;display-name&gt;XFire Servlet&lt;/display-name&gt;
		&lt;!-- 不整合时使用org.codehaus.xfire.transport.http.XFireConfigurableServlet --&gt;
		&lt;servlet-class&gt;org.codehaus.xfire.spring.XFireSpringServlet&lt;/servlet-class&gt;
		&lt;load-on-startup&gt;0&lt;/load-on-startup&gt;
	&lt;/servlet&gt;
	&lt;servlet-mapping&gt;
		&lt;servlet-name&gt;XFireServlet&lt;/servlet-name&gt;
		&lt;url-pattern&gt;/services/*&lt;/url-pattern&gt;
	&lt;/servlet-mapping&gt;
	&lt;!-- Xfire Servlet end --&gt;

	&lt;welcome-file-list&gt;
		&lt;welcome-file&gt;frame.jsp&lt;/welcome-file&gt;
	&lt;/welcome-file-list&gt;
&lt;/web-app&gt;

</pre>
<p style="text-indent:2em">
注意为了不让struts对他进行拦截，需要在struts.xml里为它放行,struts.xml里面添加如下代码：
</p>
<pre name="code" class="xml">

&lt;package name="XFireServlet" extends="struts-default" &gt;
	    &lt;action name="*"&gt;
	        &lt;result&gt;{1}&lt;/result&gt;
	    &lt;/action&gt;
	&lt;/package&gt;
&lt;/pre&gt;
&lt;!--webService的xml文件，下一步调用服务需要用到--&gt;
&lt;include file="/struts/webservice.xml"&gt;&lt;/include&gt;

<p style="text-indent:2em">
同时也要在spring包下增加xfir的配置文件applicationContext-xfire.xml。</p>
<pre name="code" class="xml">
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

	&lt;!-- 引入xfire.xml--&gt;
     &lt;import resource="classpath:org/codehaus/xfire/spring/xfire.xml"/&gt;
     &lt;!-- Service实现类--&gt;
     &lt;bean id="hello" class="demoinfo.webservice.xfire.HelloWebServiceImpl"/&gt;
     &lt;!-- 这里的name属性并不是调用时的Service名字；调用时要用类名，不知道为什么，所以这个bean的名字随便定义--&gt;
     &lt;bean name="webService" class="org.codehaus.xfire.spring.ServiceBean"&gt;
		&lt;property name="serviceBean" ref="hello"/&gt;                          &lt;!-- Service实现类--&gt;
        &lt;property name="serviceClass" value="demoinfo.webservice.xfire.HelloWebService"/&gt;       &lt;!-- Service接口--&gt;
        &lt;property name="inHandlers"&gt;
			&lt;list&gt;
				&lt;ref bean="addressingHandler"/&gt;
			&lt;/list&gt;
		&lt;/property&gt;
     &lt;/bean&gt;

     &lt;bean id="addressingHandler" class="org.codehaus.xfire.addressing.AddressingInHandler"/&gt;
	
&lt;/beans&gt;
</pre>
<p style="text-indent:2em">
这样的话项目启动以后，服务会自动发布，可以通过浏览器访问http://localhost:8080/MyHttp/services/HelloWebService来访问这个服务。</p>

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