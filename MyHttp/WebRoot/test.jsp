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

<p style="text-indent:2em"><strong>什么是HttpClient？</strong><br/>
&nbsp;&nbsp;HttpClient是Apache Jakarta Common下的子项目，用来提供高效的、最新的、功能丰富的支持HTTP协议的客户端编程工具包，并且它支持HTTP协议最新的版本和建议。<br/>
&nbsp;&nbsp;HttpClient相比传统JDK自带的URLConnection，增加了易用性和灵活性，它不仅是客户端发送Http请求变得容易，而且也方便了开发人员测试接口（基于Http协议的），即提高了开发的效率，也方便提高代码的健壮性。
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
 1:jar包下载地址：
 <a href="http://download.csdn.net/detail/jiashubing/9414107" target="_blank">HttpClient所需jar包</a>
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
在发布服务项目的基础上调用服务，这里有两种方法，一种是直接在java测试类中调用，一种是从页面传值后，在action中调用，其实质是一样的。<br/>
&nbsp;&nbsp;第一种方法，建立测试类ClientTest，代码如下：</p>
<pre name="code" class="java">
package demoinfo.webservice.xfire;

import java.net.URL;
import org.codehaus.xfire.client.Client;

public class ClientTest {
	public static void main(String[] args)throws Exception {
		Client client= new Client(new URL("http://localhost:8080/MyHttp/services/HelloWebService?WSDL")); 
	    Object[] results=client.invoke("sayHello", new Object[]{"  HelloWorld，WebService！"});
	    System.out.println(results[0]);
    }
}

</pre>
<p style="text-indent:2em">第二种方法：<br/>
&nbsp;&nbsp;1:首先建立WebServiceAction类：</p>
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