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
  1. ���������ڷ���ĳ���������ֶ�֮ǰ��֮��ʵʩ���أ������������ǿɲ�εģ��������ǣ��ϣе�һ��ʵ�֣�<br/>
  2. ������ջ��Interceptor Stack����������ջ���ǽ���������һ����˳�������һ�������ڷ��ʱ����صķ������ֶ�ʱ��       ���������е��������ͻᰴ��֮ǰ�����˳�򱻵��á�<br/>
  3.ʵ��ԭ��:<br/>
    Struts2��������ʵ��ԭ����Լ򵥣�������struts2��actionʱ��Struts 2����������ļ���������������ʵ������Ե�    ����������Ȼ�󴮳�һ���б����һ��һ���ص����б��е�������<br/>
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
package demoinfo.struts2.interceptor;
/**
 * ��½��ʾ��Action
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
		  setActionInfo(username+"��½�ɹ�");
		  return "success";
		}else{
			setActionInfo(username+"��½ʧ��");
			return "fail";
		}
	}
	/**
	 * �÷������������ʹ��
	 * **/
	public String interceptLogin(){
		setActionInfo("�����������û���⣺"+username+"��½�ɹ�");
	    return "success";
	}
 }
   </pre>
      <p>��д�������ĵ�Code�������������̳�AbstractInterceptor</p>
   <pre  name="code" class="java">
   package demoinfo.struts2.interceptor;

import demoinfo.struts2.interceptor.LoginAction;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class InterceptorTest extends AbstractInterceptor  {

	/**
	 * Struts2��������
	 * ���û������û���Ϊtim�Ǵ�����ת����¼ҳ��
	 */
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		 Object o = arg0.getAction();
		 if (o instanceof LoginAction && ((LoginAction) o).getUsername().equals("tim")==false ) {
             ((LoginAction) o).setActionInfo("���������"+((LoginAction) o).getUsername()+"׼����¼");
             final String res= arg0.invoke();
             
             System.out.println("�ö���������Actionִ��֮��");
             
             return res;
              
         } else {
             ((LoginAction) o).setActionInfo("���������ص�"+((LoginAction) o).getUsername()+"�Ѿ���¼");
             return Action.LOGIN;
         }        
	}

}
   
   </pre>
   <p>2:��дչʾҳ��</p>
   <pre name="code" class="php">
&lt;%@ page  contentType="text/html; charset=GBK"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Hello World&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div style="color:red;"&gt;
&lt;h2&gt;�������û���Ϊtimʱ���������������أ������ص�½ҳ��&lt;/h2&gt;
&lt;/div&gt;
&lt;s:property value ="actionInfo" /&gt; &lt;br/&gt;
    &lt;s:form action="/strut/InterceptLogin" method="post"&gt;            
       &lt;s:textfield name="username" label="�û���" /&gt;
       &lt;s:password name="password" label="����"/&gt;
       &lt;s:submit value="�ύ"/&gt;
    &lt;/s:form&gt;   
&lt;!--    ���û������û���Ϊtimʱ ��ת����¼ҳ����Ȼ��ת����ҳ�� --&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>3:У���ļ����������£��м�ע�ͣ�:�����������ȶ�����ʹ��</p>
     <pre  name="code" class="xml">
		&lt;!--    ���������붨����һ��package������Action����ǰ��--&gt;
     &lt;interceptors&gt; 
        &lt;interceptor name ="interceptorfirst" class ="demoinfo.struts2.interceptor.InterceptorTest" /&gt; 
     &lt;/interceptors &gt; 
     &lt;!--    �������������--&gt;

   </pre>
   <p>4:�����ļ��м��϶�ӦAction��������</p>
   <pre name="code" class="xml">
   		&lt;!--    �������ļ�ʾ��   --&gt;
   &lt;action name="InterceptLogin" class="demoinfo.struts2.interceptor.LoginAction" method="interceptLogin"&gt;
       &lt;interceptor-ref name ="defaultStack" /&gt;  &lt;!--����Ĭ�ϵ�������   ��ʹ���Զ�������ʱ���ὲĬ�ϵ����������ǵ�������һ��Ҫ����Ĭ�ϵ�����������ᵼ�¸����ѳ���NULL��--&gt;
       &lt;interceptor-ref name ="interceptorfirst" /&gt;  &lt;!--   �ڴ˼���������--&gt;
       &lt;result name="login"&gt;/strut/interceptor/login.jsp&lt;/result&gt;
       &lt;result name="fail"&gt;/common/fail.jsp&lt;/result&gt;
       &lt;result name="success"&gt;/common/success.jsp&lt;/result&gt;   
   &lt;/action&gt;
&lt;!--        ����������--&gt;
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