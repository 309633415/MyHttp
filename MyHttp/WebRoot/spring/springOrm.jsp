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

 <p style="text-indent:2em">Ϊ���ÿ������������,������Ϊֹ,�Ѿ��кܶ�ORM�����,����:JPA,JDO,Hibernate,Mybatis(֮ǰ�汾��IBatis)�ȵȡ�Ҳ����Ϊ�Ѿ�����ô�������ORM��ܣ�Spring�ŶӲ�û���Լ�����һ��ORM��ܣ����Ƕ���Щ��ܶ�������֧�֣�����Щ�����Spring�����¿��Եõ���ȫ��Ӧ�á�
</p>
 <p style="text-indent:2em">
ͨ������Spring������ʹ����ЩORM���ʱ������ͨ��һ��Template��ʹ�á�<br/>
&nbsp;&nbsp;����Hibernate����ʹ��Hibernateʱ��û����Spring������ʹ��Hibernate������ʹ�õ�SessionFactory����һ��������SessionFactoryUtil������ȡ��SessionFactory��Ȼ������ʹ�ã�
</p>

<pre style="color:blue">
	Session session=sessionFactory.openSession();
	T t=session.get(xx,clazz);
	return t;
</pre>
<p style="text-indent:2em">��Spring�����£� ���ǽ�SessionFactory��Ϊһ������ע�뵽Dao���Bean�С�Ȼ��ʹ������Ĵ��롣<br/>
&nbsp;&nbsp;��ʵ������ʹ��SpringΪHibernate���ṩ��HibernateTemplate������������ܣ�������ͨ��sessionFactory��ȡsession���ȥ����ز�����ͬѧ�ǿ���ȥ�о��о���
</p>
<p style="text-indent:2em">
С���д��ǰϵͳ��ʱ��һ��ʼֻʹ�õ���Hibernate�������ļ������������Spring��ܵ�ʱ��ܷ���İ�Hibernate�������ļ����ϵ���Spring�����ļ��У���ؼ����ǽ�SessionFactory��Ϊһ������ע�룬�������£�
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
