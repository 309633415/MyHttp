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
&nbsp;&nbsp;Hibernate �ṩ��ǿ��Ĳ�ѯϵͳ��ʹ�� Hibernate �ж��ֲ�ѯ��������ѡ�񣺿���ʹ�� Hibernate �� HQL ��ѯ��Ҳ����ʹ��������ѯ����������ʹ��ԭ���� SQL ��ѯ��䡣
HQL ���Կ���ȥ���� SQL������ HQL ��һ���������Ĳ�ѯ��䣬���Ĳ����������ࡢʵ�������Եȣ��� SQL �Ĳ������������ݱ��е����ݿ�������� HQL ����ȫ�������Ĳ�ѯ��䣬��˿���֧�ּ̳С���̬�����ԡ�
ִ��HQL��ѯ�Ĳ��裺</br>
1����� Hibernate Session ����</br>
2����д HQL ���</br>
��1��from �Ӿ�</br>
&nbsp;&nbsp;Hibernate ����򵥵Ĳ�ѯ������ʽ�� from table_name����Ϊ�������������ԣ���������һ��д��from Name(Name��table_name)��ʵ����,���磺</br>
<pre name="code" class="java">
from  User 
</pre>
&nbsp;&nbsp;��ʱ����Ҫʹ�õ�������</br>
<pre name="code" class="java">
 from User as u
</pre>
��2��where �Ӿ�</br>
&nbsp;&nbsp;where �Ӿ������㽫���ص�ʵ���б�ķ�Χ��С�����û��ָ�������������ʹ����������ֱ���������ԣ�</br>
<pre name="code" class="java">
from User where name= 'admin' 
</pre>
&nbsp;&nbsp;���ָ���˱�������Ҫʹ����������������</br>
<pre name="code" class="java">
from User as u where u.name= 'admin' 
</pre>
��3��select �Ӿ�</br>
&nbsp;&nbsp;select�Ӿ��ѡ����Щ���������Է��ص���ѯ������С�</br>
<pre name="code" class="java">
select u.username from User as u
</pre>
������SQL ��ѯ</br>
&nbsp;&nbsp;����ֱ��ʹ��ԭ�� SQL ����ʽ���в�ѯ��</br>
<pre name="code" class="java">
SQLQuery q = session.createSQLQuery("select * from user_info").addEntity(User.class);
</pre>
3������ Session �� createQuery() ����������ѯ����</br>
4����� HQL ����������������� Query �� setXxx ����Ϊ������ֵ</br>
5������ Query ����� list �ȷ������ز�ѯ�����</br>
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
 1:jar�����ص�ַ��<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar��</a>
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON���ϼ�</a>������commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar��
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
 1:�����Ҫ��jar��
&nbsp;&nbsp;�½�һ�� Java ���̣�Ȼ�������Ҫ�� jar �����һ���Ŀ���̣�����ѡ�� Properties->Java Build Path->Libraries->Add External JARs��һ����ҪHibernate.jar����mysql-connector.jar������һЩ����jar��</br>
2:��дCode</br>
��&nbsp;&nbsp;1>�������ݿ�hibernate_user_info</br>
	&nbsp;&nbsp;&nbsp;2>�½�ʵ���� User.java</br>
	&nbsp;&nbsp;&nbsp;���ûʲô̫��˵�ģ�һ���û����У�id��username��password �������ԡ�</br>
<pre name="code" class="java">
public class User {

    private int id;
    private String username;
    private String password;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}
</pre>
&nbsp;&nbsp;3>���� hibernate.cfg.xml�������ο��������������б任��</br>
&nbsp;&nbsp;�� src Ŀ¼�£��½� hibernate.cfg.xml �ļ��������ļ���ŵ�λ��Ҫ��ͳһ���������淶���������������£�
<pre name="code" class="xml">
<?xml version='1.0' encoding='utf-8'?>
<!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd">
<hibernate-configuration>
    <session-factory>
        <!-- Database connection settings -->
        <!-- ��ʾʹ�� mysql ���ݿ������� -->
        <property name="connection.driver_class">com.mysql.jdbc.Driver</property>
        <!-- jdbc ������ url �����ݿ⣨ʹ������֮ǰ�½��� hibernate��-->
        <property name="connection.url">jdbc:mysql://localhost:3306/mynet</property>
        <!-- ���ݿ��û��� -->
        <property name="connection.username">root</property>
        <!-- ���루����Ϊ�գ� -->
        <property name="connection.password"></property>
        <!-- JDBC connection pool (use the built-in) -->
        <!-- <property name="connection.pool_size">1</property>-->
        <!-- ���ݿ�ʹ�õķ��� -->
        <property name="dialect">org.hibernate.dialect.MySQLDialect</property>
        <!-- Echo all executed SQL to stdout -->
        <!-- ���� ��ӡ��� sql ��� Ϊ�� -->
        <property name="show_sql">true</property>
        <!-- ���ø�ʽΪ sql -->
        <property name="format_sql">true</property>
        <!-- ��һ�μ��� hibernate ʱ����ʵ�����Զ�������ṹ���Ժ��Զ����±�ṹ -->
        <property name="hbm2ddl.auto">update</property>         
        <!-- ӳ���ļ� -->
        <mapping resource="demoinfo/hibernate/relationship/pojo/User.hbm.xml" />  
    </session-factory>
</hibernate-configuration>
</pre>
ע��<1>����MySql��ѯurl�˿ںţ�����ͨ��������������鿴:show variables like 'port';</br>
&nbsp;&nbsp;��ѯ�û������������ͨ��������������鿴��select host,user,password from mysql.user;</br>
&nbsp;&nbsp;<2>�ڴ���SessionFactoryʱ,������Ƿ��ڣ����µ�һ�㣬��Ӧ�öԼ����������޸ģ��Է��Ҳ��������ļ�����������
<pre name="code" class="java">
Configuration cfg=newConfiguration().configure("hibernate/hibernate.cfg.xml");  //ʵ����Configuration������hibernate.cfg.xml�ļ�  
</pre>
&nbsp;&nbsp;4>���� User.hbm.xml</br>
&nbsp;&nbsp;һ��ʵ�����Ӧһ��ӳ���ļ�����λ��ͬһ������package���¡�</br>
<pre name="code" class="xml">
<?xml version="1.0"?>
<!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
        "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">
<!-- ӳ���Ӧ�� package -->
<hibernate-mapping package="demoinfo.hibernate.relationship.pojo.User">
    <!-- ʵ��������ݿ��еı��Ӧ�����û����������½��� -->
    <class name="User" table="hibernate_user_info">
        <!-- id���� ���������Զ�Ӧ������Ӧ���ֶΣ���Щ������ User.java ʵ�����ж���ģ� -->
        <id name="id" column="user_id"/>
        <property name="username" column="user_username"></property>
        <property name="password" column="user_password"></property>
    </class>
</hibernate-mapping>
</pre>
&nbsp;&nbsp;5>����Test��������</br>
<pre name="code" class="java">
public class CustomTest {
	@SuppressWarnings("unchecked")
    public static void main(String[] args) {
    	AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        // 1. ��ͨ��ѯ  
        Query q = session.createQuery(" from User as u");  
        
        // 2. ������ѯ  
        //Query q = session.createQuery(" from User as u where u.username = ?");  
        
        // 3. ԭ�� SQL ��ѯ  
        //SQLQuery q = session.createSQLQuery("select * from hibernate_user_info").addEntity(User.class); 
        
        /* 
        // 4.criteria ��ѯ  
       	//����criteria
        Criteria q = session.createCriteria(User.class);
        //��Ӳ�ѯ����
        Criterion cc = Restrictions.between("id", 1, 3); 
        Criterion cc1 = Restrictions.idEq(2);     
        q.add(cc); 
        q.add(cc1);
        //������ҳ,�������ǰ���д����,д��Ҳ�Ƚ����׵�,�Լ���.  
        // q.setFirstResult(0);  
        //q.setMaxResults(10);          
         */      
        List&lt;User&gt; list = q.list();  
        for (User e : list) {  
            System.out.println("username: " + e.getUsername() + "  , password: " + e.getPassword());  
        }   
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
    }
}
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