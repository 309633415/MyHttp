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
<p>һ.�����4�����ԣ�<br/>
&nbsp;&nbsp;ԭ���ԣ�һ�����������ж����ݿ�Ĳ�����һ�����ɷָ�Ĳ������У�Ҫôȫ����Ҫôȫ������<br/>
&nbsp;&nbsp;һ���ԣ����ݲ�����Ϊ�����ִ�ж��⵽�ƻ���<br/>
&nbsp;&nbsp;�����ԣ�һ�������ִ�У������������񣨽��̣��ĸ��š��Ȳ���ִ�еĸ�����֮�以�����š�<br/>
&nbsp;&nbsp;�־��ԣ�һ������һ���ύ���������ݿ�ĸı佫�����õġ�</p>

<p>��.Spring�����ʵ�ַ�ʽ��<br/>
&nbsp;&nbsp;ʵ�ַ�ʽ�������֣����ʽ����������ʽ�������ʽ��<br/>
&nbsp;&nbsp;����AOP����ʵ�ֵ�����ʽ�������ʵ�ʾ��ǣ��ڷ���ִ��ǰ��������أ�Ȼ����Ŀ�귽����ʼ֮ǰ��������������ִ����Ŀ�귽�������ִ������ύ��ع�����<br/>
&nbsp;&nbsp;����ʽ��������������ַ�ʽ������XML�����ļ��ķ�ʽ����һ������ҵ�񷽷��Ͻ���@Transactionalע�⣬���������Ӧ�õ�ҵ���߼��С�</p>

<p>��.���������ʱ����<br/>
&nbsp;&nbsp;�Ƿ���Ҫ���������������񴫲���Ϊ���Ƶġ������ݲ���Ҫ��ֻΪ��ָ��ֻ�����񣬶����ݵĲ��룬�޸ģ�ɾ������Ҫ��������ˡ�</p>
	
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
&nbsp;&nbsp;Springʹ�� &lt;tx:advice&gt;�� &lt;aop:config&gt; ��������������applicationContext�е������ǣ�</br>
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
   
&lt;!-- ������������� --&gt;      
&lt;bean id="transactionManager" class="org.springframework.orm.hibernate3.HibernateTransactionManager"&gt;          
     &lt;property name="sessionFactory"&gt;              
          &lt;ref bean="sessionFactory"/&gt;  &lt;!-- transactionManager��SetSessionFactory()�����Ĳ���ΪSessionFactory --&gt;                     &lt;/property&gt;      
&lt;/bean&gt;          
  
&lt;!-- ����Щ����Щ����ʹ������ --&gt;      
&lt;aop:config&gt;          
    &lt;aop:pointcut id="allManagerMethod" expression="execution(* demoinfo.hibernate.crud.CrudServiceImpl.*(..))"/&gt;          
    &lt;aop:advisor pointcut-ref="allManagerMethod" advice-ref="txAdvice"/&gt;      
&lt;/aop:config&gt;           
     
  
&lt;!-- ����Ĵ������� --&gt;        
&lt;tx:advice id="txAdvice" transaction-manager="transactionManager"&gt;          
    &lt;tx:attributes&gt;              
        &lt;tx:method name="add*" propagation="REQUIRED"/&gt;              
        &lt;tx:method name="del*" propagation="REQUIRED"/&gt;              
        &lt;tx:method name="update*" propagation="REQUIRED"/&gt;             
        &lt;tx:method name="*" propagation="REQUIRED" read-only="true"/&gt;          
    &lt;/tx:attributes&gt;      
&lt;/tx:advice&gt;  

</pre>
&nbsp;&nbsp;�ύ�����һ����CrudDaoImpl����Ҫ�̳�HibernateDaoSupport</br>
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
&nbsp;&nbsp;��д�����ļ�applicationContext.xml</br>
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
	&lt;!-- �������ӳ� --&gt;
	&lt;bean id="dataSource" 
	class="org.springframework.jdbc.datasource.DriverManagerDataSource"&gt;
		&lt;!-- ������������ --&gt;
		&lt;property name="driverClassName"&gt;
			&lt;value&gt;com.mysql.jdbc.Driver&lt;/value&gt;
		&lt;/property&gt;
		&lt;!-- ����URL --&gt;
		&lt;property name="url"&gt;
			&lt;value&gt;jdbc:mysql://localhost:3306/myhttp?useUnicode=true&amp;characterEncoding=gbk
			&lt;/value&gt;
		&lt;/property&gt;
		&lt;!-- �����û� --&gt;
		&lt;property name="username"&gt;
			&lt;value&gt;root&lt;/value&gt;
		&lt;/property&gt;
		&lt;!-- �������� --&gt;
		&lt;property name="password"&gt;
			&lt;value&gt;19921002&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!-- ����ģ���� --&gt;
	&lt;bean id="jdbcTemplate" class="org.springframework.jdbc.core.JdbcTemplate"
		abstract="false" scope="singleton" lazy-init="default" autowire="default"&gt;
		&lt;property name="dataSource"&gt;
			&lt;ref local="dataSource" /&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!-- ����DAO�� --&gt;
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