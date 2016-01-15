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
<p style="text-indent:2em">什么是Quartz？<br/>
&nbsp;&nbsp;Quartz是一个强大的企业级任务调度框架。它允许开发人员灵活地定义触发器的调度时间表，并可对触发器和任务进行关联映射。此外，Quartz提供了调度运行环境的持久化机制，可以保存并会发调度现场，即使系统因故障关闭，任务调度现场数据并不会丢失。Spring中继承并简化了Quartz。
</p>
<p style="text-indent:2em">
什么是ORM？<br/>
&nbsp;&nbsp;ORM[Object-Relation-Mapping]对象关系映射。面向对象的OO编程已经成为企业级开发中主流开发方法，而关系型数据库也成为企业级应用环境中永久存放数据的主流数据存储系统。同样的数据一个是在实际编程中一Object面向对象方式体现，而另外一种就是把这种内存对象持久化存储到硬盘文件上。<br/>
&nbsp;&nbsp;内存中的对象之间存在关联和继承关系，而在数据库中，关系数据无法直接表达多对多关联和继承关系。因此，对象-关系映射(ORM)系统一般以中间件的形式存在，主要实现程序对象到关系数据库数据的映射。<br/>
&nbsp;&nbsp;目前主流的ORM框架有JPA,JDO,Hibernate,Mybatis等</p>
<p style="text-indent:2em">
Spring如何支持各种ORM框架？<br/>
&nbsp;&nbsp;Spring支持ORM框架的方法有很多，通常，在Spring环境下使用这些ORM框架时，都会通过一个Template来使用。<br/>
&nbsp;&nbsp;例如Hibernate，在使用Hibernate时（没有在Spring环境下使用Hibernate），会使用到SessionFactory。用一个工具类SessionFactoryUtil，来获取到SessionFactory。
在Spring环境下， 我们将SessionFactory作为一个依赖注入到Dao层的Bean中。</p>

<p style="text-indent:2em">
Spring整合ORM框架时，事务管理用哪个类?<br/>
&nbsp;&nbsp;Spring整合ORM框架时事务管理用的是相应ORM框架的事务管理器类如Hibernate对应于HibernateTransactionManager，JPA对应于JpaTransactionManager等。整合过后可配置由Spring控制事务的提交。事务提交前执行两个更新操作。其工作原理是采用AOP编程的原理来进行控制。
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
 
<p style="text-indent:2em">1:导入必要的jar包，新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包</p>
<p style="text-indent:2em">2:编写Code<br/>
　&nbsp;&nbsp;1>创建数据库hibernate_user_info<br/>
	&nbsp;&nbsp;2>新建实体类 User.java<br/>
	&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。</p>
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
        <mapping resource="MyHttp/test/hibernate/relationship/pojo/User.hbm.xml"/>
    </session-factory>
</hibernate-configuration>
</pre>
&nbsp;&nbsp;注：对于MySql查询url端口号，可以通过下面的命令来查看:show variables like 'port';<br/>
&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;<br/>
&nbsp;&nbsp;在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下:
<pre name="code" class="java">
Configuration cfg=newConfiguration().configure("hibernate/hibernate.cfg.xml");  //实例化Configuration并加载hibernate.cfg.xml文件  
</pre>
&nbsp;&nbsp;4>配置 User.hbm.xml<br/>
&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。<br/>
<pre name="code" class="xml">
<?xml version="1.0"?>
<!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
        "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">
<!-- 映射对应的 package -->
<hibernate-mapping package="demoinfo.hibernate.relationship.pojo.User">
    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->
    <class name="User" table="hibernate_user_info">
        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->
        <id name="id" column="user_id"/>
        <property name="username" column="user_username"></property>
        <property name="password" column="user_password"></property>
    </class>
</hibernate-mapping>
</pre>
&nbsp;&nbsp;5>创建Test测试运行<br/>
<pre name="code" class="java">
public class Test {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
        // 获取 Hibernate 配置信息
        Configuration configuration = new Configuration().configure();
        // 根据 configuration 建立 sessionFactory
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        // 开启 session（相当于开启 JDBC 的 connection）
        Session session = sessionFactory.openSession();
        // 创建并开启事务对象
        session.beginTransaction();
        // 新建对象，并赋值
        User user = new User();
        user.setId(1);
        user.setUsername("admin");
        user.setPassword("admin");
        // 保存对象
        session.save(user);
        // 提交事务
        session.getTransaction().commit();
        // 关闭 session 和 sessionFactory
        session.close();
        sessionFactory.close();
    }
}
</pre>
&nbsp;&nbsp;注：1>如上的代码是最基本的流程，现在公司使用的框架表面上或许赋值后只会出现XXXDao.sava（user）;<br/>
&nbsp;&nbsp;2>通过JPA注解的方式，我们能将第２步和第４步整合在一起．代码如下：<br/>
<pre name="code" class="java">
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Table(name="hibernate_user_info")
// 数据库中默认会对应生成同名的 Table
// 如果要修改 Table 名，使用 @Table(name="")
// "" 内为自定义的 Table 名
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
其他步骤基本不变

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