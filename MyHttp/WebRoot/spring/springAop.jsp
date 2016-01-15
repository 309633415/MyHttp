<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SpringAop</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <p style="text-indent:2em">AOP(Aspect Oriented Programming)，是面向切面编程的技术。AOP基于IoC基础，是对OOP的有益补充。<br/>
&nbsp;&nbsp;AOP之所以能得到广泛认可，主要是因为它将应用系统拆分分了2个部分：核心业务逻辑及横向的通用逻辑，也就是所谓的切面。例如，所有大中型应用都要涉及到的持久化管理、事务管理、权限管理、日志管理和调试管理等。使用AOP技术，可以让开发人员只专注核心业务，而通用逻辑则使用AOP技术进行横向切入，由专人去处理这些通用逻辑，会使得任务简单明了，提高开发和调试的效率。</p>
<p style="text-indent:2em">下面我们来举个例子（具体代码参见右侧源码，只适合菜鸟看） </p>
<p><strong>示例场景</strong></p>
<p style="text-indent:2em">场景：歌手演唱音乐，演唱之前观众要坐在座位上并且关闭手机，演唱结束后，观众们满意就鼓掌，不满意就抛出不高兴的异常。<br/>
&nbsp;&nbsp;分析这个场景，某歌手演唱音乐是核心业务逻辑，而演唱之前和之后观众们的动作都是通用的，属于横向的通用逻辑。</p>
<p><strong>示例原理图</strong></p>
<img alt="AOP原理图" src="<%=basePath %>/image/aop.png" style="width:100%">
<p><strong>实现步骤</strong></p>
<p>
&nbsp;&nbsp;1.首先建立一个歌手接口 Performer。<br/>
&nbsp;&nbsp;2.再建立爵士音乐歌手类 DukePerformer 来实现这个接口，类中包括了歌手的个人信息。<br/>
&nbsp;&nbsp;3.然后定义观众类 Audience，包含观众的行为通知。<br/>
&nbsp;&nbsp;4.完成之后，我们便可以在配置文件 applicationContext.xml 中进行aop切面配置。关键代码如下：<br/>
<pre style="color:blue">
&lt;aop:config&gt;
	&lt;!-- 定义切入点 --&gt;
	&lt;aop:pointcut id="sing" expression="execution(* *.perform(..))"/&gt;
	&lt;!-- 定义切面 --&gt;
	&lt;aop:aspect ref="audience"&gt;
		&lt;!-- 前置通知 --&gt;
		&lt;aop:before method="takeSeat" pointcut-ref="sing" /&gt;
		&lt;aop:before method="turnOffPhone" pointcut-ref="sing" /&gt;
		&lt;!-- 返回后通知 --&gt;
		&lt;aop:after-returning method="applaud" pointcut-ref="sing" /&gt;
		&lt;!-- 抛出后通知 --&gt;
		&lt;aop:after-throwing method="unHappy" pointcut-ref="sing" /&gt;
	&lt;/aop:aspect&gt;
&lt;/aop:config&gt;
</pre>
&nbsp;&nbsp;5.编写测试类代码，获得Spring中定义的Bean对象，执行perform表演方法，查看后台是如何运行的。<br/>
&nbsp;&nbsp;正常情况下，控制台会打印如下的信息：<br/>
<pre style="color:blue">
观众坐在座位上。
观众关闭手机。
duke 开始演唱歌曲。
观众鼓掌，掌声经久不息...
</pre>
</p>
  </body>
</html>
