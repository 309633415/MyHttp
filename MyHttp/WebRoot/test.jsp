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
&nbsp;&nbsp;ajax异步提交数据的传递方式：<br/>
&nbsp;&nbsp;&nbsp;1.首先按照url和请求方式将序列化好的数据发送至对应的action，被序列化的params是name=123&password=123这样的。<br/>
&nbsp;&nbsp;&nbsp;2.action在处理完成之后将msg以json的形式发送至客户端，由客户端的js验证。<br/>
&nbsp;&nbsp;基于struts2+jQuery实现的ajax，与基于struts2实现的ajax相比，不同之处在jQuery对客户端页面的操作更加方便灵活。<br/>
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
 1:jar包下载地址：<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar包</a>
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON包合集</a>（包括commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar）<br/>
 2:jQuery下载地址：<a href="http://download.csdn.net/detail/jiashubing/9395423" target="_blank">jquery-1.7.1.min.js  </a>
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
&nbsp;&nbsp;首先导入需要的jar包，基于struts2的ajax在前端页面传值的时候，可以采用sx标签绑定事件的方法来提交。</br>
&nbsp;&nbsp;ajax.jsp页面的代码如下：</br>
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
	&lt;h3&gt;异步校验（基于struts2实现ajax）&lt;/h3&gt;
	&lt;br&gt;
	&lt;div style="color:red"&gt;
		&lt;h3&gt;当输入用户为tom时表示该用户已经注册过，用户名输入框失去焦点后触发异步提交事件&lt;/h3&gt;
	&lt;/div&gt;
	&lt;div id="checkinfo"&gt;&lt;/div&gt;
	&lt;s:url id="url" action="/ajax/checkAjax.action"&gt;&lt;/s:url&gt;
	&lt;form id="first" action="&lt;%=basePath %&gt;/ajax/checkAjax"&gt;
		&lt;table&gt;
			&lt;tr&gt;
				&lt;td&gt;
					&lt;s:textfield name="username" label="用户名"&gt;&lt;/s:textfield&gt;&lt;br /&gt;
					&lt;s:password name="pwd" label="密     码"&gt;&lt;/s:password&gt;&lt;br /&gt; 
					&lt;s:submit value="提交"&gt;&lt;/s:submit&gt;&lt;br /&gt;&lt;/td&gt;
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

&nbsp;&nbsp;接收Action的返回值，显示结果的页面warning.jsp页面的代码如下：
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
            &lt;font color="red"&gt;对不起，该帐号已经被注册过了&lt;/font&gt;
        &lt;/s:if&gt;
        &lt;s:else&gt;
                              该帐号还未被注册
        &lt;/s:else&gt;
    &lt;/body&gt;
&lt;/html&gt;
</pre>

&nbsp;&nbsp;在struts.xm配置文件中包含ajax.xml，其中的内容是：</br>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
&lt;package name="ajax" extends="json-default" namespace="/ajax"&gt;

&lt;!--   异步校验的Action--&gt;
   &lt;action name="checkAjax" class="demoinfo.struts2.ajax.AjaxAction" method="checkAjax"&gt;
        &lt;result&gt;/strut/ajax/waring.jsp&lt;/result&gt;
   &lt;/action&gt;
&lt;/package&gt;
&lt;/struts&gt;
</pre>

&nbsp;&nbsp;AjaxAction对应的代码为：</br>
   <pre  name="code" class="java">
package demoinfo.struts2.ajax;

import com.opensymphony.xwork2.ActionSupport;
/**
 * Ajax的Action
 * **/
public class AjaxAction extends ActionSupport {

	private static final long serialVersionUID = -8201401726773589361L;

	private String username; //用户名
	private String pwd;//密码
	private int flag;//返回客户端的值
	
	//Ajax校验
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