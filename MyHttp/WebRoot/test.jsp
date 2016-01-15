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


<p style="text-indent:2em"><strong>什么是IOC？</strong><br/>
&nbsp;&nbsp;控制反转（Inversion of Control，英文缩写为IoC）是一个重要的面向对象编程的法则来削减计算机程序的耦合问题，也是轻量级的Spring框架的核心。 控制反转一般分为两种类型，依赖注入（Dependency Injection，简称DI）和依赖查找（Dependency Lookup）。依赖注入应用比较广泛。<br/>
&nbsp;&nbsp;从注入的方法上看，依赖注入主要可以划分为三种类型：属性注入（set注入）、构造函数注入和接口注入。由于接口注入需要额外声明一个接口，增加了类的数目，而且它的效果和属性注入并无本质区别，因此我们不提倡采用这种方式。</p>
<p style="text-indent:2em"><strong>三种注入方式的区别：</strong><br/>
&nbsp;&nbsp;1.属性注入方式：对于需要注入的东西比较明确。符合java的设计规则。更适合java开发人员，使用起来更加自然，更加方便。<br/>
&nbsp;&nbsp;2.构造函数注入方式：在类加载的时候，就已经注入依赖的组件。但是若是参数多的话，使用起来不方便。<br/>
&nbsp;&nbsp;3.接口注入：组件需要依赖特定接口的实现，其中的加载接口实现和接口实现的具体对象都是由容器来完成。由于需要额外声明一个接口，增加了类的数目，而且它的效果和属性注入并无本质区别，因此我们不提倡采用这种方式。</p>

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
 1:jar包下载地址：<a href="http://repo.spring.io" target="_blank">spring jar包</a><br/>
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
 
 <p style="text-indent:2em">
 1:导入必要的jar包，新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包。</p>
<p style="text-indent:2em">
2:编写Code<br/>
&nbsp;&nbsp;1>创建数据库hibernate_user_info<br/>
&nbsp;&nbsp;2>新建实体类 User.java和Goods.java<br/>
&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。每个用户可以有多个商品，而一个商品只能对应一个用户。</p>
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
&nbsp;&nbsp;现在要实现两表连接查询，查出每个用户所拥有的商品，并把该用户的信息和其商品信息显示出来。<br/>
&nbsp;&nbsp;使用Hibernate反向生成的实体类分别是Users和Goods。<br/>
&nbsp;&nbsp;3>配置 hibernate.cfg.xml（仅供参考，具体配置自行变换）<br/>
&nbsp;&nbsp;在 src 目录下，新建 hibernate.cfg.xml 文件（配置文件存放的位置要求统一化，命名规范化），其配置如下：
<pre name="code" class="xml">
<?xml version='1.0' encoding='utf-8'?>
<!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd">
<hibernate-configuration>
    <session-factory>
        <!-- Database connection settings -->
        <!-- 表示使用 mysql 数据库驱动类 -->
        <property name="connection.driver_class">com.mysql.jdbc.Driver</property>
        <!-- jdbc 的连接 url 和数据库（使用我们之前新建的 hibernate）-->
        <property name="connection.url">jdbc:mysql://localhost:3306/mynet</property>
        <!-- 数据库用户名 -->
        <property name="connection.username">root</property>
        <!-- 密码（这里为空） -->
        <property name="connection.password"></property>
        <!-- JDBC connection pool (use the built-in) -->
        <!-- <property name="connection.pool_size">1</property>-->
        <!-- 数据库使用的方言 -->
        <property name="dialect">org.hibernate.dialect.MySQLDialect</property>
        <!-- Echo all executed SQL to stdout -->
        <!-- 设置 打印输出 sql 语句 为真 -->
        <property name="show_sql">true</property>
        <!-- 设置格式为 sql -->
        <property name="format_sql">true</property>
        <!-- 第一次加载 hibernate 时根据实体类自动建立表结构，以后自动更新表结构 -->
        <property name="hbm2ddl.auto">update</property>         
        <!-- 映射文件 -->
        <mapping resource="demoinfo/hibernate/relationship/pojo/User.hbm.xml" /> 
        <mapping resource="demoinfo/hibernate/relationship/pojo/Goods.hbm.xml" />  
    </session-factory>
</hibernate-configuration>
</pre>
注：<1>对于MySql查询url端口号，可以通过下面的命令来查看:show variables like 'port';<br/>
&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;<br/>
&nbsp;&nbsp;<2>在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下
<pre name="code" class="java">
Configuration cfg=newConfiguration().configure("hibernate/hibernate.cfg.xml");  //实例化Configuration并加载hibernate.cfg.xml文件  
</pre>&nbsp;&nbsp;4>配置 User.hbm.xml和Goods.hbm.xml<br/>
&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。<br/>
<pre name="code" class="xml">
<?xml version="1.0"?>
<!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
        "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">
<!-- 映射对应的package -->
<hibernate-mapping package="demoinfo.hibernate.relationship.pojo">
    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->
    <class name="User" table="hibernate_user_info">
        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->
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
<!-- 映射对应的package -->
<hibernate-mapping package="demoinfo.hibernate.relationship.pojo">
     <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->
    <class name="Goods" table="hibernate_goods_info">
         <!-- id主键 和其他属性对应表中相应的字段（这些都是在 Goods.java 实体类中定义的） -->
        <id name="id" column="goods_id" ></id>
        <property name="goodsname" column="goods_goodsname"></property>
        <property name="userId" column="goods_userId"></property>
   </class>
</hibernate-mapping>
</pre>
&nbsp;&nbsp;5>实现语句<br/>
&nbsp;&nbsp;有两种方式：<br/>
&nbsp;&nbsp;（1）使用传统方式：<br/>
<pre name="code" class="java">
String hql="select u.userame,g.goodsname from User u, Goods g where u.id=g.userId";
</pre>
&nbsp;&nbsp;根据这个查询语句，调用query.list()方法得到一个List值，这个List中的每一个值都是Object[]类型的，里面包含了查询出来的所有值，剩下的自个儿去处理就行了<br/>
&nbsp;&nbsp;（2）增加一个映射类<br/>
&nbsp;&nbsp;增加一个映射类UserVoGoods.java，添加需要查询的信息相关的所有属性，本例中添加username, goodsame。并为这几个属性添加setter和getter方法，增加构造函数，参数与这两个属性对应，那么可以用hql查询方式：<br/>
<pre name="code" class="java">
 String hql="select new demoinfo.hibernate.pojo.UsersVoGoods(u.id,g.id,u.username, g.goodsname) from User u,Goods g where u.id=g.userId"; 
</pre>
&nbsp;&nbsp;query.list()的返回值List中的值都是UserVoGoods型的，直接使用get()就能获取。<br/>
&nbsp;&nbsp;其实不增加映射类也是可以的，只需要在User.java实体类里增加一个构造函数，函数参数还是需要的所有字段，并为这些参数中User实体原来没有的字段添加属性和getter() setter()即可。<br/>
&nbsp;&nbsp;创建Test运行<br/>
<pre name="code" class="java">
public class QueryLink {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
    	AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        // hibernate 实现多表连接查询 查询结果映射到自定义类中
        String hql="select new demoinfo.hibernate.pojo.UserVoGoods(u.id,g.id,u.username, g.goodsname) from User u,Goods g where u.id=g.userId";  
        // 利用 session 建立 query  
        Query query = session.createQuery(hql);  
        // 序列化 query 的结果为一个 list 集合  
        List&lt;UserVoGoods&gt; list = query.list();  
        // 打印每一个 User 信息（这里只打印了名字，你也可以打印其他信息）  
        for (UserVoGoods li : list) {  
            System.out.println( "用户名："+li.getUsername() +"  商品名："+li.getGoodsname() );  
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