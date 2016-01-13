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
<p style="text-indent:2em">传统的Java后台数据开发，其步骤非常乏味枯燥，重复劳动特别多。Spring针对JDBC这种情况，重新对JDBC进行封装，避免了开发者每次都进行重复的、普通的开发，而集中精力去处理具体业务逻辑。</p>
<p style="text-indent:2em">在Spring API中提供了四个包用于完成Spring JDBC操作，它们都在org.springframework.jdbc包下，分别是:<br/>
&nbsp;&nbsp;1）core<br/>
&nbsp;&nbsp;即核心包，它包含了JDBC的核心功能。此包内有很多重要的类，包括：JdbcTemplate类、SimpleJdbcInsert类，SimpleJdbcCall类，以及NamedParameterJdbcTemplate类。<br/>
&nbsp;&nbsp;2）datasource<br/>
&nbsp;&nbsp;即数据源包，访问数据源的实用工具类。它有多种数据源的实现，可以在JavaEE容器外部测试JDBC代码。<br/>
&nbsp;&nbsp;3）object<br/>
&nbsp;&nbsp;即对象包，以面向对象的方式访问数据库。它允许执行查询并返回结果作为业务对象。它可以在数据表的列和业务对象的属性之间映射查询结果。<br/>
&nbsp;&nbsp;4）support<br/>
&nbsp;&nbsp;即支持包，是core包和object包的支持类。例如提供了异常转换功能的SQLException类。</p>
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
 1:jar包下载地址：<a href="http://repo.springsource.org/libs-release-local" target="_blank">spring jar包</a><br/>
 2.详细学习参考spring参考手册<a href="http://download.csdn.net/detail/jiashubing/9401325" target="_blank">spring参考手册</a>
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
&nbsp;&nbsp;首先使用mysql数据库，简单的创建一张表，然后通过Spring配置数据源，读取该表中的内容</br>
&nbsp;&nbsp;然后创建数据库操作类UserDAO，代码如下所示：</br>
   <pre  name="code" class="java">
package demoinfo.spring.jdbc;

import java.util.List;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class UserDAO extends JdbcDaoSupport{
	@SuppressWarnings("rawtypes")
	public List getAllUserList(){
		try{
			return getJdbcTemplate().queryForList("select id,studentName,age from hibernate_relationship_student");
		}catch (RuntimeException re){
			throw re;
		}
	}
	public int saveOrupdate(String sql,Object[] params,int[] types){
		try{
		return getJdbcTemplate().update(sql,params,types);
		}catch (RuntimeException re){
			throw re;
		}
	}

}

</pre>
&nbsp;&nbsp;实现测试类TestJDBC</br>
  <pre  name="code" class="java">
package demoinfo.spring.jdbc;

import java.util.Iterator;
import java.util.Map;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestJDBC {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args){
		//获得Spring中定义的Bean实例(对象)
        ApplicationContext ctx = new ClassPathXmlApplicationContext(     
        "classpath:demoinfo/spring/jdbc/applicationContext.xml ");   
        UserDAO userDAO = (UserDAO)ctx.getBean("userDAO");
        Iterator iterator = userDAO.getAllUserList().iterator();
        System.out.println("user     password");
        while(iterator.hasNext()){
        	Map user = (Map) iterator.next();
        	System.out.println(user.get("studentName")+"     "+user.get("age"));
        }
	}
}

</pre>
&nbsp;&nbsp;编写配置文件applicationContext.xml</br>
  <pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tx="http://www.springframework.org/schema/tx"
	xmlns:aop="http://www.springframework.org/schema/aop" xmlns:p="http://www.springframework.org/schema/p"
	xmlns:context="http://www.springframework.org/schema/context"
	xsi:schemaLocation="http://www.springframework.org/schema/beans 
	http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
	http://www.springframework.org/schema/context   
     http://www.springframework.org/schema/context/spring-context-3.0.xsd   
     http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx-2.5.xsd 
     http://www.springframework.org/schema/aop http://www.springframework.org/schema/aop/spring-aop-2.5.xsd"&gt;
	&lt;!-- 配置连接池 --&gt;
	&lt;bean id="dataSource" 
	class="org.springframework.jdbc.datasource.DriverManagerDataSource"&gt;
		&lt;!-- 配置驱动程序 --&gt;
		&lt;property name="driverClassName"&gt;
			&lt;value&gt;com.mysql.jdbc.Driver&lt;/value&gt;
		&lt;/property&gt;
		&lt;!-- 配置URL --&gt;
		&lt;property name="url"&gt;
			&lt;value&gt;jdbc:mysql://localhost:3306/myhttp?useUnicode=true&amp;characterEncoding=gbk
			&lt;/value&gt;
		&lt;/property&gt;
		&lt;!-- 配置用户 --&gt;
		&lt;property name="username"&gt;
			&lt;value&gt;root&lt;/value&gt;
		&lt;/property&gt;
		&lt;!-- 配置密码 --&gt;
		&lt;property name="password"&gt;
			&lt;value&gt;19921002&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!-- 配置模板类 --&gt;
	&lt;bean id="jdbcTemplate" class="org.springframework.jdbc.core.JdbcTemplate"
		abstract="false" scope="singleton" lazy-init="default" autowire="default"&gt;
		&lt;property name="dataSource"&gt;
			&lt;ref local="dataSource" /&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!-- 配置DAO类 --&gt;
	&lt;bean id="userDAO" class="demoinfo.spring.jdbc.UserDAO" abstract="false"
		scope="singleton" lazy-init="default" autowire="default"&gt;
		&lt;property name="jdbcTemplate"&gt;
			&lt;ref local="jdbcTemplate" /&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

&lt;/beans&gt;
 
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