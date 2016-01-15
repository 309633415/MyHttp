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


<p style="text-indent:2em"><strong>ʲô��IOC��</strong><br/>
&nbsp;&nbsp;���Ʒ�ת��Inversion of Control��Ӣ����дΪIoC����һ����Ҫ����������̵ķ�������������������������⣬Ҳ����������Spring��ܵĺ��ġ� ���Ʒ�תһ���Ϊ�������ͣ�����ע�루Dependency Injection�����DI�����������ң�Dependency Lookup��������ע��Ӧ�ñȽϹ㷺��<br/>
&nbsp;&nbsp;��ע��ķ����Ͽ�������ע����Ҫ���Ի���Ϊ�������ͣ�����ע�루setע�룩�����캯��ע��ͽӿ�ע�롣���ڽӿ�ע����Ҫ��������һ���ӿڣ������������Ŀ����������Ч��������ע�벢�ޱ�������������ǲ��ᳫ�������ַ�ʽ��</p>
<p style="text-indent:2em"><strong>����ע�뷽ʽ������</strong><br/>
&nbsp;&nbsp;1.����ע�뷽ʽ��������Ҫע��Ķ����Ƚ���ȷ������java����ƹ��򡣸��ʺ�java������Ա��ʹ������������Ȼ�����ӷ��㡣<br/>
&nbsp;&nbsp;2.���캯��ע�뷽ʽ��������ص�ʱ�򣬾��Ѿ�ע��������������������ǲ�����Ļ���ʹ�����������㡣<br/>
&nbsp;&nbsp;3.�ӿ�ע�룺�����Ҫ�����ض��ӿڵ�ʵ�֣����еļ��ؽӿ�ʵ�ֺͽӿ�ʵ�ֵľ������������������ɡ�������Ҫ��������һ���ӿڣ������������Ŀ����������Ч��������ע�벢�ޱ�������������ǲ��ᳫ�������ַ�ʽ��</p>

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
 
 <p style="text-indent:2em">
 1:�����Ҫ��jar�����½�һ�� Java ���̣�Ȼ�������Ҫ�� jar �����һ���Ŀ���̣�����ѡ�� Properties->Java Build Path->Libraries->Add External JARs��һ����ҪHibernate.jar����mysql-connector.jar������һЩ����jar����</p>
<p style="text-indent:2em">
2:��дCode<br/>
&nbsp;&nbsp;1>�������ݿ�hibernate_user_info<br/>
&nbsp;&nbsp;2>�½�ʵ���� User.java��Goods.java<br/>
&nbsp;&nbsp;���ûʲô̫��˵�ģ�һ���û����У�id��username��password �������ԡ�ÿ���û������ж����Ʒ����һ����Ʒֻ�ܶ�Ӧһ���û���</p>
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
<pre name="code" class="java">
public class Goods {  
    private int id;  
    private String goodsname;  
    private String userId;  
  
    public int getId() {  
        return id;  
    }  
    public void setId(int id) {  
        this.id = id;  
    }  
    public String getGoodsname() {  
        return goodsname;  
    }  
    public void setGoodsname(String goodsname) {  
        this.goodsname = goodsname;  
    }  
    public String getUserId() {  
        return userId;  
    }  
    public void setUserId(String userId) {  
        this.userId = userId;  
    }  
}  
</pre>
&nbsp;&nbsp;����Ҫʵ���������Ӳ�ѯ�����ÿ���û���ӵ�е���Ʒ�����Ѹ��û�����Ϣ������Ʒ��Ϣ��ʾ������<br/>
&nbsp;&nbsp;ʹ��Hibernate�������ɵ�ʵ����ֱ���Users��Goods��<br/>
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
        <mapping resource="demoinfo/hibernate/relationship/pojo/User.hbm.xml" /> 
        <mapping resource="demoinfo/hibernate/relationship/pojo/Goods.hbm.xml" />  
    </session-factory>
</hibernate-configuration>
</pre>
ע��<1>����MySql��ѯurl�˿ںţ�����ͨ��������������鿴:show variables like 'port';<br/>
&nbsp;&nbsp;��ѯ�û������������ͨ��������������鿴��select host,user,password from mysql.user;<br/>
&nbsp;&nbsp;<2>�ڴ���SessionFactoryʱ,������Ƿ��ڣ����µ�һ�㣬��Ӧ�öԼ����������޸ģ��Է��Ҳ��������ļ�����������
<pre name="code" class="java">
Configuration cfg=newConfiguration().configure("hibernate/hibernate.cfg.xml");  //ʵ����Configuration������hibernate.cfg.xml�ļ�  
</pre>&nbsp;&nbsp;4>���� User.hbm.xml��Goods.hbm.xml<br/>
&nbsp;&nbsp;һ��ʵ�����Ӧһ��ӳ���ļ�����λ��ͬһ������package���¡�<br/>
<pre name="code" class="xml">
<?xml version="1.0"?>
<!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
        "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">
<!-- ӳ���Ӧ��package -->
<hibernate-mapping package="demoinfo.hibernate.relationship.pojo">
    <!-- ʵ��������ݿ��еı��Ӧ�����û����������½��� -->
    <class name="User" table="hibernate_user_info">
        <!-- id���� ���������Զ�Ӧ������Ӧ���ֶΣ���Щ������ User.java ʵ�����ж���ģ� -->
        <id name="id" column="user_id" ></id>
        <property name="username" column="user_username"></property>
        <property name="password" column="user_password"></property>
   </class>
</hibernate-mapping>
</pre>
<pre name="code" class="xml">
<?xml version="1.0"?>
<!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
        "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">
<!-- ӳ���Ӧ��package -->
<hibernate-mapping package="demoinfo.hibernate.relationship.pojo">
     <!-- ʵ��������ݿ��еı��Ӧ�����û����������½��� -->
    <class name="Goods" table="hibernate_goods_info">
         <!-- id���� ���������Զ�Ӧ������Ӧ���ֶΣ���Щ������ Goods.java ʵ�����ж���ģ� -->
        <id name="id" column="goods_id" ></id>
        <property name="goodsname" column="goods_goodsname"></property>
        <property name="userId" column="goods_userId"></property>
   </class>
</hibernate-mapping>
</pre>
&nbsp;&nbsp;5>ʵ�����<br/>
&nbsp;&nbsp;�����ַ�ʽ��<br/>
&nbsp;&nbsp;��1��ʹ�ô�ͳ��ʽ��<br/>
<pre name="code" class="java">
String hql="select u.userame,g.goodsname from User u, Goods g where u.id=g.userId";
</pre>
&nbsp;&nbsp;���������ѯ��䣬����query.list()�����õ�һ��Listֵ�����List�е�ÿһ��ֵ����Object[]���͵ģ���������˲�ѯ����������ֵ��ʣ�µ��Ը���ȥ���������<br/>
&nbsp;&nbsp;��2������һ��ӳ����<br/>
&nbsp;&nbsp;����һ��ӳ����UserVoGoods.java�������Ҫ��ѯ����Ϣ��ص��������ԣ����������username, goodsame����Ϊ�⼸���������setter��getter���������ӹ��캯�������������������Զ�Ӧ����ô������hql��ѯ��ʽ��<br/>
<pre name="code" class="java">
 String hql="select new demoinfo.hibernate.pojo.UsersVoGoods(u.id,g.id,u.username, g.goodsname) from User u,Goods g where u.id=g.userId"; 
</pre>
&nbsp;&nbsp;query.list()�ķ���ֵList�е�ֵ����UserVoGoods�͵ģ�ֱ��ʹ��get()���ܻ�ȡ��<br/>
&nbsp;&nbsp;��ʵ������ӳ����Ҳ�ǿ��Եģ�ֻ��Ҫ��User.javaʵ����������һ�����캯������������������Ҫ�������ֶΣ���Ϊ��Щ������Userʵ��ԭ��û�е��ֶ�������Ժ�getter() setter()���ɡ�<br/>
&nbsp;&nbsp;����Test����<br/>
<pre name="code" class="java">
public class QueryLink {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
    	AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        // hibernate ʵ�ֶ�����Ӳ�ѯ ��ѯ���ӳ�䵽�Զ�������
        String hql="select new demoinfo.hibernate.pojo.UserVoGoods(u.id,g.id,u.username, g.goodsname) from User u,Goods g where u.id=g.userId";  
        // ���� session ���� query  
        Query query = session.createQuery(hql);  
        // ���л� query �Ľ��Ϊһ�� list ����  
        List&lt;UserVoGoods&gt; list = query.list();  
        // ��ӡÿһ�� User ��Ϣ������ֻ��ӡ�����֣���Ҳ���Դ�ӡ������Ϣ��  
        for (UserVoGoods li : list) {  
            System.out.println( "�û�����"+li.getUsername() +"  ��Ʒ����"+li.getGoodsname() );  
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