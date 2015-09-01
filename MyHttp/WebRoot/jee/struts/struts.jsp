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
1:MVC思想将一个应用分成三个基本部分：Model（模型）、View（视图）和Controller（控制器），这三个部分以最少的耦合协同工作，从而提高应用的可扩展性
及可维护性。<br/>
2:在Model 2模式下，模型（Model）由JavaBean 充当，视图（View）由JSP页面充当，而控制器（Controller）则由Servlet充当。<br/>
3:个人对MVC理解就一句话：视图层（View）显示数据，控制层（controller）接受Http请求后决定执行怎样的业务动作，对业务的处理代码则在模型层（Model）中实现<br>
(如果有不当之处请指出）<br/>
4：strut2的配置文件为strut2.xml；默认在SRC下。<br/>
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
   1:jar包下载地址：<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar包</a> （jar包介绍不在多说）
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
   <p>1:为web.xml文件添加Strut2的拦截器代码如下</p>
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
   <p>2:添加Struts2核心包到工程目录的WEB-INF/lib/下</p>
   <p>3:编写Action的Code</p>
   <pre  name="code" class="java">
package login;
/**
 * 登陆简单示例Action
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
   <p>4:编写展示页面</p>
   <pre name="code" class="php">
   &lt;%@ page  contentType="text/html; charset=GBK"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Hello World&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;s:form action="checkLogin" method="post"&gt;            
       &lt;s:textfield name="username" label="用户名" /&gt;
       &lt;s:password name="password" label="密码"/&gt;
       &lt;s:submit value="提交"/&gt;
    &lt;/s:form&gt;    
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>5:文件struts.xml的配置,注意该文件在src/下</p>
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
&lt;!--       action  name与页面中Form的Action相同  Class 指定对应的Java文件 如果用到了Spring 应该对应Bean-ID method对应Java类中的方法--&gt;
        &lt;action name="checkLogin" class="login.LoginAction" method="checkLogin"&gt;
              &lt;result name="fail"&gt;/common/fail.jsp&lt;/result&gt;
              &lt;result name="success"&gt;/common/success.jsp&lt;/result&gt;   
        &lt;/action&gt;
&lt;!--使用校验框架的action--&gt;
        &lt;action name="validationAction" class="validation.ValidationAction" method="checkLogin"&gt;
&lt;!--        校验框架校验不成功会返回input--&gt;
              &lt;result name="input"&gt;/validation/login.jsp&lt;/result&gt;
              &lt;result name="success"&gt;/common/success.jsp&lt;/result&gt;   
        &lt;/action&gt;

   
   &lt;/package&gt;
&lt;!-- Add packages here   用include包含子xml文件  指定文件的相对路径就可以了--&gt;
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