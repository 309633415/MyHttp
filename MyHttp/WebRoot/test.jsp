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
&nbsp;&nbsp;ajax�첽�ύ���ݵĴ��ݷ�ʽ��<br/>
&nbsp;&nbsp;&nbsp;1.���Ȱ���url������ʽ�����л��õ����ݷ�������Ӧ��action�������л���params��name=123&password=123�����ġ�<br/>
&nbsp;&nbsp;&nbsp;2.action�ڴ������֮��msg��json����ʽ�������ͻ��ˣ��ɿͻ��˵�js��֤��<br/>
&nbsp;&nbsp;����struts2+jQueryʵ�ֵ�ajax�������struts2ʵ�ֵ�ajax��ȣ���֮ͬ����jQuery�Կͻ���ҳ��Ĳ������ӷ�����<br/>
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
 1:jar�����ص�ַ��<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar��</a>
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON���ϼ�</a>������commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar��<br/>
 2:jQuery���ص�ַ��<a href="http://download.csdn.net/detail/jiashubing/9395423" target="_blank">jquery-1.7.1.min.js  </a>
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
&nbsp;&nbsp;���ȵ�����Ҫ��jar��������struts2��ajax��ǰ��ҳ�洫ֵ��ʱ�򣬿��Բ���sx��ǩ���¼��ķ������ύ��</br>
&nbsp;&nbsp;ajax.jspҳ��Ĵ������£�</br>
   <pre  name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%&gt;
&lt;%@ taglib prefix="sx" uri="/struts-dojo-tags"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;sx:head /&gt;
&lt;/head&gt;

&lt;body&gt;
	&lt;h3&gt;�첽У�飨����struts2ʵ��ajax��&lt;/h3&gt;
	&lt;br&gt;
	&lt;div style="color:red"&gt;
		&lt;h3&gt;�������û�Ϊtomʱ��ʾ���û��Ѿ�ע������û��������ʧȥ����󴥷��첽�ύ�¼�&lt;/h3&gt;
	&lt;/div&gt;
	&lt;div id="checkinfo"&gt;&lt;/div&gt;
	&lt;s:url id="url" action="/ajax/checkAjax.action"&gt;&lt;/s:url&gt;
	&lt;form id="first" action="&lt;%=basePath %&gt;/ajax/checkAjax"&gt;
		&lt;table&gt;
			&lt;tr&gt;
				&lt;td&gt;
					&lt;s:textfield name="username" label="�û���"&gt;&lt;/s:textfield&gt;&lt;br /&gt;
					&lt;s:password name="pwd" label="��     ��"&gt;&lt;/s:password&gt;&lt;br /&gt; 
					&lt;s:submit value="�ύ"&gt;&lt;/s:submit&gt;&lt;br /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;sx:bind formId="first" sources="username" events="onblur"
						targets="checkinfo"&gt;&lt;/sx:bind&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;
	&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;

</pre>

&nbsp;&nbsp;����Action�ķ���ֵ����ʾ�����ҳ��warning.jspҳ��Ĵ������£�
<pre  name="code" class="php">
&lt;%@taglib  prefix="s" uri="/struts-tags" %&gt;
&lt;%@ taglib prefix="sx" uri="/struts-dojo-tags" %&gt;
&lt;%@page contentType="text/html" pageEncoding="GBK"%&gt;
&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd"&gt;

&lt;html&gt;
    &lt;head&gt;
        &lt;meta http-equiv="Content-Type" content="text/html; charset=UTF-8"&gt;
        &lt;sx:head/&gt;
        &lt;title&gt;Test&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;&lt;br&gt;
        &lt;s:if test="flag==1"&gt;
            &lt;font color="red"&gt;�Բ��𣬸��ʺ��Ѿ���ע�����&lt;/font&gt;
        &lt;/s:if&gt;
        &lt;s:else&gt;
                              ���ʺŻ�δ��ע��
        &lt;/s:else&gt;
    &lt;/body&gt;
&lt;/html&gt;
</pre>

&nbsp;&nbsp;��struts.xm�����ļ��а���ajax.xml�����е������ǣ�</br>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
&lt;package name="ajax" extends="json-default" namespace="/ajax"&gt;

&lt;!--   �첽У���Action--&gt;
   &lt;action name="checkAjax" class="demoinfo.struts2.ajax.AjaxAction" method="checkAjax"&gt;
        &lt;result&gt;/strut/ajax/waring.jsp&lt;/result&gt;
   &lt;/action&gt;
&lt;/package&gt;
&lt;/struts&gt;
</pre>

&nbsp;&nbsp;AjaxAction��Ӧ�Ĵ���Ϊ��</br>
   <pre  name="code" class="java">
package demoinfo.struts2.ajax;

import com.opensymphony.xwork2.ActionSupport;
/**
 * Ajax��Action
 * **/
public class AjaxAction extends ActionSupport {

	private static final long serialVersionUID = -8201401726773589361L;

	private String username; //�û���
	private String pwd;//����
	private int flag;//���ؿͻ��˵�ֵ
	
	//AjaxУ��
	public String checkAjax() {
		if (this.getUsername().equals("tom")) {
			this.setFlag(1);
		} else {
			this.setFlag(2);
		}
		return SUCCESS;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
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