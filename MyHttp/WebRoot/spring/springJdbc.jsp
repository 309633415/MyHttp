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
  
 <p style="text-indent:2em">��Spring JDBCģ�����У��ʹ�õ���JdbcTemplate������Spring֧��JDBC�ĺ����ࡣJdbcTemplate�����JDBC��Դ�Ĵ����Լ��ͷŹ������Ӷ����˶�JDBC��ʹ�á�<br/>
&nbsp;&nbsp;��JdbcTemplate��ִ�и�������֮ǰ���������������ݿ����ӡ���Spring�����������DataSource��������ɡ�<br/>
&nbsp;&nbsp;DataSource��������Դ�ķ�ʽ�����֣�һ����ʹ��DBCP���ӳأ���һ����ʹ��Spring�Դ���DriveManagerDataSource��<br/>
&nbsp;&nbsp;�����ַ�ʽ������Ҫ����������ã�һ�Ǳ���ָ��JDBC������������ƣ������ṩһ��url�������ṩһ���������ݿ���û��������롣<br/>
&nbsp;&nbsp;Ψһ��ͬ��ֻ����������Դ��class����Ȼ��Ҫ��jar��Ҳ�ǲ�ͬ�ġ�</p>
 <p style="text-indent:2em">DBCP���ӳغ�Spring�Դ���DriveManagerDataSource�ֱ��ǣ�</p>
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
<p style="text-indent:2em">�Ҳ�ʵ������ʹ�õ���DriveManagerDataSource��ʽ�������ݿ⡣<br/>
 &nbsp;&nbsp;���Ĳ�ѯ�����ֱ��ǣ�</p>
 <p style="color:blue">getJdbcTemplate().queryForList(sql);</p>
 &nbsp;&nbsp;���·����ǣ�<br/>
 <p style="color:blue">getJdbcTemplate().update(sql,params,types);</p>
  <p style="text-indent:2em>�ǲ��Ǻܼ򵥣���</p>
  </body>
</html>
