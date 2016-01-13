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
<p style="text-indent:2em">��ͳ��Java��̨���ݿ������䲽��ǳ���ζ����ظ��Ͷ��ر�ࡣSpring���JDBC������������¶�JDBC���з�װ�������˿�����ÿ�ζ������ظ��ġ���ͨ�Ŀ����������о���ȥ�������ҵ���߼���</p>
<p style="text-indent:2em">��Spring API���ṩ���ĸ����������Spring JDBC���������Ƕ���org.springframework.jdbc���£��ֱ���:<br/>
&nbsp;&nbsp;1��core<br/>
&nbsp;&nbsp;�����İ�����������JDBC�ĺ��Ĺ��ܡ��˰����кܶ���Ҫ���࣬������JdbcTemplate�ࡢSimpleJdbcInsert�࣬SimpleJdbcCall�࣬�Լ�NamedParameterJdbcTemplate�ࡣ<br/>
&nbsp;&nbsp;2��datasource<br/>
&nbsp;&nbsp;������Դ������������Դ��ʵ�ù����ࡣ���ж�������Դ��ʵ�֣�������JavaEE�����ⲿ����JDBC���롣<br/>
&nbsp;&nbsp;3��object<br/>
&nbsp;&nbsp;������������������ķ�ʽ�������ݿ⡣������ִ�в�ѯ�����ؽ����Ϊҵ����������������ݱ���к�ҵ����������֮��ӳ���ѯ�����<br/>
&nbsp;&nbsp;4��support<br/>
&nbsp;&nbsp;��֧�ְ�����core����object����֧���ࡣ�����ṩ���쳣ת�����ܵ�SQLException�ࡣ</p>
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
&nbsp;&nbsp;����ʹ��mysql���ݿ⣬�򵥵Ĵ���һ�ű�Ȼ��ͨ��Spring��������Դ����ȡ�ñ��е�����</br>
&nbsp;&nbsp;Ȼ�󴴽����ݿ������UserDAO������������ʾ��</br>
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
&nbsp;&nbsp;ʵ�ֲ�����TestJDBC</br>
  <pre  name="code" class="java">
package demoinfo.spring.jdbc;

import java.util.Iterator;
import java.util.Map;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestJDBC {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args){
		//���Spring�ж����Beanʵ��(����)
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