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
<p style="text-indent:2em">ʲô��AOP?<br/>
&nbsp;&nbsp;AOP: (Aspect Oriented Programming) ���������̡���Ŀǰ��������е�һ���ȵ㣬Ҳ��Spring������ݡ�����AOP���Զ�ҵ���߼��ĸ������ֽ��и��룬�Ӷ�ʹ��ҵ���߼�������֮�����϶Ƚ��ͣ���߳���Ŀ������ԣ�ͬʱ����˿�����Ч�ʡ���Ҫ�Ĺ����ǣ���־��¼������ͳ�ƣ���ȫ���ƣ��������쳣����ȵȡ�</p>
<p style="text-indent:2em">ʲô��OOP��AOP������ʲô����<br/>
&nbsp;&nbsp;AOP��OOP����������Ȼ�ǳ����ƣ���ȴ������ͬ������������˼�롣OOP����������̣����ҵ������̵�ʵ�弰�����Ժ���Ϊ���г����װ���Ի�ø���������Ч���߼���Ԫ���֡� ��AOP�������ҵ��������е����������ȡ��������Ե��Ǵ�������е�ĳ�������׶Σ��Ի���߼������и�����֮�������Եĸ���Ч�������������˼����Ŀ�������ű��ʵĲ��졣<br/>
&nbsp;&nbsp;ͨ��������OOP������������AOP���򶯴�����</p>
<p style="text-indent:2em">������AOP?<br/>
&nbsp;&nbsp;�ٸ������ӣ�����������ÿ��д��֮ǰ�����һ�±�����û��īˮ�ˣ�ͨ���������ǣ���д�����Action������ж��Ƿ���īˮ�ķ������������Ĳ���һ�������ǣ�д�ֵ�Action���Ƿ���īˮ�ķ����������������������ʮ��֧��ͬ�ı�д�֣�ÿһ���ʵ�Action�ﶼҪ�����ж��Ƿ���īˮ�ķ�������һ�������ǣ����������ĳ��������˵��д�ֺ��ж��Ƿ���īˮ�ķ�����ͬһ�ȼ��ģ��������д������������ж��Ƿ���īˮ�������Ի�����Υ�������ĳ�����Ƶ�˼�롣<br/>
&nbsp;&nbsp;�����Spring��AOP���ǰ�д�ֵ�Action��Ϊһ�����棬��ÿ�ε��ò�ͬ�ı���д�ֵķ���֮ǰ�������ж��Ƿ���īˮ�ķ�����������&lt;aop:config/&gt;��ǩ��Spring�����ļ��ﶨ��ġ�</p>
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
 1:jar�����ص�ַ��<a href="http://repo.springsource.org/libs-release-local" target="_blank">spring jar��</a><br/>
 2.��ϸѧϰ�ο�spring�ο��ֲ�<a href="http://download.csdn.net/detail/jiashubing/9401325" target="_blank">spring�ο��ֲ�</a>
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
&nbsp;&nbsp;AOP��ʵ�ֿ���ʹ��ע���xml�����ļ����ַ�ʽ������ʹ��xml�����ļ���ʽ��ʾ���Ĺ��̼����ġ�ʾ��չʾ����������Դ�룺</br>
&nbsp;&nbsp;���Ƚ���һ���ӿ�Performer��</br>
   <pre  name="code" class="java">
package demoinfo.spring.aop;

public interface Performer {
	//���ݸ���
	public void perform();
}
</pre>
&nbsp;&nbsp;�ٽ���һ���ӿ�ʵ����DukePerformer</br>
  <pre  name="code" class="java">
package demoinfo.spring.aop;

public class DukePerformer implements  Performer{
    private String name;  
    public void setName(String name)  {  
        this.name=name;  
    }  
    public String getName()  {  
        return this.name;  
    }  
    public void perform() {  
        System.out.println(this.name+" ��ʼ�ݳ�������");  
    }  
} 

</pre>
&nbsp;&nbsp;Audience����ҵ����</br>
  <pre  name="code" class="java">
  package demoinfo.spring.aop;

public class Audience {  
	public void takeSeat()  {  
		System.out.println("����������λ�ϡ�");  
	}  
	public void turnOffPhone()   {  
		System.out.println("���ڹر��ֻ���");  
	}  
	public void applaud()  {  
		System.out.println("���ڹ��ƣ��������ò�Ϣ...");  
	}  
	public void unHappy()  {  
		System.out.println("���ڲ�����.");  
	}  
}  

</pre>
&nbsp;&nbsp;�����ļ�applicationContext.xml�������£�</br>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:aop="http://www.springframework.org/schema/aop"
	xsi:schemaLocation="http://www.springframework.org/schema/beans
           http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
           http://www.springframework.org/schema/aop
           http://www.springframework.org/schema/aop/spring-aop-2.0.xsd"&gt;
	&lt;!-- AOPѧϰʱ������ --&gt;
	&lt;bean id="DukePerformer" class="demoinfo.spring.aop.DukePerformer"&gt;
		&lt;property name="name" value="duke" /&gt;
	&lt;/bean&gt;
	&lt;bean id="audience" class="demoinfo.spring.aop.Audience" /&gt;
	
	&lt;aop:config&gt;
		&lt;!-- ��������� --&gt;
		&lt;aop:pointcut id="sing" expression="execution(* *.perform(..))"/&gt;
		&lt;!-- �������� --&gt;
		&lt;aop:aspect ref="audience"&gt;
			&lt;!-- ǰ��֪ͨ --&gt;
			&lt;aop:before method="takeSeat" pointcut-ref="sing" /&gt;
			&lt;aop:before method="turnOffPhone" pointcut-ref="sing" /&gt;
			&lt;!-- ���غ�֪ͨ --&gt;
			&lt;aop:after-returning method="applaud" pointcut-ref="sing" /&gt;
			&lt;!-- �׳���֪ͨ --&gt;
			&lt;aop:after-throwing method="unHappy" pointcut-ref="sing" /&gt;
		&lt;/aop:aspect&gt;
	&lt;/aop:config&gt;
	&lt;!-- AOPѧϰʱ������ --&gt;
&lt;/beans&gt;

</pre>
&nbsp;&nbsp;��������������£�</br>
<pre  name="code" class="java">
package demoinfo.spring.aop;

import org.springframework.context.ApplicationContext;  
import org.springframework.context.support.FileSystemXmlApplicationContext;  

public class SpringDemo {  
    public static void main(String[] args) {  
    	//���Spring�ж����Beanʵ��(����)
        ApplicationContext ctx=new FileSystemXmlApplicationContext(
        		"classpath:demoinfo/spring/aop/applicationContext.xml");  
        Performer per=(Performer)ctx.getBean("DukePerformer");  
        per.perform();  
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