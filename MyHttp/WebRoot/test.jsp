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

<p style="text-indent:2em"><strong>ʲô��WebService?</strong><br/>
&nbsp;&nbsp;Web ServiceҲ��XML Web Service WebService��һ�ֿ��Խ��մ�Internet����Intranet�ϵ�����ϵͳ�д��ݹ����������������Ķ�����ͨѶ��������:ͨ��SOAP��Web���ṩ���������ʹ��WSDL�ļ�����˵������ͨ��UDDI����ע�ᡣ
</p>
<p style="text-indent:2em"><strong>WebService����ʲô?</strong><br/>
&nbsp;&nbsp;���ǿ��Ե��û������ϲ�ѯ������ϢWeb����Ȼ����Ƕ�뵽���ǵĳ���(C/S��B/S����)�����������û������ǵ����㿴��������Ϣʱ��������Ϊ����Ϊ���ṩ�˺ܶ����Ϣ���񣬵���ʵ����ʲôҲû������ֻ�Ǽ��˵�����һ�±��˷������ϵ�һ�δ�����ѡ�
</p>
<p style="text-indent:2em"><strong>ΪʲôҪѧϰWebService?</strong><br/>
&nbsp;&nbsp;ѧϰWebSerice���Խ���ķ���(һ�δ���)���������������ñ���ȥ����,Ҳ���Ե��ñ��˻����Ϸ�����WebService,����ʹ���Լ��Ĵ���һ��.��
</p>
<p style="text-indent:2em"><strong>Web Service��������</strong><br/>
&nbsp;&nbsp;XML��(Extensible Markup Language)��չ�Ϳɱ�����ԡ�������ڵ���ʱ���ݴ���������ά���磬��Soap�Ļ�����<br/>
&nbsp;&nbsp;Soap��(Simple Object Access Protocol)�򵥶����ȡЭ�顣��XML Web Service ��ͨ��Э�顣���û�ͨ��UDDI�ҵ����WSDL�����ĵ�����ͨ������SOAP�����㽨����Web�����е�һ������������SOAP��XML�ĵ���ʽ�ĵ��÷����Ĺ淶��������֧�ֲ�ͬ�ĵײ�ӿڣ���HTTP(S)����SMTP��<br/>
&nbsp;&nbsp;WSDL��(Web Services Description Language) WSDL �ļ���һ�� XML �ĵ�������˵��һ�� SOAP ��Ϣ�Լ���ν�����Щ��Ϣ������������������Զ����ɺ�ʹ�á�<br/>
&nbsp;&nbsp;UDDI (Universal Description, Discovery, and Integration) ��һ����Ҫ���Web����Ӧ�̺�ʹ���ߵ�����Ŀ�����û��ܹ�����Web����֮ǰ������ȷ����������ڰ�����Щ���񷽷����ҵ������õĽӿڶ��壬��Ҫ�ڷ���������������UDDI��һ�ָ��������ĵ�������ϵͳ������Ӧ����Ļ��ơ�UDDI����SOAP��Ϣ���ƣ���׼��XML/HTTP�����������༭������Լ�����ע����Ϣ��������XML��ʽ����װ���ֲ�ͬ���͵����ݣ����ҷ��͵�ע�����Ļ�����ע��������������Ҫ�����ݡ�
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
   <h3>��Դ׼��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar�����ص�ַ��<a href="http://download.csdn.net/detail/jiashubing/9411845" target="_blank">XFire+WebService��jar���ϼ�</a>��jar����������Ͳ������ˣ�
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
 <p style="text-indent:2em">
1:����webservice������Ҫ����һ������ӿڣ����ǵ�������HelloWebService��</p>
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
2:��������ӿڵ�ʵ���ࡣ</p>
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
3:��������ˣ������񷢲���ȥ��<br/>
&nbsp;&nbsp;���������ַ�����һ��������java�࣬�ֶ����䷢������һ����ͨ��XML�����ļ�������Ŀ������ʱ���Զ�������<br/>
&nbsp;&nbsp;��һ�ַ�������Ҫ�½�һ��������WebServiceServer��
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
��ʱ�����ǾͿ���ͨ�����������http://localhost:8080/hellowebservice��������������࣬����������������ļ��ˡ�<br/>
&nbsp;&nbsp;���ǻ�����ʹ������һ�ַ�����ͨ��XML�����ļ�������������Ҳ�ǱȽϳ��õķ�����<br/>
&nbsp;&nbsp;������web.xml������Xfire Servlet�����á�
</p>
<pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;web-app xmlns="http://java.sun.com/xml/ns/j2ee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	version="2.4"
	xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"&gt;

	&lt;!-- struts2������ Start --&gt;
	&lt;filter&gt;
		&lt;filter-name&gt;struts2&lt;/filter-name&gt;
		&lt;filter-class&gt;org.apache.struts2.dispatcher.FilterDispatcher&lt;/filter-class&gt;
	&lt;/filter&gt;
	&lt;filter-mapping&gt;
		&lt;filter-name&gt;struts2&lt;/filter-name&gt;
		&lt;url-pattern&gt;/*&lt;/url-pattern&gt;
	&lt;/filter-mapping&gt;
	&lt;!-- struts2������ end --&gt;

	&lt;!-- Spring���úͼ���start --&gt;
	&lt;context-param&gt;
		&lt;!-- ���ö���ļ�ʱ��Ҫ�Ĳ��� --&gt;
		&lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
		&lt;!-- ��Ҫ���ص������ļ��������ж�����ö��Ż��߿ո���߷ֺŸ��� --&gt;
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
		&lt;!-- ������ʱʹ��org.codehaus.xfire.transport.http.XFireConfigurableServlet --&gt;
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
ע��Ϊ�˲���struts�����������أ���Ҫ��struts.xml��Ϊ������,struts.xml����������´��룺
</p>
<pre name="code" class="xml">

&lt;package name="XFireServlet" extends="struts-default" &gt;
	    &lt;action name="*"&gt;
	        &lt;result&gt;{1}&lt;/result&gt;
	    &lt;/action&gt;
	&lt;/package&gt;
&lt;/pre&gt;
&lt;!--webService��xml�ļ�����һ�����÷�����Ҫ�õ�--&gt;
&lt;include file="/struts/webservice.xml"&gt;&lt;/include&gt;

<p style="text-indent:2em">
ͬʱҲҪ��spring��������xfir�������ļ�applicationContext-xfire.xml��</p>
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

	&lt;!-- ����xfire.xml--&gt;
     &lt;import resource="classpath:org/codehaus/xfire/spring/xfire.xml"/&gt;
     &lt;!-- Serviceʵ����--&gt;
     &lt;bean id="hello" class="demoinfo.webservice.xfire.HelloWebServiceImpl"/&gt;
     &lt;!-- �����name���Բ����ǵ���ʱ��Service���֣�����ʱҪ����������֪��Ϊʲô���������bean��������㶨��--&gt;
     &lt;bean name="webService" class="org.codehaus.xfire.spring.ServiceBean"&gt;
		&lt;property name="serviceBean" ref="hello"/&gt;                          &lt;!-- Serviceʵ����--&gt;
        &lt;property name="serviceClass" value="demoinfo.webservice.xfire.HelloWebService"/&gt;       &lt;!-- Service�ӿ�--&gt;
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
�����Ļ���Ŀ�����Ժ󣬷�����Զ�����������ͨ�����������http://localhost:8080/MyHttp/services/HelloWebService�������������</p>

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