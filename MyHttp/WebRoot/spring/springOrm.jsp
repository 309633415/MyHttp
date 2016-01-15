<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SpringOrm</title>
    
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

 <p style="text-indent:2em">为了让开发程序更容易,到现在为止,已经有很多ORM框架了,例如:JPA,JDO,Hibernate,Mybatis(之前版本是IBatis)等等。也正因为已经有这么多优秀的ORM框架，Spring团队并没有自己开发一套ORM框架，而是对这些框架都进行了支持，让这些框架在Spring环境下可以得到完全的应用。
</p>
 <p style="text-indent:2em">
通常，在Spring环境下使用这些ORM框架时，都会通过一个Template来使用。<br/>
&nbsp;&nbsp;例如Hibernate，在使用Hibernate时（没有在Spring环境下使用Hibernate），会使用到SessionFactory。用一个工具类SessionFactoryUtil，来获取到SessionFactory，然后这样使用：
</p>

<pre style="color:blue">
	Session session=sessionFactory.openSession();
	T t=session.get(xx,clazz);
	return t;
</pre>
<p style="text-indent:2em">在Spring环境下， 我们将SessionFactory作为一个依赖注入到Dao层的Bean中。然后使用上面的代码。<br/>
&nbsp;&nbsp;其实还可以使用Spring为Hibernate的提供的HibernateTemplate来完成上述功能，而不用通过sessionFactory获取session后才去做相关操作。同学们可以去研究研究。
</p>
<p style="text-indent:2em">
小编编写当前系统的时候，一开始只使用到了Hibernate的配置文件，后来添加了Spring框架的时候很方便的把Hibernate的配置文件整合到了Spring配置文件中，最关键的是将SessionFactory作为一个依赖注入，代码如下：
</p>
<pre style="color:blue">
&lt;bean id="sessionFactory"
	class="org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean"&gt;
	&lt;property name="configLocations"&gt;
		&lt;value&gt;classpath:hibernate.cfg.xml&lt;/value&gt;
	&lt;/property&gt;
&lt;/bean&gt;
	</pre>
  </body>
</html>
