<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
out.println(path);
out.print(basePath);
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
1:MVC˼�뽫һ��Ӧ�÷ֳ������������֣�Model��ģ�ͣ���View����ͼ����Controller���������������������������ٵ����Эͬ�������Ӷ����Ӧ�õĿ���չ��
����ά���ԡ�<br/>
2:��Model 2ģʽ�£�ģ�ͣ�Model����JavaBean �䵱����ͼ��View����JSPҳ��䵱������������Controller������Servlet�䵱��<br/>
3:���˶�MVC����һ�仰����ͼ�㣨View����ʾ���ݣ����Ʋ㣨controller������Http��������ִ��������ҵ��������ҵ��Ĵ����������ģ�Ͳ㣨Model����ʵ��<br>
(����в���֮����ָ����<br/>
4��strut2�������ļ�Ϊstrut2.xml��Ĭ����SRC�¡�<br/>
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
   1:jar�����ص�ַ��<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar��</a> ��jar�����ܲ��ڶ�˵��
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
   <p>1:Ϊweb.xml�ļ����Strut2����������������</p>
   <pre  name="code" class="xml">
    &lt;filter&gt;
	  &lt;filter-name&gt;struts2&lt;/filter-name&gt;
	  &lt;filter-class&gt;org.apache.struts2.dispatcher.FilterDispatcher&lt;/filter-class&gt;
	&lt;/filter&gt;
	&lt;filter-mapping&gt;
			&lt;filter-name&gt;struts2&lt;/filter-name&gt;
			&lt;url-pattern&gt;/*&lt;/url-pattern&gt;
	&lt;/filter-mapping&gt;
   </pre>
   <p>2:���Struts2���İ�������Ŀ¼��WEB-INF/lib/��</p>
   <p>3:��дAction��Code</p>
   <pre  name="code" class="java">
package login;
/**
 * ��½��ʾ��Action
 * **/
public class LoginAction {

	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String checkLogin(){
		if(username.trim().equals("tom")&& password.trim().equals("123")){
		  return "success";
		}else{
			return "fail";
		}
	}
 }
   </pre>
   <p>4:��дչʾҳ��</p>
   <pre name="code" class="php">
   &lt;%@ page  contentType="text/html; charset=GBK"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Hello World&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;s:form action="checkLogin" method="post"&gt;            
       &lt;s:textfield name="username" label="�û���" /&gt;
       &lt;s:password name="password" label="����"/&gt;
       &lt;s:submit value="�ύ"/&gt;
    &lt;/s:form&gt;    
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>5:�ļ�struts.xml������,ע����ļ���src/��</p>
     <pre  name="code" class="xml">
    &lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
    &lt;constant name="struts.enable.DynamicMethodInvocation" value="false" /&gt;
    &lt;constant name="struts.devMode" value="false" /&gt;
    &lt;constant name="struts.multipart.saveDir" value="/tmp"/&gt; 
    &lt;include file ="struts-default.xml" /&gt;  
    &lt;package name="default"  extends="struts-default"&gt;
&lt;!--       action  name��ҳ����Form��Action��ͬ  Class ָ����Ӧ��Java�ļ� ����õ���Spring Ӧ�ö�ӦBean-ID method��ӦJava���еķ���--&gt;
        &lt;action name="checkLogin" class="login.LoginAction" method="checkLogin"&gt;
              &lt;result name="fail"&gt;/common/fail.jsp&lt;/result&gt;
              &lt;result name="success"&gt;/common/success.jsp&lt;/result&gt;   
        &lt;/action&gt;
&lt;!--ʹ��У���ܵ�action--&gt;
        &lt;action name="validationAction" class="validation.ValidationAction" method="checkLogin"&gt;
&lt;!--        У����У�鲻�ɹ��᷵��input--&gt;
              &lt;result name="input"&gt;/validation/login.jsp&lt;/result&gt;
              &lt;result name="success"&gt;/common/success.jsp&lt;/result&gt;   
        &lt;/action&gt;

   
   &lt;/package&gt;
&lt;!-- Add packages here   ��include������xml�ļ�  ָ���ļ������·���Ϳ�����--&gt;
&lt;!--&lt;include file="/ch7/ch7.xml"&gt;&lt;/include&gt;--&gt;
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