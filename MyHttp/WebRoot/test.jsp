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
<p style="text-indent:2em">ʲô��Quartz��<br/>
&nbsp;&nbsp;Quartz��һ��ǿ�����ҵ��������ȿ�ܡ�����������Ա���ض��崥�����ĵ���ʱ������ɶԴ�������������й���ӳ�䡣���⣬Quartz�ṩ�˵������л����ĳ־û����ƣ����Ա��沢�ᷢ�����ֳ�����ʹϵͳ����Ϲرգ���������ֳ����ݲ����ᶪʧ��Spring�м̳в�����Quartz��
</p>
<p style="text-indent:2em">
ʲô��ORM��<br/>
&nbsp;&nbsp;ORM[Object-Relation-Mapping]�����ϵӳ�䡣��������OO����Ѿ���Ϊ��ҵ��������������������������ϵ�����ݿ�Ҳ��Ϊ��ҵ��Ӧ�û��������ô�����ݵ��������ݴ洢ϵͳ��ͬ��������һ������ʵ�ʱ����һObject�������ʽ���֣�������һ�־��ǰ������ڴ����־û��洢��Ӳ���ļ��ϡ�<br/>
&nbsp;&nbsp;�ڴ��еĶ���֮����ڹ����ͼ̳й�ϵ���������ݿ��У���ϵ�����޷�ֱ�ӱ���Զ�����ͼ̳й�ϵ����ˣ�����-��ϵӳ��(ORM)ϵͳһ�����м������ʽ���ڣ���Ҫʵ�ֳ�����󵽹�ϵ���ݿ����ݵ�ӳ�䡣<br/>
&nbsp;&nbsp;Ŀǰ������ORM�����JPA,JDO,Hibernate,Mybatis��</p>
<p style="text-indent:2em">
Spring���֧�ָ���ORM��ܣ�<br/>
&nbsp;&nbsp;Spring֧��ORM��ܵķ����кܶ࣬ͨ������Spring������ʹ����ЩORM���ʱ������ͨ��һ��Template��ʹ�á�<br/>
&nbsp;&nbsp;����Hibernate����ʹ��Hibernateʱ��û����Spring������ʹ��Hibernate������ʹ�õ�SessionFactory����һ��������SessionFactoryUtil������ȡ��SessionFactory��
��Spring�����£� ���ǽ�SessionFactory��Ϊһ������ע�뵽Dao���Bean�С�</p>

<p style="text-indent:2em">
Spring����ORM���ʱ������������ĸ���?<br/>
&nbsp;&nbsp;Spring����ORM���ʱ��������õ�����ӦORM��ܵ��������������Hibernate��Ӧ��HibernateTransactionManager��JPA��Ӧ��JpaTransactionManager�ȡ����Ϲ����������Spring����������ύ�������ύǰִ���������²������乤��ԭ���ǲ���AOP��̵�ԭ�������п��ơ�
</p>

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
 1:jar�����ص�ַ��<a href="http://repo.spring.io" target="_blank">spring jar��</a><br/>
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
 
<p style="text-indent:2em">1:�����Ҫ��jar�����½�һ�� Java ���̣�Ȼ�������Ҫ�� jar �����һ���Ŀ���̣�����ѡ�� Properties->Java Build Path->Libraries->Add External JARs��һ����ҪHibernate.jar����mysql-connector.jar������һЩ����jar��</p>
<p style="text-indent:2em">2:��дCode<br/>
��&nbsp;&nbsp;1>�������ݿ�hibernate_user_info<br/>
	&nbsp;&nbsp;2>�½�ʵ���� User.java<br/>
	&nbsp;&nbsp;���ûʲô̫��˵�ģ�һ���û����У�id��username��password �������ԡ�</p>
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
&nbsp;&nbsp;3>���� hibernate.cfg.xml�������ο��������������б任��<br/>
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
        <mapping resource="MyHttp/test/hibernate/relationship/pojo/User.hbm.xml"/>
    </session-factory>
</hibernate-configuration>
</pre>
&nbsp;&nbsp;ע������MySql��ѯurl�˿ںţ�����ͨ��������������鿴:show variables like 'port';<br/>
&nbsp;&nbsp;��ѯ�û������������ͨ��������������鿴��select host,user,password from mysql.user;<br/>
&nbsp;&nbsp;�ڴ���SessionFactoryʱ,������Ƿ��ڣ����µ�һ�㣬��Ӧ�öԼ����������޸ģ��Է��Ҳ��������ļ�����������:
<pre name="code" class="java">
Configuration cfg=newConfiguration().configure("hibernate/hibernate.cfg.xml");  //ʵ����Configuration������hibernate.cfg.xml�ļ�  
</pre>
&nbsp;&nbsp;4>���� User.hbm.xml<br/>
&nbsp;&nbsp;һ��ʵ�����Ӧһ��ӳ���ļ�����λ��ͬһ������package���¡�<br/>
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
&nbsp;&nbsp;5>����Test��������<br/>
<pre name="code" class="java">
public class Test {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
        // ��ȡ Hibernate ������Ϣ
        Configuration configuration = new Configuration().configure();
        // ���� configuration ���� sessionFactory
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        // ���� session���൱�ڿ��� JDBC �� connection��
        Session session = sessionFactory.openSession();
        // �����������������
        session.beginTransaction();
        // �½����󣬲���ֵ
        User user = new User();
        user.setId(1);
        user.setUsername("admin");
        user.setPassword("admin");
        // �������
        session.save(user);
        // �ύ����
        session.getTransaction().commit();
        // �ر� session �� sessionFactory
        session.close();
        sessionFactory.close();
    }
}
</pre>
&nbsp;&nbsp;ע��1>���ϵĴ���������������̣����ڹ�˾ʹ�õĿ�ܱ����ϻ���ֵ��ֻ�����XXXDao.sava��user��;<br/>
&nbsp;&nbsp;2>ͨ��JPAע��ķ�ʽ�������ܽ��ڣ����͵ڣ���������һ�𣮴������£�<br/>
<pre name="code" class="java">
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Table(name="hibernate_user_info")
// ���ݿ���Ĭ�ϻ��Ӧ����ͬ���� Table
// ���Ҫ�޸� Table ����ʹ�� @Table(name="")
// "" ��Ϊ�Զ���� Table ��
public class User {
    private int id;
    private String username;
    private String password;
    @Id
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
���������������

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