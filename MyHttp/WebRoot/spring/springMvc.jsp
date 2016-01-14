<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'springIoc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
 <p style="text-indent:2em">Spring MVC框架是一个MVC框架，通过实现Model-View-Controller模式来很好地将数据、业务与展示进行分离。<br/>
&nbsp;&nbsp;它是一个典型的教科书式的mvc构架，而不像struts等都是变种或者不是完全基于mvc系统的框架，对于初学者或者想了解mvc的人来说我觉得 spring是最好的，它的实现就是教科书！</p>
<p style="text-indent:2em">因为SpringMVC本身是一个框架，在本网站SSH框架中着实不好演示，小编已经新建好了一个SpringMVC的web工程，详细的代码见右侧“源码”，其中有很多的注释，大家一边搭建一边学习吧！</p>
  </body>
</html>
