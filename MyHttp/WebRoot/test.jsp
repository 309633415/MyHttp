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
1.ʲô��JSON ��<br/>
������Ҫ�ӷ������˵õ������ı��������ʾ����ҳ�ϣ�������õ�һ���ַ����������һ��ʹ��Ĺ��̡���ǰ��������ʹ��responseXML���Է���һ��XML�ļ����������ʹ��JS����XML�ļ�Ҳ��Ҫ��д�����Ĵ��룬����Ŀǰ�Ƚ����е�������ʹ��JSON����<br/>
JSON����JavaScript Object Notation�������ʵ�����ĸ������ΪJavaScript�������������ӷ������˷��ش������ַ������ݣ�������POJO������ݷ�װʱ��JSON���ݿ��������Ǵ���ĸ����ɡ�<br/>
2.ʲô��XMLHttpRequest����<br/>
XMLHttpRequest ���������ں�̨��������������ݡ�<br/>
XMLHttpRequest �����ǿ����ߵ����룬��Ϊ���ܹ����ڲ����¼���ҳ�������¸�����ҳ����ҳ���Ѽ��غ�ӷ������������ݣ���ҳ���Ѽ��غ�ӷ������������ݣ��ں�̨���������������<br/>
�����ִ����������֧�� XMLHttpRequest ����<br/>
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
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON���ϼ�</a>������commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar��
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
   
   <p>1:��дAction��Code</p>
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
			response.setContentType("text/html;charset=UTF-8"); //���ñ�������UTF-8
			jsonString="var flag = "+jsonObject.toString();
			response.getWriter().write(jsonString); //��ǰ̨дJSON
			response.getWriter().flush();
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			throw new IllegalStateException(e);
		}
		return null;
	}
}
   </pre>
   <p>2:��дչʾҳ��json.jsp</p>
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
   
   //����XMLHttpRequest ����
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
	                	alert("�������˷��ص��ַ����� " +oRequest.responseText);
	                	//�������˷��ص��ַ������ͣ�ת��JSON����
	                    eval(oRequest.responseText);
	                    var bookHolder = document.getElementById('bookHolder');
	                    var sBook = '&lt;p&gt;&lt;b&gt;ISBN: &lt;/b&gt;' + flag.key+ '&lt;/p&gt;';
	                    //flag����Ӻ�̨������
		                var  bookHolder = document.getElementById('bookHolder');
		                bookHolder.innerHTML = sBook;
                   }
                }
            };
            oRequest.open('POST', sUrl,true);
            oRequest.send(null);
            /* �� open() �ĵ�����������ʹ���� "true"���ò����涨�����Ƿ��첽����true ��ʾ�ű����� send() ����֮�����ִ�У������ȴ����Է���������Ӧ��
            onreadystatechange �¼�ʹ���븴�ӻ��ˡ�����������û�еõ���������Ӧ������£���ֹ����ֹͣ���ȫ�ķ�����
			ͨ���Ѹò�������Ϊ "false"������ʡȥ����� onreadystatechange ���롣���������ʧ��ʱ�Ƿ�ִ������Ĵ����޹ؽ�Ҫ����ô����ʹ����������� */
        }
    &lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
	&lt;input type="button" value="������" onclick="retrieveBook()" /&gt;
	&lt;div id="bookHolder"&gt;&lt;/div&gt;
	&lt;a href="&lt;%=basePath%&gt;/json/writeJson.action"&gt;json��ʾJSON���ݸ�ʽ&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>3:struts�����ļ���include����json�������ļ�</p>
     <pre  name="code" class="xml">
&lt;!--json��XML�ļ�--&gt;
&lt;include file="/demoinfo/struts2/json/json.xml"&gt;&lt;/include&gt;
   </pre>
   <p>4:�����ļ�json.xml�м��϶�ӦAction</p>
   <pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
&lt;!--ע����ļ̳У��̳еİ��� json-default--&gt;
&lt;package name="json" extends="json-default" namespace="/json"&gt;
&lt;!--  ��ǰ̨д��JSON����--&gt;
  &lt;action name="writeJson" class="demoinfo.struts2.json.JsonAction" method="writeJson"&gt;
&lt;!--  ע�ⷵ�صĽ��������json--&gt;
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