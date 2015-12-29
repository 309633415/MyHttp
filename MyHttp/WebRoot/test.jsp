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
1.什么是JSON ？<br/>
假如需要从服务器端得到大量的表格数据显示在网页上，如果还用单一的字符串处理会是一个痛苦的过程。以前的做法是使用responseXML属性返回一个XML文件，但浏览器使用JS解析XML文件也需要编写大量的代码，所以目前比较流行的做法是使用JSON对象。<br/>
JSON就是JavaScript Object Notation几个单词的首字母，翻译为JavaScript对象声明。当从服务器端返回大量的字符串数据，而且是POJO类的数据封装时，JSON数据可以让我们处理的更轻松。<br/>
2.什么是XMLHttpRequest对象？<br/>
XMLHttpRequest 对象用于在后台与服务器交换数据。<br/>
XMLHttpRequest 对象是开发者的梦想，因为您能够：在不重新加载页面的情况下更新网页，在页面已加载后从服务器请求数据，在页面已加载后从服务器接收数据，在后台向服务器发送数据<br/>
所有现代的浏览器都支持 XMLHttpRequest 对象<br/>
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
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON包合集</a>（包括commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar）
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
   
   <p>1:编写Action的Code</p>
   <pre  name="code" class="java">
package demoinfo.struts2.json;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;   
/**
 * JSON Action
 */
public class JsonAction extends ActionSupport {
	private static final long serialVersionUID = 4530102843836746666L;
	private final Logger logger = Logger.getLogger(this.getClass());
	String jsonString;
	public String writeJson(){
		try {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("key","first put is key");
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8"); //设置编码类型UTF-8
			jsonString="var flag = "+jsonObject.toString();
			response.getWriter().write(jsonString); //向前台写JSON
			response.getWriter().flush();
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			throw new IllegalStateException(e);
		}
		return null;
	}
}
   </pre>
   <p>2:编写展示页面json.jsp</p>
<pre name="code" class="php">
&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%&gt;
&lt;%@taglib prefix="sx" uri="/struts-dojo-tags"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;
&lt;head&gt;
&lt;title&gt;JSON Plugin&lt;/title&gt;
&lt;script type="text/javascript"&gt;    
    var bXmlHttpSupport = (typeof XMLHttpRequest != "undefined" || window.ActiveXObject);
    if (typeof XMLHttpRequest == "undefined" && window.ActiveXObject) {
        createXMLHttpRequest();
    }    
   
   //创建XMLHttpRequest 对象
	function createXMLHttpRequest() {
		if (window.ActiveXObject) {
		// code for IE6, IE5
			var arrSignatures = [ "MSXML2.XMLHTTP.5.0", "MSXML2.XMLHTTP.4.0",
					"MSXML2.XMLHTTP.3.0", "MSXML2.XMLHTTP", "Microsoft.XMLHTTP" ];
			for ( var i = 0; i &lt; arrSignatures.length; i++) {
				try {
					var oRequest = new ActiveXObject(arrSignatures[i]);
					return oRequest;
				} catch (oError) {
				}
			}
		} else if (window.XMLHttpRequest) {
		// code for IE7, Firefox, Opera, etc.
			var oRequest = new XMLHttpRequest();
			return oRequest;
		} else
			throw new Error("XMLHttp object could not be created.");
	}

	function retrieveBook() {
		if (bXmlHttpSupport) {
			var sUrl = '&lt;%=basePath%&gt;json/writeJson.action';
            var oRequest = new createXMLHttpRequest();
            oRequest.onreadystatechange = function() {
                if(oRequest.readyState == 4) {   
	               	    // 4 = "loaded"
	                	alert("服务器端返回的字符串是 " +oRequest.responseText);
	                	//服务器端返回的字符串类型，转成JSON对象
	                    eval(oRequest.responseText);
	                    var bookHolder = document.getElementById('bookHolder');
	                    var sBook = '&lt;p&gt;&lt;b&gt;ISBN: &lt;/b&gt;' + flag.key+ '&lt;/p&gt;';
	                    //flag对象从后台传过来
		                var  bookHolder = document.getElementById('bookHolder');
		                bookHolder.innerHTML = sBook;
                   }
                }
            };
            oRequest.open('POST', sUrl,true);
            oRequest.send(null);
            /* 在 open() 的第三个参数中使用了 "true"。该参数规定请求是否异步处理true 表示脚本会在 send() 方法之后继续执行，而不等待来自服务器的响应。
            onreadystatechange 事件使代码复杂化了。但是这是在没有得到服务器响应的情况下，防止代码停止的最安全的方法。
			通过把该参数设置为 "false"，可以省去额外的 onreadystatechange 代码。如果在请求失败时是否执行其余的代码无关紧要，那么可以使用这个参数。 */
        }
    &lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
	&lt;input type="button" value="检索书" onclick="retrieveBook()" /&gt;
	&lt;div id="bookHolder"&gt;&lt;/div&gt;
	&lt;a href="&lt;%=basePath%&gt;/json/writeJson.action"&gt;json显示JSON数据格式&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>3:struts配置文件用include包含json的配置文件</p>
     <pre  name="code" class="xml">
&lt;!--json的XML文件--&gt;
&lt;include file="/demoinfo/struts2/json/json.xml"&gt;&lt;/include&gt;
   </pre>
   <p>4:配置文件json.xml中加上对应Action</p>
   <pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
&lt;!--注意包的继承，继承的包是 json-default--&gt;
&lt;package name="json" extends="json-default" namespace="/json"&gt;
&lt;!--  想前台写出JSON数据--&gt;
  &lt;action name="writeJson" class="demoinfo.struts2.json.JsonAction" method="writeJson"&gt;
&lt;!--  注意返回的结果类型是json--&gt;
      &lt;result type="json" /&gt;
  &lt;/action&gt;   
&lt;/package&gt;
&lt;/struts&gt;
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