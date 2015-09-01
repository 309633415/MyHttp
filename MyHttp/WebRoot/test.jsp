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
  1. 拦截器是在防问某个方法，字段之前或之后实施拦截，并且拦截器是可插拔的，拦截器是ＡＯＰ的一种实现．<br/>
  2. 拦截器栈（Interceptor Stack）。拦截器栈就是将拦截器按一定的顺序联结成一条链。在访问被拦截的方法或字段时，       拦截器链中的拦截器就会按其之前定义的顺序被调用。<br/>
  3.实现原理:<br/>
    Struts2拦截器的实现原理相对简单，当请求struts2的action时，Struts 2会查找配置文件，并根据其配置实例化相对的    拦截器对象，然后串成一个列表，最后一个一个地调用列表中的拦截器<br/>
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
package demoinfo.struts2.interceptor;
/**
 * 登陆简单示例Action
 * **/
public class LoginAction {

	private String username;
	private String password;
	private String actionInfo;
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
	public String getActionInfo() {
		return actionInfo;
	}
	public void setActionInfo(String actionInfo) {
		this.actionInfo = actionInfo;
	}
	
	public String checkLogin(){
		if(username.trim().equals("tom")&& password.trim().equals("123")){
		  setActionInfo(username+"登陆成功");
		  return "success";
		}else{
			setActionInfo(username+"登陆失败");
			return "fail";
		}
	}
	/**
	 * 该方法配合拦截器使用
	 * **/
	public String interceptLogin(){
		setActionInfo("拦截器跳过用户检测："+username+"登陆成功");
	    return "success";
	}
 }
   </pre>
      <p>编写拦截器的的Code，拦截器类必须继承AbstractInterceptor</p>
   <pre  name="code" class="java">
   package demoinfo.struts2.interceptor;

import demoinfo.struts2.interceptor.LoginAction;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class InterceptorTest extends AbstractInterceptor  {

	/**
	 * Struts2拦截器类
	 * 当用户输入用户名为tim是从新跳转到登录页面
	 */
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		 Object o = arg0.getAction();
		 if (o instanceof LoginAction && ((LoginAction) o).getUsername().equals("tim")==false ) {
             ((LoginAction) o).setActionInfo("拦截器检测"+((LoginAction) o).getUsername()+"准备登录");
             final String res= arg0.invoke();
             
             System.out.println("该段语句输出在Action执行之后！");
             
             return res;
              
         } else {
             ((LoginAction) o).setActionInfo("拦截器拦截到"+((LoginAction) o).getUsername()+"已经登录");
             return Action.LOGIN;
         }        
	}

}
   
   </pre>
   <p>2:编写展示页面</p>
   <pre name="code" class="php">
&lt;%@ page  contentType="text/html; charset=GBK"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Hello World&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div style="color:red;"&gt;
&lt;h2&gt;当输入用户名为tim时，拦截器进行拦截，并返回登陆页面&lt;/h2&gt;
&lt;/div&gt;
&lt;s:property value ="actionInfo" /&gt; &lt;br/&gt;
    &lt;s:form action="/strut/InterceptLogin" method="post"&gt;            
       &lt;s:textfield name="username" label="用户名" /&gt;
       &lt;s:password name="password" label="密码"/&gt;
       &lt;s:submit value="提交"/&gt;
    &lt;/s:form&gt;   
&lt;!--    当用户输入用户名为tim时 跳转到登录页面仍然跳转到本页面 --&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>3:校验文件的配置如下（有简单注释）:拦截器必须先定义在使用</p>
     <pre  name="code" class="xml">
		&lt;!--    拦截器必须定义在一个package中所有Action的最前面--&gt;
     &lt;interceptors&gt; 
        &lt;interceptor name ="interceptorfirst" class ="demoinfo.struts2.interceptor.InterceptorTest" /&gt; 
     &lt;/interceptors &gt; 
     &lt;!--    拦截器定义结束--&gt;

   </pre>
   <p>4:配置文件中加上对应Action及拦截器</p>
   <pre name="code" class="xml">
   		&lt;!--    拦截器的简单示例   --&gt;
   &lt;action name="InterceptLogin" class="demoinfo.struts2.interceptor.LoginAction" method="interceptLogin"&gt;
       &lt;interceptor-ref name ="defaultStack" /&gt;  &lt;!--加上默认的拦截器   在使用自定拦截器时，会讲默认的拦截器覆盖掉，所以一定要加上默认的拦截器否则会导致各种已成如NULL等--&gt;
       &lt;interceptor-ref name ="interceptorfirst" /&gt;  &lt;!--   在此加上拦截器--&gt;
       &lt;result name="login"&gt;/strut/interceptor/login.jsp&lt;/result&gt;
       &lt;result name="fail"&gt;/common/fail.jsp&lt;/result&gt;
       &lt;result name="success"&gt;/common/success.jsp&lt;/result&gt;   
   &lt;/action&gt;
&lt;!--        拦截器结束--&gt;
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