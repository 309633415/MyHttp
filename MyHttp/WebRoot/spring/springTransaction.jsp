<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SpringTransation.jsp' starting page</title>
    
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
    <p style="text-indent:2em">事务，就是保证一系列业务逻辑全部执行或者全部不执行。</p>
    <p style="text-indent:2em">在开发中，将hibernate和Spring集成，较常使用Spring框架的声明式事务。<br/>
       &nbsp;&nbsp;使用Spring的声明式事务，不再需要自动创建sessionFactory和Session，不再需要手动控制事务的开启和关闭。</p>
       <p style="text-indent:2em">使用Spring声明式事务的两个个步骤：<br/>
	       &nbsp;&nbsp;&nbsp;&nbsp;1.applicationContext.xml中进行配置。<br/>
	       &nbsp;&nbsp;&nbsp;&nbsp;2.提交事务类继承HibernateDaoSupport。  </p>
	       <p style="text-indent:2em">具体源码请看右侧</p>
  </body>
</html>
