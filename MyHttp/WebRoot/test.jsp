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
 1:jar包下载地址：<a href="http://download.csdn.net/detail/jiashubing/9411845" target="_blank">;XFire+WebService的jar包合集</a>（jar包介绍这里就不啰嗦了）
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
1:在发布服务项目的基础上调用服务，首先建立WebServiceAction类：</p>
<pre name="code" class="java">
package demoinfo.webservice.xfire;

import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.codehaus.xfire.client.Client;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class WebServiceAction extends ActionSupport{
	private String name;
	private String message;
	private Object[] results;
	
	public Object[] getResults() {
		return results;
	}

	public void setResults(Object[] results) {
		this.results = results;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String webService(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Client client;
		try {
			client = new Client(new URL("http://localhost:8080/MyHttp/services/HelloWebService?WSDL"));
			results=client.invoke(name, new Object[]{message});
			System.out.print(results); 
			if(results!=null&&results.length!=0){
				request.setAttribute("results",results);
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
			return ERROR;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		} 
 		return SUCCESS;
	}
}

</pre>
<p style="text-indent:2em">
2:再建立struts配置文件。在struts.xml中包含webservice.xml，webservice.xml的代码如下：</p>
<pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
  &lt;package name="webservice" extends="struts-default" namespace="/webservice"&gt;
      &lt;action name="take" class="demoinfo.webservice.xfire.WebServiceAction" method="webService"&gt;
            &lt;result&gt;/webservice/webServiceTake.jsp&lt;/result&gt;
      &lt;/action&gt;
  &lt;/package&gt;
&lt;/struts&gt;
</pre>
<p style="text-indent:2em">
3:最后是jsp的展示页面webServiceTake.jsp，代码如下：<br/>
</p>
<pre name="code" class="php">
&lt;%@ include file="/common/taglibs.jsp" %&gt;
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;webService实例&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h2&gt;通过发布的HelloWebService服务接口调用网站服务&lt;/h2&gt;&lt;br/&gt;
&lt;div style="color:blue;"&gt;
调用方法名 : sayHello或者sayLove&lt;br/&gt;
发送文本内容 : 任意输入 
&lt;/div&gt;&lt;br/&gt;&lt;br/&gt;
    &lt;form action="&lt;%=basePath %&gt;/webservice/take.action" method="post"&gt;
       &lt;s:textfield name="name" label="调用方法名" /&gt;&lt;br/&gt;
       &lt;s:textfield name="message"  label="发送文本内容"/&gt;&lt;br/&gt;
       &lt;s:submit value="提交"/&gt;&lt;br/&gt;
    &lt;/form&gt;
&lt;div&gt;
	返回数据为：
    &lt;c:forEach items="&#36;{requestScope.results}" var="it"&gt;
    	&#36;{it}
    &lt;/c:forEach&gt;
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
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