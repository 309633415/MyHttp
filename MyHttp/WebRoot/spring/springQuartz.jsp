<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SpringQuartz</title>
    
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

<p style="text-indent:2em">在JavaEE系统中，我们会经常用到定时任务，比如每天凌晨生成前天报表，每一小时生成汇总数据等等。<br/>
&nbsp;&nbsp;我们可以使用java.util.Timer结合java.util.TimerTask来完成这项工作，但时调度控制非常不方便，并且我们需要大量的代码。<br/>
&nbsp;&nbsp;使用Quartz框架无疑是非常好的选择，并且与Spring可以非常方便的集成。</p>

<p style="text-indent:2em">Spring提供了支持时序调度的整合类。整个构建任务调度服务需要三步：<br/>
&nbsp;&nbsp;1）向项目中添加jar包：添加quartz.jar包，将他加到你工程的classpath中去。 <br/>
&nbsp;&nbsp;2）写Class文件，在文件中定义你要执行操作的函数你就可以通过配置来达到定时操作了。<br/>
&nbsp;&nbsp;3）提供applicationContext.xml Spring配置文件，其中配置你的定时发送操作以及设置定时器的各种属性（包括运行频率和初始运行时机）。　</p>

<p style="text-indent:2em">小编做了一个每5秒打印一次当前时间的例子，具体请参考源码，尤其注意配置文件的写法。</p>

  </body>
</html>
