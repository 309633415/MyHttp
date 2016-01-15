<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SpringJdbc</title>
    
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
  
 <p style="text-indent:2em">在Spring JDBC模板类中，最常使用的是JdbcTemplate，它是Spring支持JDBC的核心类。JdbcTemplate完成了JDBC资源的创建以及释放工作，从而简化了对JDBC的使用。<br/>
&nbsp;&nbsp;在JdbcTemplate类执行各个操作之前，必须先配置数据库连接。在Spring中这个过程由DataSource对象来完成。<br/>
&nbsp;&nbsp;DataSource配置数据源的方式有两种，一种是使用DBCP连接池，另一种是使用Spring自带的DriveManagerDataSource。<br/>
&nbsp;&nbsp;这两种方式，都需要完成三种配置，一是必须指定JDBC驱动程序的名称，而是提供一个url，三是提供一个连接数据库的用户名和密码。<br/>
&nbsp;&nbsp;唯一不同的只有配置数据源的class，当然需要的jar包也是不同的。</p>
 <p style="text-indent:2em">DBCP连接池和Spring自带的DriveManagerDataSource分别是：</p>
<pre style="color:blue">
&lt;bean id="dataSource" 
class="org.apache.commons.dbcp.BasicDataSourc"&gt;
...
&lt;/bean&gt;

&lt;bean id="dataSource" 
class="org.springframework.jdbc.datasource.DriverManagerDataSource"&gt;
...
&lt;/bean&gt;
</pre>
<p style="text-indent:2em">右侧实例代码使用的是DriveManagerDataSource方式连接数据库。<br/>
 &nbsp;&nbsp;它的查询方法分别是：</p>
 <p style="color:blue">getJdbcTemplate().queryForList(sql);</p>
 &nbsp;&nbsp;更新方法是：<br/>
 <p style="color:blue">getJdbcTemplate().update(sql,params,types);</p>
  <p style="text-indent:2em>是不是很简单！！</p>
  </body>
</html>
