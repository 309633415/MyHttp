/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : mynet

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-29 14:45:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '相册名称',
  `description` varchar(400) DEFAULT NULL COMMENT '相册描述',
  `photo` varchar(100) DEFAULT NULL,
  `photoSize` int(11) DEFAULT NULL COMMENT '照片数目',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------

-- ----------------------------
-- Table structure for album_copy
-- ----------------------------
DROP TABLE IF EXISTS `album_copy`;
CREATE TABLE `album_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '相册名称',
  `description` varchar(400) DEFAULT NULL COMMENT '相册描述',
  `photo` varchar(100) DEFAULT NULL,
  `photoSize` int(11) DEFAULT NULL COMMENT '照片数目',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album_copy
-- ----------------------------

-- ----------------------------
-- Table structure for album_copy1
-- ----------------------------
DROP TABLE IF EXISTS `album_copy1`;
CREATE TABLE `album_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '相册名称',
  `description` varchar(400) DEFAULT NULL COMMENT '相册描述',
  `photo` varchar(100) DEFAULT NULL,
  `photoSize` int(11) DEFAULT NULL COMMENT '照片数目',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for album_copy2
-- ----------------------------
DROP TABLE IF EXISTS `album_copy2`;
CREATE TABLE `album_copy2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '相册名称',
  `description` varchar(400) DEFAULT NULL COMMENT '相册描述',
  `photo` varchar(100) DEFAULT NULL,
  `photoSize` int(11) DEFAULT NULL COMMENT '照片数目',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album_copy2
-- ----------------------------

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `flag` bit(1) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app
-- ----------------------------

-- ----------------------------
-- Table structure for bc_order
-- ----------------------------
DROP TABLE IF EXISTS `bc_order`;
CREATE TABLE `bc_order` (
  `obid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ob_salerid` varchar(100) DEFAULT NULL COMMENT '卖方ID',
  `ob_saler` varchar(100) DEFAULT NULL COMMENT '卖方名称',
  `ob_buyerid` varchar(100) DEFAULT NULL COMMENT '买方ID',
  `ob_buyer` varchar(100) DEFAULT NULL COMMENT '买方名称',
  `ob_productid` varchar(100) DEFAULT NULL COMMENT '商品ID',
  `ob_productname` varchar(100) DEFAULT NULL COMMENT '商品ID',
  `ob_temproductid` varchar(100) DEFAULT NULL COMMENT '临时商品ID',
  `ob_temproductname` varchar(100) DEFAULT NULL COMMENT '临时商品名称',
  `ob_ordertime` datetime DEFAULT NULL COMMENT '订单生成时间',
  `ob_status` varchar(100) DEFAULT NULL COMMENT '订单状态 00 未确认  01 已确认 02已付款  03已分配车间 04 生产完毕待配货  05 已配货 06 已完成',
  `ob_logisticid` varchar(100) DEFAULT NULL COMMENT '物流表ID',
  `ob_creatorid` varchar(50) DEFAULT NULL COMMENT '订单创建人ID',
  `ob_creatorName` varchar(50) DEFAULT NULL COMMENT '订单创建人名称',
  PRIMARY KEY (`obid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bc_order
-- ----------------------------

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `commentSize` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `im` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `blogId` (`blogId`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '版块名称',
  `description` varchar(400) DEFAULT NULL COMMENT '板块描述',
  `sequence` int(11) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of board
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `sequence` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for demoinfo
-- ----------------------------
DROP TABLE IF EXISTS `demoinfo`;
CREATE TABLE `demoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `KnowLedgeReady` text,
  `ResourceReady` text,
  `Example` text,
  `Remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of demoinfo
-- ----------------------------
INSERT INTO `demoinfo` VALUES ('23', 'strutsValidDemo', '1:struts提供了一套完整的校验框架，使用校验框架既可以方便地实现表单数据校验，又能够将校验与Action分离。<br/>\r\n2:使用方法Action类必须继承ActionSupport，校验配置文件命名为Xxx-validation.xml（Xxx为Action的类名），该文件和Action在同一个包下<br/>', ' 1:jar包下载地址：<a href=\"http://struts.apache.org/download.cgi\" target=\"_blank\">struts2 jar包</a> （jar包介绍不在多说）', '  <p>1:编写Action的Code，使用校验框架必须继承ActionSupport</p>\r\n   <pre  name=\"code\" class=\"java\">\r\nimport com.opensymphony.xwork2.ActionSupport;\r\n\r\n/**\r\n * 框架校验Action实例\r\n */\r\npublic class ValidationAction  extends ActionSupport{  // 框架校验必须继承ActionSupport\r\n	private static final long serialVersionUID = 1L;\r\n	private String username;\r\n	private String password;\r\n	private String actionInfo;\r\n	public String getUsername() {\r\n		return username;\r\n	}\r\n	public void setUsername(String username) {\r\n		this.username = username;\r\n	}\r\n	public String getPassword() {\r\n		return password;\r\n	}\r\n	public void setPassword(String password) {\r\n		this.password = password;\r\n	}\r\n	public String getActionInfo() {\r\n		return actionInfo;\r\n	}\r\n	public void setActionInfo(String actionInfo) {\r\n		this.actionInfo = actionInfo;\r\n	}\r\n	\r\n	public String checkLogin(){\r\n		//会在执行该法时先进行框架校验 如果失败返回 input\r\n		setActionInfo(\"****************校验框架校验成功****************\");\r\n		return \"success\";\r\n	}\r\n}\r\n\r\n   </pre>\r\n   <p>2:编写展示页面</p>\r\n   <pre name=\"code\" class=\"php\">\r\n   &lt;%@ page  contentType=\"text/html; charset=GBK\"%&gt;\r\n&lt;%@taglib prefix=\"s\" uri=\"/struts-tags\"%&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt; title&gt;框架校验&lt; /title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n&lt;h2&gt;当输入用户名或者密码为空时给予提示&lt; /h2&gt;\r\n&lt div style=\"color:red\"&gt;\r\n&lt; !--显示提示的信息--&gt;\r\n    &lt; s:fielderror &gt; \r\n&lt;/div&gt;\r\n    &lt; s:form action=\"/strut/validationAction\" method=\"post\"&gt;   \r\n       &lt; s:textfield name=\"username\" label=\"用户名\" &gt;\r\n       &lt; s:password name=\"password\" label=\"密码\"&gt;\r\n       &lt; s:submit value=\"提交\"&gt;\r\n    &lt; /s:form&gt;    \r\n&lt; /body&gt;\r\n&lt; /html&gt;\r\n   </pre>\r\n   <p>3:校验文件的配置如下，和Action在同一目录下，请注意命名规则</p>\r\n     <pre  name=\"code\" class=\"xml\">\r\n		<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n		<!DOCTYPE validators PUBLIC \"-//OpenSymphony Group//XWork Validator 1.0.2//EN\" \r\n		\"http://www.opensymphony.com/xwork/xwork-validator-1.0.2.dtd\">\r\n		<!--校验规则定义的根源素-->\r\n		<!--注意框架的命名   ActioName-validation.xml  并且该文件最好和Action在同一个包下-->\r\n		<validators>\r\n			<field name=\"username\">\r\n				<field-validator type=\"requiredstring\">\r\n					<message>Validation框架校验：用户名不能为空</message>\r\n				</field-validator>\r\n			</field>\r\n			<field name=\"password\">\r\n				<field-validator type=\"requiredstring\">\r\n					<message>Validation框架校验：密码不能为空</message>\r\n				</field-validator>\r\n			</field>\r\n		</validators>\r\n\r\n   </pre>\r\n   <p>4:配置文件中加上对应Action</p>\r\n   <pre name=\"code\" class=\"xml\">\r\n   		<!--使用校验框架的action-->\r\n        <action name=\"validationAction\" class=\"demoinfo.struts2.validation.ValidationAction\" method=\"checkLogin\">\r\n<!--        校验框架校验不成功会返回input-->\r\n              <result name=\"input\">/strut/validation/login.jsp</result>\r\n              <result name=\"success\">/common/success.jsp</result>   \r\n        </action>\r\n   </pre>', '');
INSERT INTO `demoinfo` VALUES ('24', 'strutsLoginDemo', '1:MVC思想将一个应用分成三个基本部分：Model（模型）、View（视图）和Controller（控制器），这三个部分以最少的耦合协同工作，从而提高应用的可扩展性\r\n及可维护性。<br/>\r\n2:在Model 2模式下，模型（Model）由JavaBean 充当，视图（View）由JSP页面充当，而控制器（Controller）则由Servlet充当。<br/>\r\n3:个人对MVC理解就一句话：视图层（View）显示数据，控制层（controller）接受Http请求后决定执行怎样的业务动作，对业务的处理代码则在模型层（Model）中实现<br>\r\n(如果有不当之处请指出）<br/>\r\n4：strut2的配置文件为strut2.xml；默认在SRC下。<br/>', '   1:jar包下载地址：<a href=\"http://struts.apache.org/download.cgi\" target=\"_blank\">struts2 jar包</a> （jar包介绍不在多说）', ' <p>1:为web.xml文件添加Strut2的拦截器代码如下</p>\r\n   <pre  name=\"code\" class=\"xml\">\r\n    &lt;filter&gt;\r\n	  &lt;filter-name&gt;struts2&lt;/filter-name&gt;\r\n	  &lt;filter-class&gt;org.apache.struts2.dispatcher.FilterDispatcher&lt;/filter-class&gt;\r\n	&lt;/filter&gt;\r\n	&lt;filter-mapping&gt;\r\n			&lt;filter-name&gt;struts2&lt;/filter-name&gt;\r\n			&lt;url-pattern&gt;/*&lt;/url-pattern&gt;\r\n	&lt;/filter-mapping&gt;\r\n   </pre>\r\n   <p>2:添加Struts2核心包到工程目录的WEB-INF/lib/下</p>\r\n   <p>3:编写Action的Code</p>\r\n   <pre  name=\"code\" class=\"java\">\r\npackage login;\r\n/**\r\n * 登陆简单示例Action\r\n * **/\r\npublic class LoginAction {\r\n\r\n	private String username;\r\n	private String password;\r\n	\r\n	public String getUsername() {\r\n		return username;\r\n	}\r\n	public void setUsername(String username) {\r\n		this.username = username;\r\n	}\r\n	public String getPassword() {\r\n		return password;\r\n	}\r\n	public void setPassword(String password) {\r\n		this.password = password;\r\n	}\r\n	\r\n	public String checkLogin(){\r\n		if(username.trim().equals(\"tom\")&& password.trim().equals(\"123\")){\r\n		  return \"success\";\r\n		}else{\r\n			return \"fail\";\r\n		}\r\n	}\r\n }\r\n   </pre>\r\n   <p>4:编写展示页面</p>\r\n   <pre name=\"code\" class=\"php\">\r\n   &lt;%@ page  contentType=\"text/html; charset=GBK\"%&gt;\r\n&lt;%@taglib prefix=\"s\" uri=\"/struts-tags\"%&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;title&gt;Hello World&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;s:form action=\"checkLogin\" method=\"post\"&gt;            \r\n       &lt;s:textfield name=\"username\" label=\"用户名\" /&gt;\r\n       &lt;s:password name=\"password\" label=\"密码\"/&gt;\r\n       &lt;s:submit value=\"提交\"/&gt;\r\n    &lt;/s:form&gt;    \r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n   </pre>\r\n   <p>5:文件struts.xml的配置,注意该文件在src/下</p>\r\n     <pre  name=\"code\" class=\"xml\">\r\n    &lt;?xml version=\"1.0\" encoding=\"UTF-8\" ?&gt;\r\n&lt;!DOCTYPE struts PUBLIC\r\n    \"-//Apache Software Foundation//DTD Struts Configuration 2.0//EN\"\r\n    \"http://struts.apache.org/dtds/struts-2.0.dtd\"&gt;\r\n\r\n&lt;struts&gt;\r\n    &lt;constant name=\"struts.enable.DynamicMethodInvocation\" value=\"false\" /&gt;\r\n    &lt;constant name=\"struts.devMode\" value=\"false\" /&gt;\r\n    &lt;constant name=\"struts.multipart.saveDir\" value=\"/tmp\"/&gt; \r\n    &lt;include file =\"struts-default.xml\" /&gt;  \r\n    &lt;package name=\"default\"  extends=\"struts-default\"&gt;\r\n&lt;!--       action  name与页面中Form的Action相同  Class 指定对应的Java文件 如果用到了Spring 应该对应Bean-ID method对应Java类中的方法--&gt;\r\n        &lt;action name=\"checkLogin\" class=\"login.LoginAction\" method=\"checkLogin\"&gt;\r\n              &lt;result name=\"fail\"&gt;/common/fail.jsp&lt;/result&gt;\r\n              &lt;result name=\"success\"&gt;/common/success.jsp&lt;/result&gt;   \r\n        &lt;/action&gt;\r\n&lt;!--使用校验框架的action--&gt;\r\n        &lt;action name=\"validationAction\" class=\"validation.ValidationAction\" method=\"checkLogin\"&gt;\r\n&lt;!--        校验框架校验不成功会返回input--&gt;\r\n              &lt;result name=\"input\"&gt;/validation/login.jsp&lt;/result&gt;\r\n              &lt;result name=\"success\"&gt;/common/success.jsp&lt;/result&gt;   \r\n        &lt;/action&gt;\r\n\r\n   \r\n   &lt;/package&gt;\r\n&lt;!-- Add packages here   用include包含子xml文件  指定文件的相对路径就可以了--&gt;\r\n&lt;!--&lt;include file=\"/ch7/ch7.xml\"&gt;&lt;/include&gt;--&gt;\r\n&lt;/struts&gt;\r\n   </pre>', '');
INSERT INTO `demoinfo` VALUES ('25', 'dd', 'dd', 'dd', 'dd', 'dd');
INSERT INTO `demoinfo` VALUES ('26', 'ormCrudDemo', '在Java应用总使用hibernate的步骤：</br>\r\n1创建hibernate的配置文件</br>\r\n2创建持久化类</br>\r\n	&nbsp;&nbsp;1>持久化类符合javabean的规范，包含一些属性，以及与之对应的getxxx()和setxxx()方法。</br>\r\n	&nbsp;&nbsp;2>持久化类有一个id属性，用来唯一标志Person类的每个对象。在面向对象术语中，这个id属性被称为对象标识符</br>\r\n	&nbsp;&nbsp;3>Hibernate要求持久化类必须提供一个不带参数的默认构造方法</br>\r\n	&nbsp;&nbsp;一个SessionFactory实例对应着一个数据存储源，应用从SessionFactory中获得Session实例,Session也被成为持久化管理器，它提供了和持久化相关的操作，如添加、更新、删除、加载和查询对象</br>\r\n	注意：此session非彼session（HttpSession）</br>\r\n	&nbsp;&nbsp;HQL面向的是类（对象）而不是数据库中的表，这是与SQL之间的差别。Session的get的load方法都可以获取相应的持久化对象，如果该对象存在，那么这两个方法的行为是一样的；如果该对象不存在，那么get方法会返回null而load方法则抛出异常,setAutoCommit(boolean autoCommit)：事物是否自动提交,一般设置为false（比如有5组实物，前4组成功，但第5组失败，则必须全部认为失败回滚，若为true则前4组自动提交）</br>\r\n3创建对象-关系映射文件</br>\r\n4通过hibernate API编写访问数据库的代码</br>\r\n\r\n\r\n\r\n', ' 1:jar包下载地址：<a href=\"http://sourceforge.net/projects/hibernate/files/hibernate4/4.1.3.Final/hibernate-release-4.1.3.Final.zip/download \">hibernate jar包</a> （jar包介绍不在多说）', '\r\n1:导入必要的jar包\r\n&nbsp;&nbsp;新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包</br>\r\n2:编写Code</br>\r\n　&nbsp;&nbsp;1>创建数据库hibernate_user_info</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2>新建实体类 User.java</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class User {\r\n\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n&nbsp;&nbsp;3>配置 hibernate.cfg.xml（仅供参考，具体配置自行变换）</br>\r\n&nbsp;&nbsp;在 src 目录下，新建 hibernate.cfg.xml 文件（配置文件存放的位置要求统一化，命名规范化），其配置如下：\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\'1.0\' encoding=\'utf-8\'?>\r\n<!DOCTYPE hibernate-configuration PUBLIC\r\n        \"-//Hibernate/Hibernate Configuration DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd\">\r\n<hibernate-configuration>\r\n    <session-factory>\r\n        <!-- Database connection settings -->\r\n        <!-- 表示使用 mysql 数据库驱动类 -->\r\n        <property name=\"connection.driver_class\">com.mysql.jdbc.Driver</property>\r\n        <!-- jdbc 的连接 url 和数据库（使用我们之前新建的 hibernate）-->\r\n        <property name=\"connection.url\">jdbc:mysql://localhost:3306/mynet</property>\r\n        <!-- 数据库用户名 -->\r\n        <property name=\"connection.username\">root</property>\r\n        <!-- 密码（这里为空） -->\r\n        <property name=\"connection.password\"></property>\r\n        <!-- JDBC connection pool (use the built-in) -->\r\n        <!-- <property name=\"connection.pool_size\">1</property>-->\r\n        <!-- 数据库使用的方言 -->\r\n        <property name=\"dialect\">org.hibernate.dialect.MySQLDialect</property>\r\n        <!-- Echo all executed SQL to stdout -->\r\n        <!-- 设置 打印输出 sql 语句 为真 -->\r\n        <property name=\"show_sql\">true</property>\r\n        <!-- 设置格式为 sql -->\r\n        <property name=\"format_sql\">true</property>\r\n        <!-- 第一次加载 hibernate 时根据实体类自动建立表结构，以后自动更新表结构 -->\r\n        <property name=\"hbm2ddl.auto\">update</property>         \r\n        <!-- 映射文件 -->\r\n        <mapping resource=\"MyHttp/test/hibernate/relationship/pojo/User.hbm.xml\"/>\r\n    </session-factory>\r\n</hibernate-configuration>\r\n</pre>\r\n注：对<1>于MySql查询url端口号，可以通过下面的命令来查看:show variables like \'port\';</br>\r\n&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;</br>\r\n&nbsp;&nbsp;<2>在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下\r\n<pre name=\"code\" class=\"java\">\r\nConfiguration cfg=newConfiguration().configure(\"hibernate/hibernate.cfg.xml\");  //实例化Configuration并加载hibernate.cfg.xml文件  \r\n</pre>\r\n&nbsp;&nbsp;4>配置 User.hbm.xml</br>\r\n&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。</br>\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\"1.0\"?>\r\n<!DOCTYPE hibernate-mapping PUBLIC\r\n        \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\r\n<!-- 映射对应的 package -->\r\n<hibernate-mapping package=\"demoinfo.hibernate.relationship.pojo.User\">\r\n    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->\r\n    <class name=\"User\" table=\"hibernate_user_info\">\r\n        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->\r\n        <id name=\"id\" column=\"user_id\"/>\r\n        <property name=\"username\" column=\"user_username\"></property>\r\n        <property name=\"password\" column=\"user_password\"></property>\r\n    </class>\r\n</hibernate-mapping>\r\n</pre>\r\n&nbsp;&nbsp;5>创建Test测试运行</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class Test {\r\n    @SuppressWarnings(\"unchecked\")\r\n    public static void main(String[] args) {\r\n        // 获取 Hibernate 配置信息\r\n        Configuration configuration = new Configuration().configure();\r\n        // 根据 configuration 建立 sessionFactory\r\n        SessionFactory sessionFactory = configuration.buildSessionFactory();\r\n        // 开启 session（相当于开启 JDBC 的 connection）\r\n        Session session = sessionFactory.openSession();\r\n        // 创建并开启事务对象\r\n        session.beginTransaction();\r\n        // 新建对象，并赋值\r\n        User user = new User();\r\n        user.setId(1);\r\n        user.setUsername(\"admin\");\r\n        user.setPassword(\"admin\");\r\n        // 保存对象\r\n        session.save(user);\r\n        // 提交事务\r\n        session.getTransaction().commit();\r\n        // 关闭 session 和 sessionFactory\r\n        session.close();\r\n        sessionFactory.close();\r\n    }\r\n}\r\n</pre>\r\n注：1>如上的代码是最基本的流程，现在公司使用的框架表面上或许赋值后只会出现XXXDao.sava（user）;</br>\r\n&nbsp;&nbsp;2>通过JPA注解的方式，我们能将第２步和第４步整合在一起．代码如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.Id;\r\n\r\n@Entity\r\n@Table(name=\"hibernate_user_info\")\r\n// 数据库中默认会对应生成同名的 Table\r\n// 如果要修改 Table 名，使用 @Table(name=\"\")\r\n// \"\" 内为自定义的 Table 名\r\npublic class User {\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n    @Id\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n其他步骤基本不变', '1:为web.xml文件添加Strut2的拦截器代码如下\r\n\r\nview plaincopy to clipboardprint?\r\n   <filter>  \r\n  <filter-name>struts2</filter-name>  \r\n  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>  \r\n</filter>  \r\n<filter-mapping>  \r\n        <filter-name>struts2</filter-name>  \r\n        <url-pattern>/*</url-pattern>  \r\n</filter-mapping>  \r\n    \r\n\r\n    <filter>\r\n	  <filter-name>struts2</filter-name>\r\n	  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>\r\n	</filter>\r\n	<filter-mapping>\r\n			<filter-name>struts2</filter-name>\r\n			<url-pattern>/*</url-pattern>\r\n	</filter-mapping>\r\n   \r\n2:添加Struts2核心包到工程目录的WEB-INF/lib/下\r\n\r\n3:编写Action的Code\r\n\r\n');
INSERT INTO `demoinfo` VALUES ('27', 'relationshipDemo', 'Hibernate的主要目的就是是Java程序员可以随心所欲的使用对象编程思维来操纵数据库。所以,一些数据库表的关系我们应该可以通过hibernate实现,比如在数据库中我们常用到的主外键关系,还有一些跟主外键有关系的设置,比如主键的信息被删除,外键关联的信息也要删除等等,所以,Hibernate同样应该实现这种映射关系。', ' 1:jar包下载地址：<a href=\"http://sourceforge.net/projects/hibernate/files/hibernate4/4.1.3.Final/hibernate-release-4.1.3.Final.zip/download \">hibernate jar包</a> （jar包介绍不在多说）', '一对一单向[oneToOne] </br>\r\n一对一关系这里定义了一个Person对象以及一个IDCard对象</br>\r\nPerson类：</br>\r\n   <pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_person\")\r\npublic class Person\r\n{\r\n    private int id;\r\n    private String name;\r\n    private IDCard card;\r\n    \r\n    @OneToOne(mappedBy=\"person\")　　--->　　指定了OneToOne的关联关系，mappedBy同样指定由对方来进行维护关联关系\r\n    public IDCard getCard()\r\n    {\r\n        return card;\r\n    }\r\n    public void setCard(IDCard card)\r\n    {\r\n        this.card = card;\r\n    }\r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n    public String getName()\r\n    {\r\n        return name;\r\n    }\r\n    public void setName(String name)\r\n    {\r\n        this.name = name;\r\n    }\r\n    \r\n}\r\n\r\n</pre>\r\nIDCard类：</br>\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_id_card\")\r\npublic class IDCard\r\n{\r\n    private int id;\r\n    private String no;\r\n    private Person person;\r\n    \r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n    public String getNo()\r\n    {\r\n        return no;\r\n    }\r\n    public void setNo(String no)\r\n    {\r\n        this.no = no;\r\n    }\r\n    @OneToOne　　--->　　OnetoOne指定了一对一的关联关系，一对一中随便指定一方来维护映射关系，这里选择IDCard来进行维护\r\n    @JoinColumn(name=\"pid\")　　--->　　指定外键的名字 pid\r\n    public Person getPerson()\r\n    {\r\n        return person;\r\n    }\r\n    public void setPerson(Person person)\r\n    {\r\n        this.person = person;\r\n    }\r\n}\r\n\r\n</pre>\r\n\r\n注意:在判断到底是谁维护关联关系时，可以通过查看外键，哪个实体类定义了外键，哪个类就负责维护关联关系。</br>\r\n   <pre  name=\"code\" class=\"java\">\r\npublic class User {\r\n\r\n	private Long groupID;\r\n\r\n	@Id\r\n	@Column(name = \"GROUP_ID\", length=1)\r\n	public Long getGroupID() {\r\n		return groupID;\r\n	}\r\n\r\n	public void setGroupID(Long groupID) {\r\n		this.groupID = groupID;\r\n	}\r\n\r\n}\r\n</pre>\r\n\r\n一对多[OneToMany]和多对一[ManyToOne] </br>\r\n这里我们定义了两个实体类，一个是ClassRoom，一个是Student，这两者是一对多的关联关系。</br>\r\nClassRoom类：	</br>\r\n\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_classroom\")\r\npublic class ClassRoom\r\n{\r\n    private int id;\r\n    private String className;\r\n    private Set<Student> students;\r\n    \r\n    public ClassRoom()\r\n    {\r\n        students = new HashSet<Student>();\r\n    }\r\n    \r\n    public void addStudent(Student student)\r\n    {\r\n        students.add(student);\r\n    }\r\n\r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n\r\n    public String getClassName()\r\n    {\r\n        return className;\r\n    }\r\n\r\n    public void setClassName(String className)\r\n    {\r\n        this.className = className;\r\n    }\r\n\r\n    @OneToMany(mappedBy=\"room\")　　--->　　OneToMany指定了一对多的关系，mappedBy=\"room\"指定了由多的那一方来维护关联关系，mappedBy指的是多的一方对1的这一方的依赖的属性，(注意：如果没有指定由谁来维护关联关系，则系统会给我们创建一张中间表)\r\n    @LazyCollection(LazyCollectionOption.EXTRA)　　--->　　LazyCollection属性设置成EXTRA指定了当如果查询数据的个数时候，只会发出一条 count(*)的语句，提高性能\r\n    public Set<Student> getStudents()\r\n    {\r\n        return students;\r\n    }\r\n\r\n    public void setStudents(Set<Student> students)\r\n    {\r\n        this.students = students;\r\n    }\r\n    \r\n}\r\n</pre>\r\n\r\nStudent类：</br>\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_student\")\r\npublic class Student\r\n{\r\n    private int id;\r\n    private String name;\r\n    private int age;\r\n    private ClassRoom room;\r\n    \r\n    @ManyToOne(fetch=FetchType.LAZY)　　---> ManyToOne指定了多对一的关系，fetch=FetchType.LAZY属性表示在多的那一方通过延迟加载的方式加载对象(默认不是延迟加载)\r\n    @JoinColumn(name=\"rid\")　　--->　　通过 JoinColumn 的name属性指定了外键的名称 rid　(注意：如果我们不通过JoinColum来指定外键的名称，系统会给我们声明一个名称)\r\n    public ClassRoom getRoom()\r\n    {\r\n        return room;\r\n    }\r\n    public void setRoom(ClassRoom room)\r\n    {\r\n        this.room = room;\r\n    }\r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n    public String getName()\r\n    {\r\n        return name;\r\n    }\r\n    public void setName(String name)\r\n    {\r\n        this.name = name;\r\n    }\r\n    public int getAge()\r\n    {\r\n        return age;\r\n    }\r\n    public void setAge(int age)\r\n    {\r\n        this.age = age;\r\n    }\r\n    \r\n}\r\n</pre>\r\n多对多[ManyToMany]</br>\r\n多对多这里通常有两种处理方式，一种是通过建立一张中间表，然后由任一一个多的一方来维护关联关系，另一种就是将多对多拆分成两个一对多的关联关系</br>\r\n1.通过中间表由任一一个多的一方来维护关联关系</br>\r\nTeacher类：</br>\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_teacher\")\r\npublic class Teacher\r\n{\r\n    private int id;\r\n    private String name;\r\n    private Set<Course> courses;\r\n    \r\n    public Teacher()\r\n    {\r\n        courses = new HashSet<Course>();\r\n    }\r\n    public void addCourse(Course course)\r\n    {\r\n        courses.add(course);\r\n    }\r\n    \r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n    public String getName()\r\n    {\r\n        return name;\r\n    }\r\n    public void setName(String name)\r\n    {\r\n        this.name = name;\r\n    }\r\n    @ManyToMany(mappedBy=\"teachers\")　　--->　　表示由Course那一方来进行维护\r\n    public Set<Course> getCourses()\r\n    {\r\n        return courses;\r\n    }\r\n    public void setCourses(Set<Course> courses)\r\n    {\r\n        this.courses = courses;\r\n    }\r\n    \r\n}\r\n</pre>\r\nCourse类：</br>\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_course\")\r\npublic class Course\r\n{\r\n    private int id;\r\n    private String name;\r\n    private Set<Teacher> teachers;\r\n    \r\n    public Course()\r\n    {\r\n        teachers = new HashSet<Teacher>();\r\n    }\r\n    public void addTeacher(Teacher teacher)\r\n    {\r\n        teachers.add(teacher);\r\n    }\r\n    @ManyToMany　　　--->　ManyToMany指定多对多的关联关系\r\n    @JoinTable(name=\"t_teacher_course\", joinColumns={ @JoinColumn(name=\"cid\")}, \r\n    inverseJoinColumns={ @JoinColumn(name = \"tid\") })　　--->　　因为多对多之间会通过一张中间表来维护两表直接的关系，所以通过 JoinTable 这个注解来声明，name就是指定了中间表的名字，JoinColumns是一个 @JoinColumn类型的数组，表示的是我这方在对方中的外键名称，我方是Course，所以在对方外键的名称就是 rid，inverseJoinColumns也是一个 @JoinColumn类型的数组，表示的是对方在我这放中的外键名称，对方是Teacher，所以在我方外键的名称就是 tid\r\n    public Set<Teacher> getTeachers()\r\n    {\r\n        return teachers;\r\n    }\r\n\r\n    public void setTeachers(Set<Teacher> teachers)\r\n    {\r\n        this.teachers = teachers;\r\n    }\r\n\r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n\r\n    public String getName()\r\n    {\r\n        return name;\r\n    }\r\n\r\n    public void setName(String name)\r\n    {\r\n        this.name = name;\r\n    }\r\n\r\n}\r\n</pre>\r\n2.将Many-to-Many拆分成两个One-to-Many的映射(Admin、Role、AdminRole)</br>\r\nAdmin类：</br>\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_admin\")\r\npublic class Admin\r\n{\r\n    private int id;\r\n    private String name;\r\n    private Set<AdminRole> ars;\r\n    public Admin()\r\n    {\r\n        ars = new HashSet<AdminRole>();\r\n    }\r\n    public void add(AdminRole ar)\r\n    {\r\n        ars.add(ar);\r\n    }\r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n    public String getName()\r\n    {\r\n        return name;\r\n    }\r\n    public void setName(String name)\r\n    {\r\n        this.name = name;\r\n    }\r\n    @OneToMany(mappedBy=\"admin\")　　--->　　OneToMany关联到了AdminRole这个类，由AdminRole这个类来维护多对一的关系，mappedBy=\"admin\"\r\n    @LazyCollection(LazyCollectionOption.EXTRA)　　\r\n    public Set<AdminRole> getArs()\r\n    {\r\n        return ars;\r\n    }\r\n    public void setArs(Set<AdminRole> ars)\r\n    {\r\n        this.ars = ars;\r\n    }\r\n}\r\n</pre>\r\nRole类：</br>\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_role\")\r\npublic class Role\r\n{\r\n    private int id;\r\n    private String name;\r\n    private Set<AdminRole> ars;\r\n    public Role()\r\n    {\r\n        ars = new HashSet<AdminRole>();\r\n    }\r\n    public void add(AdminRole ar)\r\n    {\r\n        ars.add(ar);\r\n    }\r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n    public String getName()\r\n    {\r\n        return name;\r\n    }\r\n    public void setName(String name)\r\n    {\r\n        this.name = name;\r\n    }\r\n    @OneToMany(mappedBy=\"role\")　　--->　　OneToMany指定了由AdminRole这个类来维护多对一的关联关系，mappedBy=\"role\"\r\n    @LazyCollection(LazyCollectionOption.EXTRA)\r\n    public Set<AdminRole> getArs()\r\n    {\r\n        return ars;\r\n    }\r\n    public void setArs(Set<AdminRole> ars)\r\n    {\r\n        this.ars = ars;\r\n    }\r\n}\r\n</pre>\r\nAdminRole类：</br>\r\n<pre  name=\"code\" class=\"java\">\r\n@Entity\r\n@Table(name=\"t_admin_role\")\r\npublic class AdminRole\r\n{\r\n    private int id;\r\n    private String name;\r\n    private Admin admin;\r\n    private Role role;\r\n    @Id\r\n    @GeneratedValue\r\n    public int getId()\r\n    {\r\n        return id;\r\n    }\r\n    public void setId(int id)\r\n    {\r\n        this.id = id;\r\n    }\r\n    public String getName()\r\n    {\r\n        return name;\r\n    }\r\n    public void setName(String name)\r\n    {\r\n        this.name = name;\r\n    }\r\n    @ManyToOne　　--->　　ManyToOne关联到Admin\r\n    @JoinColumn(name=\"aid\")　　\r\n    public Admin getAdmin()\r\n    {\r\n        return admin;\r\n    }\r\n    public void setAdmin(Admin admin)\r\n    {\r\n        this.admin = admin;\r\n    }\r\n    @ManyToOne　　--->　　\r\n    @JoinColumn(name=\"rid\")\r\n    public Role getRole()\r\n    {\r\n        return role;\r\n    }\r\n    public void setRole(Role role)\r\n    {\r\n        this.role = role;\r\n    }\r\n}\r\n</pre>\r\n小技巧:通过hibernate来进行插入操作的时候，不管是一对多、一对一还是多对多，都只需要记住一点，在哪个实体类声明了外键，就由哪个类来维护关系，在保存数据时，总是先保存的是没有维护关联关系的那一方的数据，后保存维护了关联关系的那一方的数据，如：\r\n<pre  name=\"code\" class=\"java\">\r\n　　　　　　Person p = new Person();\r\n            p.setName(\"xiaoluo\");\r\n            session.save(p);\r\n            \r\n            IDCard card = new IDCard();\r\n            card.setNo(\"1111111111\");\r\n            card.setPerson(p);\r\n            session.save(card);\r\n</pre>\r\n注意fetch = FetchType.EAGER，如果选择LAZY，hibernate在事物结束后会关闭session（好像是session的问题），那么无法在事物之外取到被join出来的记录，会提示session被关闭。 ', null);
INSERT INTO `demoinfo` VALUES ('28', 'ormCrudDeleteDemo', '在Java应用总使用hibernate的步骤：</br>\r\n1创建hibernate的配置文件</br>\r\n2创建持久化类</br>\r\n	&nbsp;&nbsp;1>持久化类符合javabean的规范，包含一些属性，以及与之对应的getxxx()和setxxx()方法。</br>\r\n	&nbsp;&nbsp;2>持久化类有一个id属性，用来唯一标志Person类的每个对象。在面向对象术语中，这个id属性被称为对象标识符</br>\r\n	&nbsp;&nbsp;3>Hibernate要求持久化类必须提供一个不带参数的默认构造方法</br>\r\n	&nbsp;&nbsp;一个SessionFactory实例对应着一个数据存储源，应用从SessionFactory中获得Session实例,Session也被成为持久化管理器，它提供了和持久化相关的操作，如添加、更新、删除、加载和查询对象</br>\r\n	注意：此session非彼session（HttpSession）</br>\r\n	&nbsp;&nbsp;HQL面向的是类（对象）而不是数据库中的表，这是与SQL之间的差别。Session的get的load方法都可以获取相应的持久化对象，如果该对象存在，那么这两个方法的行为是一样的；如果该对象不存在，那么get方法会返回null而load方法则抛出异常,setAutoCommit(boolean autoCommit)：事物是否自动提交,一般设置为false（比如有5组实物，前4组成功，但第5组失败，则必须全部认为失败回滚，若为true则前4组自动提交）</br>\r\n3创建对象-关系映射文件</br>\r\n4通过hibernate API编写访问数据库的代码</br>\r\n\r\n\r\n\r\n', ' 1:jar包下载地址：<a href=\"http://sourceforge.net/projects/hibernate/files/hibernate4/4.1.3.Final/hibernate-release-4.1.3.Final.zip/download \">hibernate jar包</a> （jar包介绍不在多说）', '1:导入必要的jar包\r\n&nbsp;&nbsp;新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包</br>2:编写Code</br>\r\n　&nbsp;&nbsp;1>创建数据库hibernate_user_info</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2>新建实体类 User.java</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class User {\r\n\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n&nbsp;&nbsp;3>配置 hibernate.cfg.xml（仅供参考，具体配置自行变换）</br>\r\n&nbsp;&nbsp;在 src 目录下，新建 hibernate.cfg.xml 文件（配置文件存放的位置要求统一化，命名规范化），其配置如下：\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\'1.0\' encoding=\'utf-8\'?>\r\n<!DOCTYPE hibernate-configuration PUBLIC\r\n        \"-//Hibernate/Hibernate Configuration DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd\">\r\n<hibernate-configuration>\r\n    <session-factory>\r\n        <!-- Database connection settings -->\r\n        <!-- 表示使用 mysql 数据库驱动类 -->\r\n        <property name=\"connection.driver_class\">com.mysql.jdbc.Driver</property>\r\n        <!-- jdbc 的连接 url 和数据库（使用我们之前新建的 hibernate）-->\r\n        <property name=\"connection.url\">jdbc:mysql://localhost:3306/mynet</property>\r\n        <!-- 数据库用户名 -->\r\n        <property name=\"connection.username\">root</property>\r\n        <!-- 密码（这里为空） -->\r\n        <property name=\"connection.password\"></property>\r\n        <!-- JDBC connection pool (use the built-in) -->\r\n        <!-- <property name=\"connection.pool_size\">1</property>-->\r\n        <!-- 数据库使用的方言 -->\r\n        <property name=\"dialect\">org.hibernate.dialect.MySQLDialect</property>\r\n        <!-- Echo all executed SQL to stdout -->\r\n        <!-- 设置 打印输出 sql 语句 为真 -->\r\n        <property name=\"show_sql\">true</property>\r\n        <!-- 设置格式为 sql -->\r\n        <property name=\"format_sql\">true</property>\r\n        <!-- 第一次加载 hibernate 时根据实体类自动建立表结构，以后自动更新表结构 -->\r\n        <property name=\"hbm2ddl.auto\">update</property>         \r\n        <!-- 映射文件 -->\r\n        <mapping resource=\"MyHttp/test/hibernate/relationship/pojo/User.hbm.xml\"/>\r\n    </session-factory>\r\n</hibernate-configuration>\r\n</pre>\r\n注：<1>对于MySql查询url端口号，可以通过下面的命令来查看:show variables like \'port\';</br>\r\n&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;</br>\r\n&nbsp;&nbsp;<2>在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下\r\n<pre name=\"code\" class=\"java\">\r\nConfiguration cfg=newConfiguration().configure(\"hibernate/hibernate.cfg.xml\");  //实例化Configuration并加载hibernate.cfg.xml文件  \r\n</pre>&nbsp;&nbsp;4>配置 User.hbm.xml</br>\r\n&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。</br>\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\"1.0\"?>\r\n<!DOCTYPE hibernate-mapping PUBLIC\r\n        \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\r\n<!-- 映射对应的 package -->\r\n<hibernate-mapping package=\"demoinfo.hibernate.relationship.pojo.User\">\r\n    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->\r\n    <class name=\"User\" table=\"hibernate_user_info\">\r\n        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->\r\n        <id name=\"id\" column=\"user_id\"/>\r\n        <property name=\"username\" column=\"user_username\"></property>\r\n        <property name=\"password\" column=\"user_password\"></property>\r\n    </class>\r\n</hibernate-mapping>\r\n</pre>\r\n&nbsp;&nbsp;5>创建Test测试运行</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class Test {\r\n    @SuppressWarnings(\"unchecked\")\r\n    public static void main(String[] args) {\r\n        Configuration configuration = new Configuration().configure();\r\n        SessionFactory sessionFactory = configuration.buildSessionFactory();\r\n        Session session = sessionFactory.openSession();\r\n        session.beginTransaction();\r\n        StringBuilder hq = new StringBuilder();\r\n        // 对比查找时候的操作来看，因为我们需要修改指定 name 的用户密码，后面需要再添加查询条件\r\n        // 注意 from、where 的空格，\":name\" 表示一个参数\r\n        hq.append(\"from \").append(User.class.getName()).append(\" where user_username=:name\");\r\n        Query query = session.createQuery(hq.toString());\r\n        // 这里就设定参数 name 的值为\"user1\"\r\n        query.setString(\"name\",\"user1\" ); \r\n        List<User> users = query.list();\r\n        for (User user : users) {\r\n            // 注意这里是 delete\r\n            session.delete(user);\r\n        }\r\n        session.getTransaction().commit();\r\n        session.close();\r\n        sessionFactory.close();\r\n    }\r\n</pre>\r\n注：1>如上的代码是最基本的流程</br>\r\n&nbsp;&nbsp;2>通过JPA注解的方式，我们能将第２步和第４步整合在一起．代码如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.Id;\r\n\r\n@Entity\r\n@Table(name=\"hibernate_user_info\")\r\n// 数据库中默认会对应生成同名的 Table\r\n// 如果要修改 Table 名，使用 @Table(name=\"\")\r\n// \"\" 内为自定义的 Table 名\r\npublic class User {\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n    @Id\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n其他步骤基本不变', '1:为web.xml文件添加Strut2的拦截器代码如下\r\n\r\nview plaincopy to clipboardprint?\r\n   <filter>  \r\n  <filter-name>struts2</filter-name>  \r\n  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>  \r\n</filter>  \r\n<filter-mapping>  \r\n        <filter-name>struts2</filter-name>  \r\n        <url-pattern>/*</url-pattern>  \r\n</filter-mapping>  \r\n    \r\n\r\n    <filter>\r\n	  <filter-name>struts2</filter-name>\r\n	  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>\r\n	</filter>\r\n	<filter-mapping>\r\n			<filter-name>struts2</filter-name>\r\n			<url-pattern>/*</url-pattern>\r\n	</filter-mapping>\r\n   \r\n2:添加Struts2核心包到工程目录的WEB-INF/lib/下\r\n\r\n3:编写Action的Code\r\n\r\n');
INSERT INTO `demoinfo` VALUES ('29', 'ormCrudQueryDemo', '在Java应用总使用hibernate的步骤：</br>\r\n1创建hibernate的配置文件</br>\r\n2创建持久化类</br>\r\n	&nbsp;&nbsp;1>持久化类符合javabean的规范，包含一些属性，以及与之对应的getxxx()和setxxx()方法。</br>\r\n	&nbsp;&nbsp;2>持久化类有一个id属性，用来唯一标志Person类的每个对象。在面向对象术语中，这个id属性被称为对象标识符</br>\r\n	&nbsp;&nbsp;3>Hibernate要求持久化类必须提供一个不带参数的默认构造方法</br>\r\n	&nbsp;&nbsp;一个SessionFactory实例对应着一个数据存储源，应用从SessionFactory中获得Session实例,Session也被成为持久化管理器，它提供了和持久化相关的操作，如添加、更新、删除、加载和查询对象</br>\r\n	注意：此session非彼session（HttpSession）</br>\r\n	&nbsp;&nbsp;HQL面向的是类（对象）而不是数据库中的表，这是与SQL之间的差别。Session的get的load方法都可以获取相应的持久化对象，如果该对象存在，那么这两个方法的行为是一样的；如果该对象不存在，那么get方法会返回null而load方法则抛出异常,setAutoCommit(boolean autoCommit)：事物是否自动提交,一般设置为false（比如有5组实物，前4组成功，但第5组失败，则必须全部认为失败回滚，若为true则前4组自动提交）</br>\r\n3创建对象-关系映射文件</br>\r\n4通过hibernate API编写访问数据库的代码</br>\r\n\r\n\r\n\r\n', ' 1:jar包下载地址：<a href=\"http://sourceforge.net/projects/hibernate/files/hibernate4/4.1.3.Final/hibernate-release-4.1.3.Final.zip/download \">hibernate jar包</a> （jar包介绍不在多说）', '1:导入必要的jar包\r\n&nbsp;&nbsp;新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包</br>\r\n2:编写Code</br>\r\n　&nbsp;&nbsp;1>创建数据库hibernate_user_info</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2>新建实体类 User.java</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class User {\r\n\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n&nbsp;&nbsp;3>配置 hibernate.cfg.xml（仅供参考，具体配置自行变换）</br>\r\n&nbsp;&nbsp;在 src 目录下，新建 hibernate.cfg.xml 文件（配置文件存放的位置要求统一化，命名规范化），其配置如下：\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\'1.0\' encoding=\'utf-8\'?>\r\n<!DOCTYPE hibernate-configuration PUBLIC\r\n        \"-//Hibernate/Hibernate Configuration DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd\">\r\n<hibernate-configuration>\r\n    <session-factory>\r\n        <!-- Database connection settings -->\r\n        <!-- 表示使用 mysql 数据库驱动类 -->\r\n        <property name=\"connection.driver_class\">com.mysql.jdbc.Driver</property>\r\n        <!-- jdbc 的连接 url 和数据库（使用我们之前新建的 hibernate）-->\r\n        <property name=\"connection.url\">jdbc:mysql://localhost:3306/mynet</property>\r\n        <!-- 数据库用户名 -->\r\n        <property name=\"connection.username\">root</property>\r\n        <!-- 密码（这里为空） -->\r\n        <property name=\"connection.password\"></property>\r\n        <!-- JDBC connection pool (use the built-in) -->\r\n        <!-- <property name=\"connection.pool_size\">1</property>-->\r\n        <!-- 数据库使用的方言 -->\r\n        <property name=\"dialect\">org.hibernate.dialect.MySQLDialect</property>\r\n        <!-- Echo all executed SQL to stdout -->\r\n        <!-- 设置 打印输出 sql 语句 为真 -->\r\n        <property name=\"show_sql\">true</property>\r\n        <!-- 设置格式为 sql -->\r\n        <property name=\"format_sql\">true</property>\r\n        <!-- 第一次加载 hibernate 时根据实体类自动建立表结构，以后自动更新表结构 -->\r\n        <property name=\"hbm2ddl.auto\">update</property>         \r\n        <!-- 映射文件 -->\r\n        <mapping resource=\"MyHttp/test/hibernate/relationship/pojo/User.hbm.xml\"/>\r\n    </session-factory>\r\n</hibernate-configuration>\r\n</pre>\r\n注：<1>对于MySql查询url端口号，可以通过下面的命令来查看:show variables like \'port\';</br>\r\n&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;</br>\r\n&nbsp;&nbsp;<2>在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下\r\n<pre name=\"code\" class=\"java\">\r\nConfiguration cfg=newConfiguration().configure(\"hibernate/hibernate.cfg.xml\");  //实例化Configuration并加载hibernate.cfg.xml文件  \r\n</pre>\r\n&nbsp;&nbsp;4>配置 User.hbm.xml</br>\r\n&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。</br>\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\"1.0\"?>\r\n<!DOCTYPE hibernate-mapping PUBLIC\r\n        \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\r\n<!-- 映射对应的 package -->\r\n<hibernate-mapping package=\"demoinfo.hibernate.relationship.pojo.User\">\r\n    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->\r\n    <class name=\"User\" table=\"hibernate_user_info\">\r\n        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->\r\n        <id name=\"id\" column=\"user_id\"/>\r\n        <property name=\"username\" column=\"user_username\"></property>\r\n        <property name=\"password\" column=\"user_password\"></property>\r\n    </class>\r\n</hibernate-mapping>\r\n</pre>\r\n&nbsp;&nbsp;5>创建Test测试运行</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class Test {\r\n    @SuppressWarnings(\"unchecked\")\r\n    public static void main(String[] args) {\r\n        Configuration configuration = new Configuration().configure();\r\n        SessionFactory sessionFactory = configuration.buildSessionFactory();\r\n        Session session = sessionFactory.openSession();\r\n        session.beginTransaction();\r\n        // 利用 StringBuilder 来连接查询语句\r\n        StringBuilder hq = new StringBuilder();\r\n        // 从 User 里面查找（注意 from 后有空格）\r\n        // 相当于 \"select * from user_info;\"\r\n        hq.append(\"from \").append( User.class.getName() );\r\n        // 利用 session 建立 query\r\n        Query query = session.createQuery( hq.toString() );\r\n        // 序列化 query 的结果为一个 list 集合\r\n        List<User> users = query.list();\r\n        // 打印每一个 User 信息（这里只打印了名字，你也可以打印其他信息）\r\n        for (User user : users) {\r\n            System.out.println( user.getUsername() );\r\n        }\r\n/*      User user = new User();\r\n        user.setId(3);\r\n        user.setUsername(\"user2\");\r\n        user.setPassword(\"helloworld\");\r\n        session.save(user);*/\r\n        session.getTransaction().commit();\r\n        session.close();\r\n        sessionFactory.close();\r\n    }\r\n}\r\n</pre>\r\n注：1>如上的代码是最基本的流程</br>\r\n&nbsp;&nbsp;2>通过JPA注解的方式，我们能将第２步和第４步整合在一起．代码如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.Id;\r\n\r\n@Entity\r\n@Table(name=\"hibernate_user_info\")\r\n// 数据库中默认会对应生成同名的 Table\r\n// 如果要修改 Table 名，使用 @Table(name=\"\")\r\n// \"\" 内为自定义的 Table 名\r\npublic class User {\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n    @Id\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n其他步骤基本不变', '1:为web.xml文件添加Strut2的拦截器代码如下\r\n\r\nview plaincopy to clipboardprint?\r\n   <filter>  \r\n  <filter-name>struts2</filter-name>  \r\n  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>  \r\n</filter>  \r\n<filter-mapping>  \r\n        <filter-name>struts2</filter-name>  \r\n        <url-pattern>/*</url-pattern>  \r\n</filter-mapping>  \r\n    \r\n\r\n    <filter>\r\n	  <filter-name>struts2</filter-name>\r\n	  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>\r\n	</filter>\r\n	<filter-mapping>\r\n			<filter-name>struts2</filter-name>\r\n			<url-pattern>/*</url-pattern>\r\n	</filter-mapping>\r\n   \r\n2:添加Struts2核心包到工程目录的WEB-INF/lib/下\r\n\r\n3:编写Action的Code\r\n\r\n');
INSERT INTO `demoinfo` VALUES ('30', 'ormCrudUpdateDemo', '在Java应用总使用hibernate的步骤：</br>\r\n1创建hibernate的配置文件</br>\r\n2创建持久化类</br>\r\n	&nbsp;&nbsp;1>持久化类符合javabean的规范，包含一些属性，以及与之对应的getxxx()和setxxx()方法。</br>\r\n	&nbsp;&nbsp;2>持久化类有一个id属性，用来唯一标志Person类的每个对象。在面向对象术语中，这个id属性被称为对象标识符</br>\r\n	&nbsp;&nbsp;3>Hibernate要求持久化类必须提供一个不带参数的默认构造方法</br>\r\n	&nbsp;&nbsp;一个SessionFactory实例对应着一个数据存储源，应用从SessionFactory中获得Session实例,Session也被成为持久化管理器，它提供了和持久化相关的操作，如添加、更新、删除、加载和查询对象</br>\r\n	注意：此session非彼session（HttpSession）</br>\r\n	&nbsp;&nbsp;HQL面向的是类（对象）而不是数据库中的表，这是与SQL之间的差别。Session的get的load方法都可以获取相应的持久化对象，如果该对象存在，那么这两个方法的行为是一样的；如果该对象不存在，那么get方法会返回null而load方法则抛出异常,setAutoCommit(boolean autoCommit)：事物是否自动提交,一般设置为false（比如有5组实物，前4组成功，但第5组失败，则必须全部认为失败回滚，若为true则前4组自动提交）</br>\r\n3创建对象-关系映射文件</br>\r\n4通过hibernate API编写访问数据库的代码</br>\r\n\r\n\r\n\r\n', ' 1:jar包下载地址：<a href=\"http://sourceforge.net/projects/hibernate/files/hibernate4/4.1.3.Final/hibernate-release-4.1.3.Final.zip/download \">hibernate jar包</a> （jar包介绍不在多说）', '1:导入必要的jar包\r\n&nbsp;&nbsp;新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包</br>2:编写Code</br>\r\n　&nbsp;&nbsp;1>创建数据库hibernate_user_info</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2>新建实体类 User.java</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class User {\r\n\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n&nbsp;&nbsp;3>配置 hibernate.cfg.xml（仅供参考，具体配置自行变换）</br>\r\n&nbsp;&nbsp;在 src 目录下，新建 hibernate.cfg.xml 文件（配置文件存放的位置要求统一化，命名规范化），其配置如下：\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\'1.0\' encoding=\'utf-8\'?>\r\n<!DOCTYPE hibernate-configuration PUBLIC\r\n        \"-//Hibernate/Hibernate Configuration DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd\">\r\n<hibernate-configuration>\r\n    <session-factory>\r\n        <!-- Database connection settings -->\r\n        <!-- 表示使用 mysql 数据库驱动类 -->\r\n        <property name=\"connection.driver_class\">com.mysql.jdbc.Driver</property>\r\n        <!-- jdbc 的连接 url 和数据库（使用我们之前新建的 hibernate）-->\r\n        <property name=\"connection.url\">jdbc:mysql://localhost:3306/mynet</property>\r\n        <!-- 数据库用户名 -->\r\n        <property name=\"connection.username\">root</property>\r\n        <!-- 密码（这里为空） -->\r\n        <property name=\"connection.password\"></property>\r\n        <!-- JDBC connection pool (use the built-in) -->\r\n        <!-- <property name=\"connection.pool_size\">1</property>-->\r\n        <!-- 数据库使用的方言 -->\r\n        <property name=\"dialect\">org.hibernate.dialect.MySQLDialect</property>\r\n        <!-- Echo all executed SQL to stdout -->\r\n        <!-- 设置 打印输出 sql 语句 为真 -->\r\n        <property name=\"show_sql\">true</property>\r\n        <!-- 设置格式为 sql -->\r\n        <property name=\"format_sql\">true</property>\r\n        <!-- 第一次加载 hibernate 时根据实体类自动建立表结构，以后自动更新表结构 -->\r\n        <property name=\"hbm2ddl.auto\">update</property>         \r\n        <!-- 映射文件 -->\r\n        <mapping resource=\"MyHttp/test/hibernate/relationship/pojo/User.hbm.xml\"/>\r\n    </session-factory>\r\n</hibernate-configuration>\r\n</pre>\r\n注：<1>对于MySql查询url端口号，可以通过下面的命令来查看:show variables like \'port\';</br>\r\n&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;</br>\r\n&nbsp;&nbsp;<2>在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下\r\n<pre name=\"code\" class=\"java\">\r\nConfiguration cfg=newConfiguration().configure(\"hibernate/hibernate.cfg.xml\");  //实例化Configuration并加载hibernate.cfg.xml文件  \r\n</pre>&nbsp;&nbsp;4>配置 User.hbm.xml</br>\r\n&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。</br>\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\"1.0\"?>\r\n<!DOCTYPE hibernate-mapping PUBLIC\r\n        \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\r\n<!-- 映射对应的 package -->\r\n<hibernate-mapping package=\"demoinfo.hibernate.relationship.pojo.User\">\r\n    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->\r\n    <class name=\"User\" table=\"hibernate_user_info\">\r\n        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->\r\n        <id name=\"id\" column=\"user_id\"/>\r\n        <property name=\"username\" column=\"user_username\"></property>\r\n        <property name=\"password\" column=\"user_password\"></property>\r\n    </class>\r\n</hibernate-mapping>\r\n</pre>\r\n&nbsp;&nbsp;5>创建Test测试运行</br>\r\n&nbsp;&nbsp;假设现在我们需要把 user1 的密码改成一个比较复杂的 “123-user”。<br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class Test {\r\n\r\n    @SuppressWarnings(\"unchecked\")\r\n    public static void main(String[] args) {\r\n        Configuration configuration = new Configuration().configure();\r\n        SessionFactory sessionFactory = configuration.buildSessionFactory();\r\n        Session session = sessionFactory.openSession();\r\n        session.beginTransaction();\r\n        StringBuilder hq = new StringBuilder();\r\n        // 对比查找的操作来看，因为我们需要修改指定 name 的用户密码，后面需要再添加查询条件\r\n        // 注意 from、where 的空格，\":name\" 表示一个参数\r\n        hq.append(\"from \").append(User.class.getName()).append(\" where user_username=:name\");\r\n        Query query = session.createQuery(hq.toString());\r\n        // 这里就设定参数 name 的值为\"user1\"\r\n        query.setString(\"name\",\"user1\" ); \r\n        List<User> users = query.list();\r\n        for (User user : users) {\r\n            // 修改 user1 的密码\r\n            user.setPassword(\"123-user\");\r\n            // 注意这里是 update\r\n            session.update(user);\r\n        }\r\n        session.getTransaction().commit();\r\n        session.close();\r\n        sessionFactory.close();\r\n    }\r\n</pre>\r\n&nbsp;&nbsp;另外，你也可以直接通过这样的方式实现修改：</br>\r\n<pre name=\"code\" class=\"java\">\r\nUser user = new User();\r\nuser.setId(2);\r\nuser.setUsername(\"user1\");\r\nuser.setPassword(\"123-user\");\r\n// update\r\nsession.update(user)\r\n</pre>\r\n注：1>如上的代码是最基本的流程</br>\r\n&nbsp;&nbsp;2>通过JPA注解的方式，我们能将第２步和第４步整合在一起．代码如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.Id;\r\n\r\n@Entity\r\n@Table(name=\"hibernate_user_info\")\r\n// 数据库中默认会对应生成同名的 Table\r\n// 如果要修改 Table 名，使用 @Table(name=\"\")\r\n// \"\" 内为自定义的 Table 名\r\npublic class User {\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n    @Id\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n其他步骤基本不变', '1:为web.xml文件添加Strut2的拦截器代码如下\r\n\r\nview plaincopy to clipboardprint?\r\n   <filter>  \r\n  <filter-name>struts2</filter-name>  \r\n  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>  \r\n</filter>  \r\n<filter-mapping>  \r\n        <filter-name>struts2</filter-name>  \r\n        <url-pattern>/*</url-pattern>  \r\n</filter-mapping>  \r\n    \r\n\r\n    <filter>\r\n	  <filter-name>struts2</filter-name>\r\n	  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>\r\n	</filter>\r\n	<filter-mapping>\r\n			<filter-name>struts2</filter-name>\r\n			<url-pattern>/*</url-pattern>\r\n	</filter-mapping>\r\n   \r\n2:添加Struts2核心包到工程目录的WEB-INF/lib/下\r\n\r\n3:编写Action的Code\r\n\r\n');
INSERT INTO `demoinfo` VALUES ('31', 'ormCrudQueryHqlDemo', '&nbsp;&nbsp;Hibernate 提供了强大的查询系统，使用 Hibernate 有多种查询方法可以选择：可以使用 Hibernate 的 HQL 查询，也可以使用条件查询，甚至可以使用原生的 SQL 查询语句。\r\nHQL 语言看上去很像 SQL。但是 HQL 是一种面向对象的查询语句，它的操作对象是类、实例、属性等，而 SQL 的操作对象是数据表、列等数据库对象。由于 HQL 是完全面向对象的查询语句，因此可以支持继承、多态等特性。\r\n执行HQL查询的步骤：</br>\r\n1、获得 Hibernate Session 对象</br>\r\n2、编写 HQL 语句</br>\r\n（1）from 子句</br>\r\nHibernate 中最简单的查询语句的形式如 from table_name，例如：</br>\r\n<pre name=\"code\" class=\"java\">\r\nfrom  user_info \r\n</pre>\r\n有时候需要使用到别名：</br>\r\n<pre name=\"code\" class=\"java\">\r\n from user_info as u\r\n</pre>\r\n（2）where 子句</br>\r\nwhere 子句允许你将返回的实例列表的范围缩小。如果没有指定别名，你可以使用属性名来直接引用属性：</br>\r\n<pre name=\"code\" class=\"java\">\r\nfrom user_info where name= \'admin\' \r\n</pre>\r\n如果指派了别名，需要使用完整的属性名：</br>\r\n<pre name=\"code\" class=\"java\">\r\nfrom user_info as u where u.name= \'admin\' \r\n</pre>\r\n（3）select 子句</br>\r\nselect 子句会选择将哪些对象与属性返回到查询结果集中。</br>\r\n<pre name=\"code\" class=\"java\">\r\nselect u.username from user_info as u\r\n</pre>\r\n（４）SQL 查询</br>\r\n可以直接使用原生 SQL 语句格式进行查询。</br>\r\n<pre name=\"code\" class=\"java\">\r\nSQLQuery q = session.createSQLQuery(\"select * from user_info\").addEntity(User.class);\r\n</pre>\r\n3、调用 Session 的 createQuery() 方法创建查询对象</br>\r\n4、如果 HQL 语句包含参数，则调用 Query 的 setXxx 方法为参数赋值</br>\r\n5、调用 Query 对象的 list 等方法返回查询结果。</br>', ' 1:jar包下载地址：<a href=\"http://sourceforge.net/projects/hibernate/files/hibernate4/4.1.3.Final/hibernate-release-4.1.3.Final.zip/download \">hibernate jar包</a> （jar包介绍不在多说）', '1:导入必要的jar包\r\n&nbsp;&nbsp;新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包</br>\r\n2:编写Code</br>\r\n　&nbsp;&nbsp;1>创建数据库hibernate_user_info</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2>新建实体类 User.java</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class User {\r\n\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n</pre>\r\n&nbsp;&nbsp;3>配置 hibernate.cfg.xml（仅供参考，具体配置自行变换）</br>\r\n&nbsp;&nbsp;在 src 目录下，新建 hibernate.cfg.xml 文件（配置文件存放的位置要求统一化，命名规范化），其配置如下：\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\'1.0\' encoding=\'utf-8\'?>\r\n<!DOCTYPE hibernate-configuration PUBLIC\r\n        \"-//Hibernate/Hibernate Configuration DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd\">\r\n<hibernate-configuration>\r\n    <session-factory>\r\n        <!-- Database connection settings -->\r\n        <!-- 表示使用 mysql 数据库驱动类 -->\r\n        <property name=\"connection.driver_class\">com.mysql.jdbc.Driver</property>\r\n        <!-- jdbc 的连接 url 和数据库（使用我们之前新建的 hibernate）-->\r\n        <property name=\"connection.url\">jdbc:mysql://localhost:3306/mynet</property>\r\n        <!-- 数据库用户名 -->\r\n        <property name=\"connection.username\">root</property>\r\n        <!-- 密码（这里为空） -->\r\n        <property name=\"connection.password\"></property>\r\n        <!-- JDBC connection pool (use the built-in) -->\r\n        <!-- <property name=\"connection.pool_size\">1</property>-->\r\n        <!-- 数据库使用的方言 -->\r\n        <property name=\"dialect\">org.hibernate.dialect.MySQLDialect</property>\r\n        <!-- Echo all executed SQL to stdout -->\r\n        <!-- 设置 打印输出 sql 语句 为真 -->\r\n        <property name=\"show_sql\">true</property>\r\n        <!-- 设置格式为 sql -->\r\n        <property name=\"format_sql\">true</property>\r\n        <!-- 第一次加载 hibernate 时根据实体类自动建立表结构，以后自动更新表结构 -->\r\n        <property name=\"hbm2ddl.auto\">update</property>         \r\n        <!-- 映射文件 -->\r\n        <mapping resource=\"MyHttp/test/hibernate/relationship/pojo/User.hbm.xml\"/>\r\n    </session-factory>\r\n</hibernate-configuration>\r\n</pre>\r\n注：<1>对于MySql查询url端口号，可以通过下面的命令来查看:show variables like \'port\';</br>\r\n&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;</br>\r\n&nbsp;&nbsp;<2>在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下\r\n<pre name=\"code\" class=\"java\">\r\nConfiguration cfg=newConfiguration().configure(\"hibernate/hibernate.cfg.xml\");  //实例化Configuration并加载hibernate.cfg.xml文件  \r\n</pre>\r\n&nbsp;&nbsp;4>配置 User.hbm.xml</br>\r\n&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。</br>\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\"1.0\"?>\r\n<!DOCTYPE hibernate-mapping PUBLIC\r\n        \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\r\n<!-- 映射对应的 package -->\r\n<hibernate-mapping package=\"demoinfo.hibernate.relationship.pojo.User\">\r\n    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->\r\n    <class name=\"User\" table=\"hibernate_user_info\">\r\n        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->\r\n        <id name=\"id\" column=\"user_id\"/>\r\n        <property name=\"username\" column=\"user_username\"></property>\r\n        <property name=\"password\" column=\"user_password\"></property>\r\n    </class>\r\n</hibernate-mapping>\r\n</pre>\r\n&nbsp;&nbsp;5>创建Test测试运行</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class UserTest {\r\n    public static void main(String[] args) {\r\n        Configuration cfg = new Configuration().configure();\r\n        SessionFactory sf = cfg.buildSessionFactory();\r\n        Session session = sf.openSession();\r\n        session.beginTransaction();\r\n        // 1. 普通查询\r\n        Query q = session.createQuery(\" from User as u\");\r\n        // 2. 条件查询\r\n        //Query q = session.createQuery(\" from User as u where u.username = ?\");\r\n        //q.setParameter(0, \"Jack\");\r\n        // 3. 原生 SQL 查询\r\n        //SQLQuery q = session.createSQLQuery(\"select * from user_info\").addEntity(User.class);\r\n        // 4.criteria 查询\r\n/*      Criteria q = session.createCriteria(User.class);\r\n        Criterion cc = Restrictions.between(\"id\", 1, 3);\r\n        Criterion cc1 = Restrictions.idEq(2);    \r\n        q.add(cc);\r\n        q.add(cc1);*/\r\n        List<User> list = q.list();\r\n        for (User e : list) {\r\n            System.out.println(e.getUsername() + \", password: \" + e.getPassword());\r\n            //System.out.println( e.getPassword() );\r\n        }\r\n        session.getTransaction().commit();\r\n        session.close();\r\n        sf.close();\r\n    }\r\n}\r\n</pre>\r\n', '1:为web.xml文件添加Strut2的拦截器代码如下\r\n\r\nview plaincopy to clipboardprint?\r\n   <filter>  \r\n  <filter-name>struts2</filter-name>  \r\n  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>  \r\n</filter>  \r\n<filter-mapping>  \r\n        <filter-name>struts2</filter-name>  \r\n        <url-pattern>/*</url-pattern>  \r\n</filter-mapping>  \r\n    \r\n\r\n    <filter>\r\n	  <filter-name>struts2</filter-name>\r\n	  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>\r\n	</filter>\r\n	<filter-mapping>\r\n			<filter-name>struts2</filter-name>\r\n			<url-pattern>/*</url-pattern>\r\n	</filter-mapping>\r\n   \r\n2:添加Struts2核心包到工程目录的WEB-INF/lib/下\r\n\r\n3:编写Action的Code\r\n\r\n');
INSERT INTO `demoinfo` VALUES ('32', 'ormCrudQueryLinkDemo', '&nbsp;&nbsp;Hibernate 提供了强大的查询系统，使用 Hibernate 有多种查询方法可以选择：可以使用 Hibernate 的 HQL 查询，也可以使用条件查询，甚至可以使用原生的 SQL 查询语句。\r\nHQL 语言看上去很像 SQL。但是 HQL 是一种面向对象的查询语句，它的操作对象是类、实例、属性等，而 SQL 的操作对象是数据表、列等数据库对象。由于 HQL 是完全面向对象的查询语句，因此可以支持继承、多态等特性。\r\n执行HQL查询的步骤：</br>\r\n1、获得 Hibernate Session 对象</br>\r\n2、编写 HQL 语句</br>\r\n（1）from 子句</br>\r\nHibernate 中最简单的查询语句的形式如 from table_name，例如：</br>\r\n<pre name=\"code\" class=\"java\">\r\nfrom  user_info \r\n</pre>\r\n有时候需要使用到别名：</br>\r\n<pre name=\"code\" class=\"java\">\r\n from user_info as u\r\n</pre>\r\n（2）where 子句</br>\r\nwhere 子句允许你将返回的实例列表的范围缩小。如果没有指定别名，你可以使用属性名来直接引用属性：</br>\r\n<pre name=\"code\" class=\"java\">\r\nfrom user_info where name= \'admin\' \r\n</pre>\r\n如果指派了别名，需要使用完整的属性名：</br>\r\n<pre name=\"code\" class=\"java\">\r\nfrom user_info as u where u.name= \'admin\' \r\n</pre>\r\n（3）select 子句</br>\r\nselect 子句会选择将哪些对象与属性返回到查询结果集中。</br>\r\n<pre name=\"code\" class=\"java\">\r\nselect u.username from user_info as u\r\n</pre>\r\n（４）SQL 查询</br>\r\n可以直接使用原生 SQL 语句格式进行查询。</br>\r\n<pre name=\"code\" class=\"java\">\r\nSQLQuery q = session.createSQLQuery(\"select * from user_info\").addEntity(User.class);\r\n</pre>\r\n3、调用 Session 的 createQuery() 方法创建查询对象</br>\r\n4、如果 HQL 语句包含参数，则调用 Query 的 setXxx 方法为参数赋值</br>\r\n5、调用 Query 对象的 list 等方法返回查询结果。</br>', ' 1:jar包下载地址：<a href=\"http://sourceforge.net/projects/hibernate/files/hibernate4/4.1.3.Final/hibernate-release-4.1.3.Final.zip/download \">hibernate jar包</a> （jar包介绍不在多说）', '1:导入必要的jar包\r\n&nbsp;&nbsp;新建一个 Java 工程，然后引入必要的 jar 包，右击项目工程，依次选择 Properties->Java Build Path->Libraries->Add External JARs。一般需要Hibernate.jar包和mysql-connector.jar包还有一些基本jar包</br>\r\n2:编写Code</br>\r\n　&nbsp;&nbsp;1>创建数据库hibernate_user_info</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2>新建实体类 User.java和goods.java</br>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;这个没什么太多说的，一个用户具有：id、username、password 三个属性。每个用户可以有多个商品，而一个商品只能对应一个用户。</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic class User {\r\n    private int id;\r\n    private String username;\r\n    private String password;\r\n\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getPassword() {\r\n        return password;\r\n    }\r\n    public void setPassword(String password) {\r\n        this.password = password;\r\n    }\r\n}\r\n\r\n\r\npublic class Goods {\r\n    private int id;\r\n    private String goodsname;\r\n    private String userId;\r\n\r\n    public int getId() {\r\n        return id;\r\n    }\r\n    public void setId(int id) {\r\n        this.id = id;\r\n    }\r\n    public String getUsername() {\r\n        return username;\r\n    }\r\n    public void setUsername(String username) {\r\n        this.username = username;\r\n    }\r\n    public String getUserId() {\r\n        return userId;\r\n    }\r\n    public void setUserId(String userId) {\r\n        this.userId = userId;\r\n    }\r\n}\r\n</pre>\r\n现在要实现两表连接查询，查出每个用户所拥有的商品，并把该用户的信息和其商品信息显示出来。</br>\r\n使用Hibernate反向生成的实体类分别是Users和Goods。</br>\r\n&nbsp;&nbsp;3>配置 hibernate.cfg.xml（仅供参考，具体配置自行变换）</br>\r\n&nbsp;&nbsp;在 src 目录下，新建 hibernate.cfg.xml 文件（配置文件存放的位置要求统一化，命名规范化），其配置如下：\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\'1.0\' encoding=\'utf-8\'?>\r\n<!DOCTYPE hibernate-configuration PUBLIC\r\n        \"-//Hibernate/Hibernate Configuration DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd\">\r\n<hibernate-configuration>\r\n    <session-factory>\r\n        <!-- Database connection settings -->\r\n        <!-- 表示使用 mysql 数据库驱动类 -->\r\n        <property name=\"connection.driver_class\">com.mysql.jdbc.Driver</property>\r\n        <!-- jdbc 的连接 url 和数据库（使用我们之前新建的 hibernate）-->\r\n        <property name=\"connection.url\">jdbc:mysql://localhost:3306/mynet</property>\r\n        <!-- 数据库用户名 -->\r\n        <property name=\"connection.username\">root</property>\r\n        <!-- 密码（这里为空） -->\r\n        <property name=\"connection.password\"></property>\r\n        <!-- JDBC connection pool (use the built-in) -->\r\n        <!-- <property name=\"connection.pool_size\">1</property>-->\r\n        <!-- 数据库使用的方言 -->\r\n        <property name=\"dialect\">org.hibernate.dialect.MySQLDialect</property>\r\n        <!-- Echo all executed SQL to stdout -->\r\n        <!-- 设置 打印输出 sql 语句 为真 -->\r\n        <property name=\"show_sql\">true</property>\r\n        <!-- 设置格式为 sql -->\r\n        <property name=\"format_sql\">true</property>\r\n        <!-- 第一次加载 hibernate 时根据实体类自动建立表结构，以后自动更新表结构 -->\r\n        <property name=\"hbm2ddl.auto\">update</property>         \r\n        <!-- 映射文件 -->\r\n        <mapping resource=\"MyHttp/test/hibernate/relationship/pojo/User.hbm.xml\"/>\r\n    </session-factory>\r\n</hibernate-configuration>\r\n</pre>\r\n注：<1>对于MySql查询url端口号，可以通过下面的命令来查看:show variables like \'port\';</br>\r\n&nbsp;&nbsp;查询用户名和密码可以通过下面的命令来查看：select host,user,password from mysql.user;</br>\r\n&nbsp;&nbsp;<2>在创建SessionFactory时,如果不是放在ｓｒｃ下第一层，则应该对加载语句进行修改，以防找不到配置文件，例子如下\r\n<pre name=\"code\" class=\"java\">\r\nConfiguration cfg=newConfiguration().configure(\"hibernate/hibernate.cfg.xml\");  //实例化Configuration并加载hibernate.cfg.xml文件  \r\n</pre>&nbsp;&nbsp;4>配置 User.hbm.xml</br>\r\n&nbsp;&nbsp;一个实体类对应一个映射文件，且位于同一个包（package）下。</br>\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\"1.0\"?>\r\n<!DOCTYPE hibernate-mapping PUBLIC\r\n        \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\r\n<!-- 映射对应的 package -->\r\n<hibernate-mapping package=\"demoinfo.hibernate.relationship.pojo.User\">\r\n    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->\r\n    <class name=\"User\" table=\"hibernate_user_info\">\r\n        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->\r\n        <id name=\"id\" column=\"user_id\"/>\r\n        <property name=\"username\" column=\"user_username\"></property>\r\n        <property name=\"password\" column=\"user_password\"></property>\r\n    </class>\r\n</hibernate-mapping>\r\n</pre>\r\n<pre name=\"code\" class=\"xml\">\r\n<?xml version=\"1.0\"?>\r\n<!DOCTYPE hibernate-mapping PUBLIC\r\n        \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\r\n        \"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\r\n<!-- 映射对应的 package -->\r\n<hibernate-mapping package=\"demoinfo.hibernate.relationship.pojo.User\">\r\n    <!-- 实体类和数据库中的表对应（如果没有这个表则新建） -->\r\n    <class name=\"Goods\" table=\"hibernate_goods_info\">\r\n        <!-- id主键 和其他属性对应表中相应的字段（这些都是在 User.java 实体类中定义的） -->\r\n        <id name=\"id\" column=\"goods_id\"/>\r\n        <property name=\"goodsname\" column=\"goods_name\"></property>\r\n        <property name=\"userid\" column=\"user_id\"></property>\r\n    </class>\r\n</hibernate-mapping>\r\n</pre>\r\n&nbsp;&nbsp;5>实现语句</br>\r\n&nbsp;&nbsp;有两种方式：</br>\r\n&nbsp;&nbsp;（1）使用传统方式：</br>\r\n<pre name=\"code\" class=\"java\">\r\nString hql=\"select u.userName, u.telephone, u.address, g.goodsName from Users u, Goods g where u.userId=g.userId\";\r\n</pre>\r\n根据这个查询语句，调用query.list()方法得到一个List值，这个List中的每一个值都是Object[]类型的，里面包含了查询出来的所有值，剩下的自个儿去处理就行了</br>\r\n&nbsp;&nbsp;（2）增加一个映射类</br>\r\n&nbsp;&nbsp;增加一个映射类UsersVoGoods.java，添加需要查询的信息相关的所有属性，本例中添加userName, telephone, address, goodsName。并为这几个属性添加setter和getter方法，增加构造函数，参数与这四个属性对应，那么可以用hql查询方式：</br>\r\n<pre name=\"code\" class=\"java\">\r\nString hql = \"select new com.test.UsersVoGoods(u.userName, u.teltphone, u.address, g.goodsName) from Users u, Goods g where u.userId=g.userId\";\r\n</pre>\r\nquery.list()的返回值List中的值都是UsersVoGoods型的，直接使用get()就能获取。</br>\r\n其实不增加映射类也是可以的，只需要在Users.java实体类里增加一个构造函数，函数参数还是需要的所有字段，并为这些参数中Users实体原来没有的字段添加属性和getter() setter()即可。</br>\r\n\r\n', '1:为web.xml文件添加Strut2的拦截器代码如下\r\n\r\nview plaincopy to clipboardprint?\r\n   <filter>  \r\n  <filter-name>struts2</filter-name>  \r\n  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>  \r\n</filter>  \r\n<filter-mapping>  \r\n        <filter-name>struts2</filter-name>  \r\n        <url-pattern>/*</url-pattern>  \r\n</filter-mapping>  \r\n    \r\n\r\n    <filter>\r\n	  <filter-name>struts2</filter-name>\r\n	  <filter-class>org.apache.struts2.dispatcher.FilterDispatcher</filter-class>\r\n	</filter>\r\n	<filter-mapping>\r\n			<filter-name>struts2</filter-name>\r\n			<url-pattern>/*</url-pattern>\r\n	</filter-mapping>\r\n   \r\n2:添加Struts2核心包到工程目录的WEB-INF/lib/下\r\n\r\n3:编写Action的Code\r\n\r\n');
INSERT INTO `demoinfo` VALUES ('33', 'webServiceConf', '主要搭建的步骤：</br>\r\n1、 到apache的cxf官网上下载相应的jar包。</br>\r\n2、 建立一个java工程、将下载的jar包引入到项目中。</br>\r\n3、 创建服务端功能接口。</br>\r\n4、 创建实现服务端功能接口的具体类。</br>\r\n5、 发布服务接口。</br>\r\n6、 创建测试类、充当客户端调用服务端提供的功能、获取服务调用服务端提供的服务（具体点就是调用服务端提供的方法）。</br>', ' 1:jar包下载地址：<a href=\"http://cxf.apache.org/download.html\">webService jar包</a> （jar包介绍不在多说）</br>\r\n&nbsp;&nbsp;需要并根据功能情况不仅限于如下：</br>\r\n&nbsp;&nbsp;webservices-api-2.2.jar.zip</br>\r\n&nbsp;&nbsp;webservices-extra-2.2.jar.zip</br>\r\n&nbsp;&nbsp;webservices-extra-api-2.2.jar.zip</br>\r\n&nbsp;&nbsp;webservices-rt-1.2.jar.zip</br>\r\n&nbsp;&nbsp;webservices-tools-2.2.0-4.jar.zip</br>', '1、创建java项目、引入jar包、方便起见就直接把jar包（除endorsed文件夹下的之外）全部引入即可下载之后的包中我们还可以发现有自带的spring的包、这样我们在使用spring集成它的时候就方便很多了、这里先不提集成。后面会补充jar和项目结构图。</br>\r\n2、创建服务端接口：</br>\r\n注意别忘了在服务端接口类级别上加上@WebService ! </br>\r\nHelloWebService代码：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport javax.jws.WebService;\r\n@WebService\r\npublic interface HelloWebService {\r\n	public String sayHello(String name);\r\n}\r\n</pre>\r\n3、创建实现服务端功能接口的具体类——HelloWebServiceImpl代码：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport javax.jws.WebService;\r\n@WebService(endpointInterface=\"com.chy.ws.service.HelloWebService\")\r\npublic class HelloWebServiceImpl implements HelloWebService{\r\n	public String sayHello(String name) {\r\n		return \"hello \" + name;\r\n	}\r\n}\r\n</pre>\r\n4、发布服务接口——WebServiceServer代码：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport org.apache.cxf.jaxws.JaxWsServerFactoryBean;\r\nimport com.chy.ws.service.HelloWebService;\r\nimport com.chy.ws.service.HelloWebServiceImpl;\r\n\r\npublic class WebServiceServer {\r\n\r\n	public WebServiceServer(){\r\n		//方法一：\r\n		//创建webService接口\r\n		JaxWsServerFactoryBean factory = new JaxWsServerFactoryBean();\r\n		\r\n		//设置地址\r\n		factory.setAddress(\"http://localhost:8080/hellowebservice\");\r\n		\r\n		//注册webService\r\n		factory.setServiceClass(HelloWebService.class);\r\n		factory.setServiceBean(new HelloWebServiceImpl());\r\n		\r\n		//创建Service\r\n		factory.create();\r\n		\r\n		//方法二：\r\n		//Endpoint.publish(\"http://localhost:8080/hellowebservice\", new HelloWebServiceImpl());\r\n	}\r\n	\r\n	public static void main(String[] args) {\r\n		new WebServiceServer();\r\n		System.out.println(\"server is ready...\");\r\n		try {\r\n			Thread.sleep(1000*300);\r\n		} catch (InterruptedException e) {\r\n			e.printStackTrace();\r\n		}\r\n		System.out.println(\"server exit...\");\r\n		System.exit(0);\r\n	}\r\n}\r\n</pre>\r\n5、通过浏览器访问地址：http://localhost:8080/WebServiceServer/services/HelloWebService?WSDL 若有结果则发布成功！</br>\r\n6、测试类——WebServiceClient代码（先将服务端启动或者发布）：</br>\r\n<pre name=\"code\" class=\"java\">\r\nimport org.apache.cxf.jaxws.JaxWsProxyFactoryBean;\r\n\r\nimport com.chy.ws.service.HelloWebService;\r\n\r\npublic class WebServiceClient {\r\n	public static void main(String[] args) {\r\n		//创建Service代理工厂\r\n		JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();\r\n		\r\n		//设置地址\r\n		factory.setAddress(\"http://localhost:8080/hellowebservice\");\r\n		\r\n		//注册接口\r\n		factory.setServiceClass(HelloWebService.class);\r\n		\r\n		//获取bean\r\n		HelloWebService hello = (HelloWebService) factory.create();\r\n		\r\n		//输出结果\r\n		System.out.println(\"invoking service...\");\r\n		System.out.println(hello.sayHello(\"knight\"));\r\n	}\r\n}</pre>', null);
INSERT INTO `demoinfo` VALUES ('34', 'webServiceTake', '主要操作流程:</br>\r\n1.组织数据</br>\r\n2.转译报文</br>\r\n3.发送报文</br>\r\n4.解析返回报文报文</br>', 'jar包jdk1.6自带', '本段分为两个例子，一为简单转换例子，二为公司具体请求实例．</br>\r\n一．简单实例</br>\r\n&nbsp;&nbsp;1.简介\r\n&nbsp;&nbsp;JAXB（Java Architecture for XML Binding) 是一个业界的标准，是一项可以根据XML Schema产生Java类的技术。该过程中，JAXB也提供了将XML实例文档反向生成Java对象树的方法，并能将Java对象树的内容重新写到 XML实例文档。\r\nJaxb 2.0是JDK 1.6的组成部分。我们不需要下载第三方jar包 即可做到轻松转换。Jaxb2使用了JDK的新特性，如：Annotation、GenericType等，需要在即将转换的JavaBean中添加annotation注解。</br>\r\n&nbsp;&nbsp;2.重要概念</br>\r\n&nbsp;&nbsp;JAXBContext类，是应用的入口，用于管理XML/Java绑定信息。</br>\r\n&nbsp;&nbsp;Marshaller接口，将Java对象序列化为XML数据。</br>\r\n&nbsp;&nbsp;Unmarshaller接口，将XML数据反序列化为Java对象。</br>\r\n \r\n&nbsp;&nbsp;@XmlType，将Java类或枚举类型映射到XML模式类型</br>\r\n&nbsp;&nbsp;@XmlAccessorType(XmlAccessType.FIELD) ，控制字段或属性的序列化。FIELD表示JAXB将自动绑定Java类中的每个非静态的（static）、非瞬态的（由@XmlTransient标 注）字段到XML。其他值还有XmlAccessType.PROPERTY和XmlAccessType.NONE。</br>\r\n&nbsp;&nbsp;@XmlAccessorOrder，控制JAXB 绑定类中属性和字段的排序。</br>\r\n&nbsp;&nbsp;@XmlJavaTypeAdapter，使用定制的适配器（即扩展抽象类XmlAdapter并覆盖marshal()和unmarshal()方法），以序列化Java类为XML。</br>\r\n&nbsp;&nbsp;@XmlElementWrapper ，对于数组或集合（即包含多个元素的成员变量），生成一个包装该数组或集合的XML元素（称为包装器）。</br>\r\n&nbsp;&nbsp;@XmlRootElement，将Java类或枚举类型映射到XML元素。</br>\r\n&nbsp;&nbsp;@XmlElement，将Java类的一个属性映射到与属性同名的一个XML元素。</br>\r\n&nbsp;&nbsp;@XmlAttribute，将Java类的一个属性映射到与属性同名的一个XML属性。</br>\r\n&nbsp;&nbsp;3.样例</br>\r\n&nbsp;&nbsp;1>准备工作</br>\r\n<pre name=\"code\" class=\"java\">\r\n/**\r\n * Jaxb2工具类\r\n * \r\n */\r\npublic class XMLToDto {\r\n	/**\r\n	 * JavaBean转换成xml\r\n	 * 默认编码UTF-8\r\n	 * @param obj\r\n	 * @param writer\r\n	 * @return \r\n	 */\r\n	public static String convertToXml(Object obj) {\r\n		return convertToXml(obj, \"UTF-8\");\r\n	}\r\n	/**\r\n	 * JavaBean转换成xml\r\n	 * @param obj\r\n	 * @param encoding \r\n	 * @return \r\n	 */\r\n	public static String convertToXml(Object obj, String encoding) {\r\n		String result = null;\r\n		try {\r\n			JAXBContext context = JAXBContext.newInstance(obj.getClass());\r\n			Marshaller marshaller = context.createMarshaller();\r\n			marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);\r\n			marshaller.setProperty(Marshaller.JAXB_ENCODING, encoding);\r\n			StringWriter writer = new StringWriter();\r\n			marshaller.marshal(obj, writer);\r\n			result = writer.toString();\r\n		} catch (Exception e) {\r\n			e.printStackTrace();\r\n		}\r\n		return result;\r\n	}\r\n	/**\r\n	 * xml转换成JavaBean\r\n	 * @param xml\r\n	 * @param c\r\n	 * @return\r\n	 */\r\n	@SuppressWarnings(\"unchecked\")\r\n	public static <T> T converyToJavaBean(String xml, Class<T> c) {\r\n		T t = null;\r\n		try {\r\n			JAXBContext context = JAXBContext.newInstance(c);\r\n			Unmarshaller unmarshaller = context.createUnmarshaller();\r\n			t = (T) unmarshaller.unmarshal(new StringReader(xml));\r\n		} catch (Exception e) {\r\n			e.printStackTrace();\r\n		}\r\n		return t;\r\n	}\r\n}\r\n</pre>\r\n注：\r\n<pre name=\"code\" class=\"java\">\r\nmarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);\r\nmarshaller.setProperty(Marshaller.JAXB_ENCODING, encoding);\r\n</pre>\r\n&nbsp;&nbsp;Marshaller.JAXB_FORMATTED_OUTPUT 决定是否在转换成xml时同时进行格式化（即按标签自动换行，否则即是一行的xml）</br>\r\n&nbsp;&nbsp;Marshaller.JAXB_ENCODING xml的编码方式</br>\r\n&nbsp;&nbsp;另外，Marshaller 还有其他Property可以设置，可以去查阅api。</br>\r\n&nbsp;&nbsp;2>最简单转换</br>\r\n<pre name=\"code\" class=\"java\">\r\n/**\r\n * @author		zcl\r\n */\r\n@XmlAccessorType(XmlAccessType.FIELD)\r\n@XmlRootElement\r\n@XmlType(name = \"book\", propOrder = { \"author\", \"calendar\", \"price\", \"id\" })\r\npublic class Book {\r\n\r\n	@XmlElement(required = true)\r\n	private String author;\r\n\r\n	@XmlElement(name = \"price_1\", required = true)\r\n	private float price;\r\n\r\n	@XmlElement\r\n	private Date calendar;\r\n\r\n	@XmlAttribute\r\n	private Integer id;\r\n\r\n	public String getAuthor() {\r\n		return author;\r\n	}\r\n	public float getPrice() {\r\n		return price;\r\n	}\r\n	public Date getCalendar() {\r\n		return calendar;\r\n	}\r\n	public Integer getId() {\r\n		return id;\r\n	}\r\n	public void setAuthor(String author) {\r\n		this.author = author;\r\n	}\r\n	public void setPrice(float price) {\r\n		this.price = price;\r\n	}\r\n	public void setCalendar(Date calendar) {\r\n		this.calendar = calendar;\r\n	}\r\n	public void setId(Integer id) {\r\n		this.id = id;\r\n	}\r\n	@Override\r\n	public String toString() {\r\n		return \"Book [author=\" + author + \", price=\" + price + \", calendar=\" + calendar + \", id=\" + id + \"]\";\r\n	}\r\n}\r\n</pre>\r\n&nbsp;&nbsp;编写测试方法：</br>\r\n<pre name=\"code\" class=\"java\">\r\n/**\r\n * 转译测试\r\n * @author		zcl\r\n */\r\npublic class test {\r\n\r\n	/**\r\n	 * @throws JAXBException\r\n	 */\r\n	@Test\r\n	public void showMarshaller()  {\r\n		//组织数据\r\n		Book book = new Book();\r\n		book.setId(100);\r\n		book.setAuthor(\"James\");\r\n		book.setCalendar(new Date());\r\n		book.setPrice(23.45f);	 //默认是0.0\r\n		//转译成xml\r\n		String str = XMLToDto.convertToXml(book);\r\n		System.out.println(str);\r\n	}\r\n\r\n	/**\r\n	 * @throws JAXBException\r\n	 */\r\n	@Test\r\n	public void showUnMarshaller() {\r\n		//组织报文\r\n		String str = \"<?xml version=\\\"1.0\\\" encoding=\\\"UTF-8\\\" standalone=\\\"yes\\\"?>\" +\r\n			\"<book id=\\\"100\\\">\" +\r\n			\"    <author>zcl</author>\" +\r\n			 \"   <calendar>2015-05-28T09:25:56.004+08:00</calendar>\" +\r\n			  \"  <price_1>23.45</price_1>\" +\r\n			\"</book>\";\r\n		//调用工具类进行转译\r\n		Book book = XMLToDto.converyToJavaBean(str, Book.class);\r\n		System.out.println(book);\r\n	}\r\n}\r\n</pre>\r\n输出结果分别为：</br>\r\n<pre name=\"code\" class=\"java\">\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<book id=\"100\">\r\n    <author>James</author>\r\n    <calendar>2013-03-29T14:50:58.974+08:00</calendar>\r\n    <price_1>23.45</price_1>\r\n</book>\r\nBook [author=James, price=23.45, calendar=Fri Mar 29 09:25:56 CST 2013, id=100]\r\n</pre>\r\n二.公司实例（以责任金为例）</br>\r\n&nbsp;&nbsp;1：组织数据</br>\r\n&nbsp;&nbsp;在发送报文给交互系统之前，我们需要将本方系统中需要传送的数据做组织，并形成相应的vo类给予封装。如下：(为非车理赔系统主干代码ReserveServiceSpringImpl中autoSendOutstanding()方法中的一段代码)</br>\r\n<pre name=\"code\" class=\"java\">\r\n		//组织信息\r\n		ReserveCommonVo reserveCommonVo = new ReserveCommonVo();\r\n		reserveCommonVo = this.organizateAutoSendOutstanding(certiNo,prpLcMain);\r\n		//基本信息\r\n		ReqKeyInfoVo reqKeyInfoVo = new ReqKeyInfoVo();\r\n		reqKeyInfoVo.setClaimno(reserveCommonVo.getClaimno());\r\n		reqKeyInfoVo.setAssessdate(reserveCommonVo.getAssessdate());\r\n		reserveReq.setReqKeyInfoVo(reqKeyInfoVo);\r\n        //赔案主要信息reinsLRiskUnitPay 	\r\n		reserveReq.setPendingClaimMainList(reserveCommonVo.getPendingClaimMainList());\r\n</pre>\r\n&nbsp;&nbsp;在上述代码当中，所创建的reserveReq对象就封装为我们所需要发送给交互系统的信息。这其中还包含了报文头部的内容。</br>\r\n&nbsp;&nbsp;2.转译报文</br>\r\n在发送报文给交互系统之前，我们要将封装好的vo类转译成xml的形式。在系统当中，提供了ReserveClientUtil这样一个工具类，如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic static String requestToXml(ReserveRequest request){\r\n		XStream xStream = new XStream(new XppDriver(new XmlFriendlyReplacer(\"-_\",\"_\")));\r\n		aliasXStream(xStream);\r\n		String responseXML = xStream.toXML(request);\r\n		responseXML = responseXML.replaceAll(\"ReserveRequest\",ReserveClientConst.TEXT_PACKET_EXT);\r\n		responseXML = responseXML.replaceAll(\"/\"+ReserveClientConst.TEXT_PACKET_EXT,ReserveClientConst.TEXT_PACKET_REQ);\r\n		return ReserveClientConst.XML_HEAD+responseXML;\r\n	}\r\n</pre>\r\n在这个过程当中，我们引入了xstream这样一个jar包。在初始化xStream这样一个实例对象并调用toXML方法并进行基本参数的修改和报文头编码格式的修改之后便可以返回所需要的报文格式。</br>\r\n另外需要注意aliasXStream()，是为了给Class取别名，这样可以避免报文当中出现相应Class的完整包路径，如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\nprivate static void aliasXStream(XStream xStream) {\r\n		\r\n		/**消息头 */\r\n		xStream.alias(\"ReserveRequest\",ReserveRequest.class);\r\n\r\n		xStream.aliasField(\"requesthead\", ReserveRequest.class,\"reqHead\");\r\n		xStream.aliasField(\"keyinfo\", ReserveRequest.class,\"reqKeyInfoVo\");\r\n		xStream.aliasField(\"pendingclaimmainlist\", ReserveRequest.class,\"pendingClaimMainList\");\r\n																					\r\n		\r\n		xStream.alias(\"ReserveResponse\", ReserveResponse.class);\r\n		xStream.aliasField(\"responsehead\", ReserveResponse.class, \"resHead\");\r\n\r\n		/**消息内容 */\r\n		xStream.alias(\"assessdirectfee\", AssessDirectFeeVo.class);\r\n		xStream.alias(\"assessindemnity\", AssessIndemnityVo.class);\r\n		xStream.alias(\"noverifydirectfee\", NoverifyDirectFeeVo.class);\r\n		xStream.alias(\"noverifyindemnity\", NoverifyIndemnityVo.class);\r\n		xStream.alias(\"pendingclaimmain\", PendingClaimMainVo.class);\r\n		xStream.alias(\"string\",String.class);\r\n		\r\n		xStream.aliasField(\"assessindemnitylist\", PendingClaimMainVo.class,\"assessIndemnityList\");\r\n		xStream.aliasField(\"noverifyindemnitylist\", PendingClaimMainVo.class,\"noverifyIndemnityList\");\r\n		xStream.aliasField(\"assessdirectfeelist\", PendingClaimMainVo.class,\"assessDirectFeeList\");\r\n		xStream.aliasField(\"noverifydirectfeelist\", PendingClaimMainVo.class,\"noverifyDirectFeeList\");\r\n		\r\n		//DATE类型判断注册\r\n		xStream.registerConverter(new DateSingleValueConverter());\r\n		xStream.registerConverter(new BigDecimalSingleValueConverter());\r\n		xStream.registerConverter(new IntegerSingleValueConverter());\r\n		xStream.registerConverter(new StringSingleValueConverter());\r\n	}\r\n</pre>\r\n3.发送报文</br>\r\n这个环节两个系统交互过程当中的核心部分。这是一个调用对方接口发送报文的过程。</br>\r\n理赔系统当中ReserveClient类当中当中的send()方法完成了这样一个过程并返回一个调用接口之后的响应报文如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\n/**\r\n	 * 发送并返回服务器的字符串\r\n	 */\r\n	private String send(String url, String requestXML) {\r\n\r\n		String msgXML = \"\";\r\n		logger.info(\"责任金系统接口路径:\" + url);\r\n		logger.info(\"发送到责任金系统的数据:\" + requestXML);\r\n		HttpURLConnection httpConnection;\r\n		try {\r\n			httpConnection = (HttpURLConnection) new URL(url).openConnection();\r\n			httpConnection.setRequestMethod(\"POST\");\r\n			httpConnection.setRequestProperty(\"content-type\",\"text/xml,charset=gbk\");\r\n			httpConnection.setDoOutput(true);\r\n			httpConnection.setDoInput(true);\r\n			httpConnection.setAllowUserInteraction(true);\r\n			httpConnection.setConnectTimeout(CommonUtil.getConfigIntValue(\r\n					CodeConstants.SettingParamNameFor3G.SETTING_INFO_FOR3G,\r\n					CodeConstants.SettingParamNameFor3G.RESERVE_CONNECT_TIMEOUT));\r\n			httpConnection.setReadTimeout(CommonUtil.getConfigIntValue(\r\n					CodeConstants.SettingParamNameFor3G.SETTING_INFO_FOR3G,\r\n					CodeConstants.SettingParamNameFor3G.RESERVE_CONNECT_TIMEOUT));\r\n			httpConnection.connect();\r\n\r\n			// 2、发送数据\r\n			OutputStream outputStream = httpConnection.getOutputStream();\r\n			outputStream.write(requestXML.getBytes());\r\n			outputStream.flush();\r\n			outputStream.close();\r\n			logger.info(\"发送数据完毕\");\r\n\r\n			// 3、返回数据\r\n			InputStreamReader inputStreamReader = new InputStreamReader(\r\n					httpConnection.getInputStream(),\"GBK\");\r\n			logger.info(\"开始接受数据\");\r\n			BufferedReader bufferedReader = new BufferedReader(\r\n					inputStreamReader);\r\n			logger.info(\"接受数据\");\r\n			StringBuffer inputLines = new StringBuffer();\r\n			char[] cbuf = new char[1024];\r\n			for (int len = bufferedReader.read(cbuf) ; len >0 ; len = bufferedReader.read(cbuf)) {\r\n				inputLines.append(cbuf,0,len);\r\n			}\r\n			inputStreamReader.close();\r\n			bufferedReader.close();\r\n\r\n			// 4、关闭连接\r\n			httpConnection.disconnect();\r\n			msgXML = inputLines.toString();\r\n			logger.info(\"客户端接收的原始数据:\" + msgXML);\r\n		} catch (MalformedURLException e) {\r\n			logger.error(\"错误信息:\" + e.toString());\r\n			throw new BusinessException(\"连接责任金系统接口失败：\"+e.getMessage(),false);\r\n		} catch (IOException e1) {\r\n			logger.error(\"错误信息:\" + e1.toString());\r\n			throw new BusinessException(\"连接责任金系统接口失败：\"+e1.getMessage(),false);\r\n		}\r\n		return msgXML;\r\n	}\r\n</pre>\r\n在这个过程当中，引入了Java net包当中的HttpURLConnection，URL这样两个类用于创建连接。在设置连接参数之后，调用connect()方法实现连接，最后将请求报文用流的方式写入完成发送。再连接关闭之前，用遍历的方式读出相应报文用于在本系统做解析。</br>\r\n4.解析返回报文报文</br>\r\n在调用交互系统接口之后，会取得相应的返回报文。系统需要将其做解析，取得相应的vo以便在系统中使用。非车理赔系统当中同样提供了将报文解析成vo类的方法，以责任金为例，在ReserveClientUtil当中有xmlToResponse()方法可以解析相应的报文，如下：</br>\r\n<pre name=\"code\" class=\"java\">\r\npublic static Object xmlToResponse(String xml) throws Exception {\r\n		XStream xStream = new XStream(new XppDriver(new XmlFriendlyReplacer(\"-_\",\"_\")));\r\n		xml = xml.replaceAll(\"PACKET\",\"ReserveResponse\");\r\n		aliasXStream(xStream);\r\n		Object object = xStream.fromXML(xml);\r\n		return object;\r\n	}\r\n</pre>\r\n原理与转译报文大体相同。</br>\r\n\r\n', null);

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(800) DEFAULT NULL,
  `reply` varchar(800) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `im` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `replyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_relationship_idiard
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_relationship_idiard`;
CREATE TABLE `hibernate_relationship_idiard` (
  `id` int(20) NOT NULL,
  `idcard_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_relationship_idiard
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_relationship_manytomany
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_relationship_manytomany`;
CREATE TABLE `hibernate_relationship_manytomany` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_relationship_manytomany
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_relationship_onetomany
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_relationship_onetomany`;
CREATE TABLE `hibernate_relationship_onetomany` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_relationship_onetomany
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_relationship_onetoone
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_relationship_onetoone`;
CREATE TABLE `hibernate_relationship_onetoone` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_relationship_onetoone
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_relationship_person
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_relationship_person`;
CREATE TABLE `hibernate_relationship_person` (
  `person_id` varchar(20) NOT NULL,
  `person_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_relationship_person
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_user_info
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_user_info`;
CREATE TABLE `hibernate_user_info` (
  `user_id` int(255) NOT NULL,
  `user_username` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_user_info
-- ----------------------------
INSERT INTO `hibernate_user_info` VALUES ('1', '22', '33');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `enable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_action
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_action`;
CREATE TABLE `jbpm_action` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `class` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ISPROPAGATIONALLOWED_` bit(1) DEFAULT NULL,
  `ACTIONEXPRESSION_` varchar(255) DEFAULT NULL,
  `ISASYNC_` bit(1) DEFAULT NULL,
  `REFERENCEDACTION_` bigint(20) DEFAULT NULL,
  `ACTIONDELEGATION_` bigint(20) DEFAULT NULL,
  `EVENT_` bigint(20) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `TIMERNAME_` varchar(255) DEFAULT NULL,
  `DUEDATE_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `TIMERACTION_` bigint(20) DEFAULT NULL,
  `EXPRESSION_` mediumtext,
  `EVENTINDEX_` int(11) DEFAULT NULL,
  `EXCEPTIONHANDLER_` bigint(20) DEFAULT NULL,
  `EXCEPTIONHANDLERINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ACTION_REFACT` (`REFERENCEDACTION_`),
  KEY `FK_CRTETIMERACT_TA` (`TIMERACTION_`),
  KEY `FK_ACTION_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_ACTION_EVENT` (`EVENT_`),
  KEY `FK_ACTION_ACTNDEL` (`ACTIONDELEGATION_`),
  KEY `FK_ACTION_EXPTHDL` (`EXCEPTIONHANDLER_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_action
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_bytearray`;
CREATE TABLE `jbpm_bytearray` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `FILEDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_BYTEARR_FILDEF` (`FILEDEFINITION_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_byteblock
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_byteblock`;
CREATE TABLE `jbpm_byteblock` (
  `PROCESSFILE_` bigint(20) NOT NULL,
  `BYTES_` blob,
  `INDEX_` int(11) NOT NULL,
  PRIMARY KEY (`PROCESSFILE_`,`INDEX_`),
  KEY `FK_BYTEBLOCK_FILE` (`PROCESSFILE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_byteblock
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_comment
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_comment`;
CREATE TABLE `jbpm_comment` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `MESSAGE_` mediumtext,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `TOKENINDEX_` int(11) DEFAULT NULL,
  `TASKINSTANCEINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_COMMENT_TOKEN` (`TOKEN_`),
  KEY `FK_COMMENT_TSK` (`TASKINSTANCE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_comment
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_decisionconditions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_decisionconditions`;
CREATE TABLE `jbpm_decisionconditions` (
  `DECISION_` bigint(20) NOT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `EXPRESSION_` varchar(255) DEFAULT NULL,
  `INDEX_` int(11) NOT NULL,
  PRIMARY KEY (`DECISION_`,`INDEX_`),
  KEY `FK_DECCOND_DEC` (`DECISION_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_decisionconditions
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_delegation
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_delegation`;
CREATE TABLE `jbpm_delegation` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASSNAME_` mediumtext,
  `CONFIGURATION_` mediumtext,
  `CONFIGTYPE_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_DELEGATION_PRCD` (`PROCESSDEFINITION_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_delegation
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_event
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_event`;
CREATE TABLE `jbpm_event` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `EVENTTYPE_` varchar(255) DEFAULT NULL,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_EVENT_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_EVENT_TRANS` (`TRANSITION_`),
  KEY `FK_EVENT_NODE` (`NODE_`),
  KEY `FK_EVENT_TASK` (`TASK_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_event
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_exceptionhandler
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_exceptionhandler`;
CREATE TABLE `jbpm_exceptionhandler` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `EXCEPTIONCLASSNAME_` text,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `GRAPHELEMENTINDEX_` int(11) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_exceptionhandler
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_group
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_group`;
CREATE TABLE `jbpm_id_group` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ID_GRP_PARENT` (`PARENT_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_membership`;
CREATE TABLE `jbpm_id_membership` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ROLE_` varchar(255) DEFAULT NULL,
  `USER_` bigint(20) DEFAULT NULL,
  `GROUP_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ID_MEMSHIP_GRP` (`GROUP_`),
  KEY `FK_ID_MEMSHIP_USR` (`USER_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_permissions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_permissions`;
CREATE TABLE `jbpm_id_permissions` (
  `ENTITY_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTION_` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_id_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_user
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_user`;
CREATE TABLE `jbpm_id_user` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `EMAIL_` varchar(255) DEFAULT NULL,
  `PASSWORD_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_log
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_log`;
CREATE TABLE `jbpm_log` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `INDEX_` int(11) DEFAULT NULL,
  `DATE_` datetime DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `MESSAGE_` mediumtext,
  `EXCEPTION_` mediumtext,
  `ACTION_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `ENTER_` datetime DEFAULT NULL,
  `LEAVE_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `NEWLONGVALUE_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `CHILD_` bigint(20) DEFAULT NULL,
  `SOURCENODE_` bigint(20) DEFAULT NULL,
  `DESTINATIONNODE_` bigint(20) DEFAULT NULL,
  `VARIABLEINSTANCE_` bigint(20) DEFAULT NULL,
  `OLDBYTEARRAY_` bigint(20) DEFAULT NULL,
  `NEWBYTEARRAY_` bigint(20) DEFAULT NULL,
  `OLDDATEVALUE_` datetime DEFAULT NULL,
  `NEWDATEVALUE_` datetime DEFAULT NULL,
  `OLDDOUBLEVALUE_` double DEFAULT NULL,
  `NEWDOUBLEVALUE_` double DEFAULT NULL,
  `OLDLONGIDCLASS_` varchar(255) DEFAULT NULL,
  `OLDLONGIDVALUE_` bigint(20) DEFAULT NULL,
  `NEWLONGIDCLASS_` varchar(255) DEFAULT NULL,
  `NEWLONGIDVALUE_` bigint(20) DEFAULT NULL,
  `OLDSTRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `OLDSTRINGIDVALUE_` varchar(255) DEFAULT NULL,
  `NEWSTRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `NEWSTRINGIDVALUE_` varchar(255) DEFAULT NULL,
  `OLDLONGVALUE_` bigint(20) DEFAULT NULL,
  `OLDSTRINGVALUE_` mediumtext,
  `NEWSTRINGVALUE_` mediumtext,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKACTORID_` varchar(255) DEFAULT NULL,
  `TASKOLDACTORID_` varchar(255) DEFAULT NULL,
  `SWIMLANEINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_LOG_SOURCENODE` (`SOURCENODE_`),
  KEY `FK_LOG_DESTNODE` (`DESTINATIONNODE_`),
  KEY `FK_LOG_TOKEN` (`TOKEN_`),
  KEY `FK_LOG_TRANSITION` (`TRANSITION_`),
  KEY `FK_LOG_TASKINST` (`TASKINSTANCE_`),
  KEY `FK_LOG_CHILDTOKEN` (`CHILD_`),
  KEY `FK_LOG_OLDBYTES` (`OLDBYTEARRAY_`),
  KEY `FK_LOG_SWIMINST` (`SWIMLANEINSTANCE_`),
  KEY `FK_LOG_NEWBYTES` (`NEWBYTEARRAY_`),
  KEY `FK_LOG_ACTION` (`ACTION_`),
  KEY `FK_LOG_VARINST` (`VARIABLEINSTANCE_`),
  KEY `FK_LOG_NODE` (`NODE_`),
  KEY `FK_LOG_PARENT` (`PARENT_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_log
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_message
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_message`;
CREATE TABLE `jbpm_message` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `DESTINATION_` varchar(255) DEFAULT NULL,
  `EXCEPTION_` mediumtext,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(255) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_CMD_ACTION` (`ACTION_`),
  KEY `FK_MSG_TOKEN` (`TOKEN_`),
  KEY `FK_CMD_NODE` (`NODE_`),
  KEY `FK_CMD_TASKINST` (`TASKINSTANCE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_message
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_moduledefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduledefinition`;
CREATE TABLE `jbpm_moduledefinition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` mediumtext,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `STARTTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_MODDEF_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_TSKDEF_START` (`STARTTASK_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_moduledefinition
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_moduleinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduleinstance`;
CREATE TABLE `jbpm_moduleinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_MODINST_PRCINST` (`PROCESSINSTANCE_`),
  KEY `FK_TASKMGTINST_TMD` (`TASKMGMTDEFINITION_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_moduleinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_node
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_node`;
CREATE TABLE `jbpm_node` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `ISASYNC_` bit(1) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `SUPERSTATE_` bigint(20) DEFAULT NULL,
  `SUBPROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `DECISIONEXPRESSION_` varchar(255) DEFAULT NULL,
  `DECISIONDELEGATION` bigint(20) DEFAULT NULL,
  `SIGNAL_` int(11) DEFAULT NULL,
  `CREATETASKS_` bit(1) DEFAULT NULL,
  `ENDTASKS_` bit(1) DEFAULT NULL,
  `NODECOLLECTIONINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_DECISION_DELEG` (`DECISIONDELEGATION`),
  KEY `FK_NODE_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_NODE_ACTION` (`ACTION_`),
  KEY `FK_PROCST_SBPRCDEF` (`SUBPROCESSDEFINITION_`),
  KEY `FK_NODE_SUPERSTATE` (`SUPERSTATE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_node
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_pooledactor
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_pooledactor`;
CREATE TABLE `jbpm_pooledactor` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `SWIMLANEINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `IDX_PLDACTR_ACTID` (`ACTORID_`),
  KEY `FK_POOLEDACTOR_SLI` (`SWIMLANEINSTANCE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_pooledactor
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_processdefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processdefinition`;
CREATE TABLE `jbpm_processdefinition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `ISTERMINATIONIMPLICIT_` bit(1) DEFAULT NULL,
  `STARTSTATE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_PROCDEF_STRTSTA` (`STARTSTATE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_processdefinition
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_processinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processinstance`;
CREATE TABLE `jbpm_processinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `ROOTTOKEN_` bigint(20) DEFAULT NULL,
  `SUPERPROCESSTOKEN_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_PROCIN_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_PROCIN_ROOTTKN` (`ROOTTOKEN_`),
  KEY `FK_PROCIN_SPROCTKN` (`SUPERPROCESSTOKEN_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_processinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_runtimeaction
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_runtimeaction`;
CREATE TABLE `jbpm_runtimeaction` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `EVENTTYPE_` varchar(255) DEFAULT NULL,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCEINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_RTACTN_PROCINST` (`PROCESSINSTANCE_`),
  KEY `FK_RTACTN_ACTION` (`ACTION_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_runtimeaction
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_swimlane
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlane`;
CREATE TABLE `jbpm_swimlane` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTORIDEXPRESSION_` varchar(255) DEFAULT NULL,
  `POOLEDACTORSEXPRESSION_` varchar(255) DEFAULT NULL,
  `ASSIGNMENTDELEGATION_` bigint(20) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_SWL_ASSDEL` (`ASSIGNMENTDELEGATION_`),
  KEY `FK_SWL_TSKMGMTDEF` (`TASKMGMTDEFINITION_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_swimlane
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_swimlaneinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlaneinstance`;
CREATE TABLE `jbpm_swimlaneinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKMGMTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_SWIMLANEINST_TM` (`TASKMGMTINSTANCE_`),
  KEY `FK_SWIMLANEINST_SL` (`SWIMLANE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_swimlaneinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_task
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_task`;
CREATE TABLE `jbpm_task` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `DESCRIPTION_` mediumtext,
  `ISBLOCKING_` bit(1) DEFAULT NULL,
  `ISSIGNALLING_` bit(1) DEFAULT NULL,
  `DUEDATE_` varchar(255) DEFAULT NULL,
  `ACTORIDEXPRESSION_` varchar(255) DEFAULT NULL,
  `POOLEDACTORSEXPRESSION_` varchar(255) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  `TASKNODE_` bigint(20) DEFAULT NULL,
  `STARTSTATE_` bigint(20) DEFAULT NULL,
  `ASSIGNMENTDELEGATION_` bigint(20) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKCONTROLLER_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TASK_STARTST` (`STARTSTATE_`),
  KEY `FK_TASK_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_TASK_ASSDEL` (`ASSIGNMENTDELEGATION_`),
  KEY `FK_TASK_SWIMLANE` (`SWIMLANE_`),
  KEY `FK_TASK_TASKNODE` (`TASKNODE_`),
  KEY `FK_TASK_TASKMGTDEF` (`TASKMGMTDEFINITION_`),
  KEY `FK_TSK_TSKCTRL` (`TASKCONTROLLER_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_task
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskactorpool
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskactorpool`;
CREATE TABLE `jbpm_taskactorpool` (
  `TASKINSTANCE_` bigint(20) NOT NULL,
  `POOLEDACTOR_` bigint(20) NOT NULL,
  PRIMARY KEY (`TASKINSTANCE_`,`POOLEDACTOR_`),
  KEY `FK_TASKACTPL_TSKI` (`TASKINSTANCE_`),
  KEY `FK_TSKACTPOL_PLACT` (`POOLEDACTOR_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_taskactorpool
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskcontroller
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskcontroller`;
CREATE TABLE `jbpm_taskcontroller` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TASKCONTROLLERDELEGATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TSKCTRL_DELEG` (`TASKCONTROLLERDELEGATION_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_taskcontroller
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskinstance`;
CREATE TABLE `jbpm_taskinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` mediumtext,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `ISCANCELLED_` bit(1) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `ISOPEN_` bit(1) DEFAULT NULL,
  `ISSIGNALLING_` bit(1) DEFAULT NULL,
  `ISBLOCKING_` bit(1) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `SWIMLANINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKMGMTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `IDX_TASK_ACTORID` (`ACTORID_`),
  KEY `FK_TASKINST_TMINST` (`TASKMGMTINSTANCE_`),
  KEY `FK_TASKINST_TOKEN` (`TOKEN_`),
  KEY `FK_TASKINST_SLINST` (`SWIMLANINSTANCE_`),
  KEY `FK_TASKINST_TASK` (`TASK_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_taskinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_timer
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_timer`;
CREATE TABLE `jbpm_timer` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `EXCEPTION_` mediumtext,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `GRAPHELEMENTTYPE_` varchar(255) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TIMER_PRINST` (`PROCESSINSTANCE_`),
  KEY `FK_TIMER_TOKEN` (`TOKEN_`),
  KEY `FK_TIMER_ACTION` (`ACTION_`),
  KEY `FK_TIMER_TSKINST` (`TASKINSTANCE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_timer
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_token
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_token`;
CREATE TABLE `jbpm_token` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `NODEENTER_` datetime DEFAULT NULL,
  `NEXTLOGINDEX_` int(11) DEFAULT NULL,
  `ISABLETOREACTIVATEPARENT_` bit(1) DEFAULT NULL,
  `ISTERMINATIONIMPLICIT_` bit(1) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `SUBPROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TOKEN_SUBPI` (`SUBPROCESSINSTANCE_`),
  KEY `FK_TOKEN_PROCINST` (`PROCESSINSTANCE_`),
  KEY `FK_TOKEN_NODE` (`NODE_`),
  KEY `FK_TOKEN_PARENT` (`PARENT_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_token
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_tokenvariablemap
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_tokenvariablemap`;
CREATE TABLE `jbpm_tokenvariablemap` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `CONTEXTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TKVARMAP_TOKEN` (`TOKEN_`),
  KEY `FK_TKVARMAP_CTXT` (`CONTEXTINSTANCE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_tokenvariablemap
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_transition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_transition`;
CREATE TABLE `jbpm_transition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `FROM_` bigint(20) DEFAULT NULL,
  `TO_` bigint(20) DEFAULT NULL,
  `FROMINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TRANSITION_FROM` (`FROM_`),
  KEY `FK_TRANS_PROCDEF` (`PROCESSDEFINITION_`),
  KEY `FK_TRANSITION_TO` (`TO_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_transition
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_variableaccess
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableaccess`;
CREATE TABLE `jbpm_variableaccess` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VARIABLENAME_` varchar(255) DEFAULT NULL,
  `ACCESS_` varchar(255) DEFAULT NULL,
  `MAPPEDNAME_` varchar(255) DEFAULT NULL,
  `PROCESSSTATE_` bigint(20) DEFAULT NULL,
  `TASKCONTROLLER_` bigint(20) DEFAULT NULL,
  `INDEX_` int(11) DEFAULT NULL,
  `SCRIPT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_VARACC_PROCST` (`PROCESSSTATE_`),
  KEY `FK_VARACC_SCRIPT` (`SCRIPT_`),
  KEY `FK_VARACC_TSKCTRL` (`TASKCONTROLLER_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_variableaccess
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_variableinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableinstance`;
CREATE TABLE `jbpm_variableinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CONVERTER_` char(1) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TOKENVARIABLEMAP_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `BYTEARRAYVALUE_` bigint(20) DEFAULT NULL,
  `DATEVALUE_` datetime DEFAULT NULL,
  `DOUBLEVALUE_` double DEFAULT NULL,
  `LONGIDCLASS_` varchar(255) DEFAULT NULL,
  `LONGVALUE_` bigint(20) DEFAULT NULL,
  `STRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `STRINGVALUE_` varchar(255) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_VARINST_PRCINST` (`PROCESSINSTANCE_`),
  KEY `FK_VARINST_TKVARMP` (`TOKENVARIABLEMAP_`),
  KEY `FK_VARINST_TK` (`TOKEN_`),
  KEY `FK_BYTEINST_ARRAY` (`BYTEARRAYVALUE_`),
  KEY `FK_VAR_TSKINST` (`TASKINSTANCE_`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jbpm_variableinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jira
-- ----------------------------
DROP TABLE IF EXISTS `jira`;
CREATE TABLE `jira` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimtype` varchar(50) DEFAULT NULL,
  `questen` varchar(255) DEFAULT NULL,
  `questenremark` varchar(1000) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL COMMENT '版块名称',
  `testNo` varchar(100) DEFAULT NULL COMMENT '板块描述',
  `tester` varchar(100) DEFAULT NULL COMMENT '序号',
  `status` char(10) DEFAULT NULL COMMENT '序号',
  `devremark` char(100) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jira
-- ----------------------------

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `commentSize` int(11) DEFAULT NULL,
  `albumId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for photo_comment
-- ----------------------------
DROP TABLE IF EXISTS `photo_comment`;
CREATE TABLE `photo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `photoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo_comment
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `enabled` bit(1) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` text,
  `img` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `productCategoryId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_category
-- ----------------------------

-- ----------------------------
-- Table structure for prplcheck
-- ----------------------------
DROP TABLE IF EXISTS `prplcheck`;
CREATE TABLE `prplcheck` (
  `id` int(11) NOT NULL,
  `registNo` char(22) DEFAULT NULL,
  `checktype` char(1) DEFAULT NULL,
  `damageName` varchar(40) DEFAULT NULL,
  `lossType` varchar(40) DEFAULT NULL,
  `damageAddress` varchar(120) DEFAULT NULL,
  `reporterName` varchar(20) DEFAULT NULL,
  `Column_8` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prplcheck
-- ----------------------------

-- ----------------------------
-- Table structure for prplregist
-- ----------------------------
DROP TABLE IF EXISTS `prplregist`;
CREATE TABLE `prplregist` (
  `registno` char(22) NOT NULL,
  `lflag` char(2) DEFAULT NULL,
  `businessid` decimal(19,0) DEFAULT NULL,
  `accidentno` char(22) DEFAULT NULL,
  `reportdate` date DEFAULT NULL,
  `reporthour` char(8) DEFAULT NULL,
  `reportorname` varchar(20) DEFAULT NULL,
  `reportornumber` varchar(20) DEFAULT NULL,
  `reportormobile` varchar(20) DEFAULT NULL,
  `linkername` varchar(20) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `linkermobile` varchar(20) DEFAULT NULL,
  `relationship` varchar(3) DEFAULT NULL,
  `mercyflag` varchar(3) DEFAULT NULL,
  `damagedate` date DEFAULT NULL,
  `damagehour` char(8) DEFAULT NULL,
  `damagecode` varchar(3) DEFAULT NULL,
  `damagename` varchar(40) DEFAULT NULL,
  `damagetypecode` varchar(3) DEFAULT NULL,
  `damagetypename` varchar(20) DEFAULT NULL,
  `damageareacode` varchar(3) DEFAULT NULL,
  `damageareaname` varchar(20) DEFAULT NULL,
  `damageaddresstype` varchar(3) DEFAULT NULL,
  `damageaddress` varchar(120) DEFAULT NULL,
  `checkaddress` varchar(120) DEFAULT NULL,
  `reportaddress` varchar(120) DEFAULT NULL,
  `checkareacode` varchar(10) DEFAULT NULL,
  `obligation` char(1) DEFAULT NULL,
  `lossitemtypes` varchar(60) DEFAULT NULL,
  `qdcasetype` varchar(3) DEFAULT NULL,
  `compensorname` varchar(30) DEFAULT NULL,
  `compensorcode` varchar(10) DEFAULT NULL,
  `operatorcode` char(10) DEFAULT NULL,
  `operatorcomcode` char(8) DEFAULT NULL,
  `firstregcode` char(10) DEFAULT NULL,
  `firstregcomcode` char(8) DEFAULT NULL,
  `makecom` char(8) DEFAULT NULL,
  `inputtime` datetime DEFAULT NULL,
  `ciindemduty` decimal(8,4) DEFAULT NULL,
  `claimstatus` char(1) DEFAULT NULL,
  `claimtype` varchar(3) DEFAULT NULL,
  `cancelflag` char(1) DEFAULT NULL,
  `submitnumber` int(11) DEFAULT NULL,
  `tpflag` char(2) DEFAULT NULL,
  `tpdisposeflag` char(1) DEFAULT NULL,
  `validflag` char(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `flag` char(10) DEFAULT NULL,
  `inserttimeforhis` datetime DEFAULT NULL,
  `operatetimeforhis` datetime DEFAULT NULL,
  PRIMARY KEY (`registno`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of prplregist
-- ----------------------------

-- ----------------------------
-- Table structure for prpltask
-- ----------------------------
DROP TABLE IF EXISTS `prpltask`;
CREATE TABLE `prpltask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` char(10) DEFAULT NULL,
  `taskname` tinytext,
  `usercode` tinytext,
  `duration` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of prpltask
-- ----------------------------

-- ----------------------------
-- Table structure for qingjia
-- ----------------------------
DROP TABLE IF EXISTS `qingjia`;
CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of qingjia
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for saa_class
-- ----------------------------
DROP TABLE IF EXISTS `saa_class`;
CREATE TABLE `saa_class` (
  `classcode` char(3) NOT NULL,
  `classname` char(40) DEFAULT NULL,
  `classename` varchar(40) DEFAULT NULL,
  `validstatus` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of saa_class
-- ----------------------------

-- ----------------------------
-- Table structure for saa_risk
-- ----------------------------
DROP TABLE IF EXISTS `saa_risk`;
CREATE TABLE `saa_risk` (
  `riskcode` char(3) NOT NULL,
  `riskcname` char(50) DEFAULT NULL,
  `riskename` varchar(60) DEFAULT NULL,
  `classcode` char(3) DEFAULT NULL,
  `validstatus` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of saa_risk
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `content` text,
  `img` varchar(50) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `serviceTypeId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serviceTypeId` (`serviceTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- Table structure for service_type
-- ----------------------------
DROP TABLE IF EXISTS `service_type`;
CREATE TABLE `service_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `remark` varchar(400) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_type
-- ----------------------------

-- ----------------------------
-- Table structure for thumb
-- ----------------------------
DROP TABLE IF EXISTS `thumb`;
CREATE TABLE `thumb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thumb
-- ----------------------------

-- ----------------------------
-- Table structure for thumb_img
-- ----------------------------
DROP TABLE IF EXISTS `thumb_img`;
CREATE TABLE `thumb_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `origImg` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thumb_img
-- ----------------------------

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `content` text,
  `commentSize` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `tip` bit(1) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `boardId` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------

-- ----------------------------
-- Table structure for topic_comment
-- ----------------------------
DROP TABLE IF EXISTS `topic_comment`;
CREATE TABLE `topic_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `ip` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `topicId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic_comment
-- ----------------------------

-- ----------------------------
-- Table structure for twitter
-- ----------------------------
DROP TABLE IF EXISTS `twitter`;
CREATE TABLE `twitter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `commentSize` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twitter
-- ----------------------------

-- ----------------------------
-- Table structure for twitter_comment
-- ----------------------------
DROP TABLE IF EXISTS `twitter_comment`;
CREATE TABLE `twitter_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `twitterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twitter_comment
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `male` bit(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `constellation` tinyint(2) DEFAULT NULL,
  `birthAttrib` tinyint(2) DEFAULT NULL,
  `marital` tinyint(1) DEFAULT NULL,
  `bloodType` tinyint(1) DEFAULT NULL,
  `hobby` varchar(50) DEFAULT NULL,
  `intro` text,
  `account_expired` bit(1) DEFAULT NULL,
  `account_locked` bit(1) DEFAULT NULL,
  `credentials_expired` bit(1) DEFAULT NULL,
  `account_enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
