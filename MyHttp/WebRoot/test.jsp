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
 1:jar�����ص�ַ��<a href="http://download.csdn.net/detail/jiashubing/9411845" target="_blank">;XFire+WebService��jar���ϼ�</a>��jar����������Ͳ������ˣ�
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
1:�ڷ���������Ŀ�Ļ����ϵ��÷������Ƚ���WebServiceAction�ࣺ</p>
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
2:�ٽ���struts�����ļ�����struts.xml�а���webservice.xml��webservice.xml�Ĵ������£�</p>
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
3:�����jsp��չʾҳ��webServiceTake.jsp���������£�<br/>
</p>
<pre name="code" class="php">
&lt;%@ include file="/common/taglibs.jsp" %&gt;
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;webServiceʵ��&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h2&gt;ͨ��������HelloWebService����ӿڵ�����վ����&lt;/h2&gt;&lt;br/&gt;
&lt;div style="color:blue;"&gt;
���÷����� : sayHello����sayLove&lt;br/&gt;
�����ı����� : �������� 
&lt;/div&gt;&lt;br/&gt;&lt;br/&gt;
    &lt;form action="&lt;%=basePath %&gt;/webservice/take.action" method="post"&gt;
       &lt;s:textfield name="name" label="���÷�����" /&gt;&lt;br/&gt;
       &lt;s:textfield name="message"  label="�����ı�����"/&gt;&lt;br/&gt;
       &lt;s:submit value="�ύ"/&gt;&lt;br/&gt;
    &lt;/form&gt;
&lt;div&gt;
	��������Ϊ��
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