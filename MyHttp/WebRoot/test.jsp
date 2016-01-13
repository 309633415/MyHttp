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
<p>一.事务的4个特性：<br/>
&nbsp;&nbsp;原子性：一个事务中所有对数据库的操作是一个不可分割的操作序列，要么全做，要么全部做。<br/>
&nbsp;&nbsp;一致性：数据不会因为事务的执行而遭到破坏。<br/>
&nbsp;&nbsp;隔离性：一个事务的执行，不受其他事务（进程）的干扰。既并发执行的个事务之间互不干扰。<br/>
&nbsp;&nbsp;持久性：一个事务一旦提交，它对数据库的改变将是永久的。</p>

<p>二.Spring事务的实现方式：<br/>
&nbsp;&nbsp;实现方式共有两种：编程式事务处理；声明式事务管理方式。<br/>
&nbsp;&nbsp;基于AOP技术实现的声明式事务管理，实质就是：在方法执行前后进行拦截，然后在目标方法开始之前创建并加入事务，执行完目标方法后根据执行情况提交或回滚事务。<br/>
&nbsp;&nbsp;声明式事务管理又有两种方式：基于XML配置文件的方式；另一个是在业务方法上进行@Transactional注解，将事务规则应用到业务逻辑中。</p>

<p>三.创建事务的时机：<br/>
&nbsp;&nbsp;是否需要创建事务，是由事务传播行为控制的。读数据不需要或只为其指定只读事务，而数据的插入，修改，删除就需要事务管理了。</p>
	
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
&nbsp;&nbsp;Spring使用 &lt;tx:advice&gt;和 &lt;aop:config&gt; 来配置事务，其在applicationContext中的配置是：</br>
   <pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt; 
&lt;beans xmlns="http://www.springframework.org/schema/beans " 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance " 
xmlns:aop="http://www.springframework.org/schema/aop " 
xmlns:tx="http://www.springframework.org/schema/tx " 
xsi:schemaLocation="http://www.springframework.org/schema/beans 
                     http://www.springframework.org/schema/beans/spring-beans.xsd 
                     http://www.springframework.org/schema/tx 
                     http://www.springframework.org/schema/tx/spring-tx.xsd 
                     http://www.springframework.org/schema/aop 
                     http://www.springframework.org/schema/aop/spring-aop.xsd "&gt; 
   
&lt;tx:annotation-driven /&gt;
   
&lt;!-- 配置事务管理器 --&gt;      
&lt;bean id="transactionManager" class="org.springframework.orm.hibernate3.HibernateTransactionManager"&gt;          
     &lt;property name="sessionFactory"&gt;              
          &lt;ref bean="sessionFactory"/&gt;  &lt;!-- transactionManager的SetSessionFactory()方法的参数为SessionFactory --&gt;                     &lt;/property&gt;      
&lt;/bean&gt;          
  
&lt;!-- 哪那些类那些方法使用事务 --&gt;      
&lt;aop:config&gt;          
    &lt;aop:pointcut id="allManagerMethod" expression="execution(* demoinfo.hibernate.crud.CrudServiceImpl.*(..))"/&gt;          
    &lt;aop:advisor pointcut-ref="allManagerMethod" advice-ref="txAdvice"/&gt;      
&lt;/aop:config&gt;           
     
  
&lt;!-- 事务的传播特性 --&gt;        
&lt;tx:advice id="txAdvice" transaction-manager="transactionManager"&gt;          
    &lt;tx:attributes&gt;              
        &lt;tx:method name="add*" propagation="REQUIRED"/&gt;              
        &lt;tx:method name="del*" propagation="REQUIRED"/&gt;              
        &lt;tx:method name="update*" propagation="REQUIRED"/&gt;             
        &lt;tx:method name="*" propagation="REQUIRED" read-only="true"/&gt;          
    &lt;/tx:attributes&gt;      
&lt;/tx:advice&gt;  

</pre>
&nbsp;&nbsp;提交事务的一个类CrudDaoImpl，需要继承HibernateDaoSupport</br>
  <pre  name="code" class="java">
package demoinfo.hibernate.crud;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import demoinfo.hibernate.relationship.pojo.User;

public class CrudDaoImpl extends HibernateDaoSupport implements CrudDao{

	public List&lt;User&gt; findAll() {
		return this.getHibernateTemplate().loadAll(User.class);
	}

	@SuppressWarnings("unchecked")
	public List&lt;User&gt; getUsers(String queryString) {
		return (List&lt;User&gt;)this.getHibernateTemplate().find(queryString);
	}

	public void addUser(User user) {
		this.getHibernateTemplate().save(user);
	}

	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}

	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
	}

	public User getUserById(Integer id) {
			return (User) this.getHibernateTemplate().get(User.class, id);
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