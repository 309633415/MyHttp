<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>webServiceConf.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <h2>使用XFire发布服务接口 </h2>
      <p style="text-indent:2em;">注：成功以后就可以通过地址栏访问查看</p>
    <a href="<%=basePath%>services" target="_blank">发布成功后的样例</a><br/><br/>
    <button onclick="window.open('<%=basePath%>services/HelloWebService?WSDL')">查看WebService内容</button>
    <p style="text-indent:2em;">发布成功后可以从代码中看出，HelloWebService 接口中有 sayHello 和 sayLove 两个方法。</p>
    <br/><br/>
    <p style="text-indent:2em;">WebService，就是基于Web的服务。它使用Web(HTTP)方式，接收和响应外部系统的某种请求。从而远程调用。那么如何才可以发布一个WebService呢？
		粗略讲就是用Jdk1.6.0_21以后的版本发布一个WebService服务。并通过地址栏查看它的wsdl文档。具体的方法参考源码。</p>
	<p style="text-indent:2em;">小编的写法是SSH+XFire实现WebService的写法，需要注意struts不能拦截xfire的请求，当然不整合的话更加简单。</p>
  </body>
</html>
