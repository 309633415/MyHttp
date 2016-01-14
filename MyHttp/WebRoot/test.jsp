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
<p>SpringMVC的特点：<br/>
&nbsp;&nbsp;1、清晰的角色划分，Spring在Model、View和Controller方面提供了一个非常清晰的划分，这3个方面真正是各司其职，各负其责。<br/>
&nbsp;&nbsp;2、灵活的配置功能，因为Spring的核心是IOC,同样在实现MVC上，也可以把各种类当做Bean来通过XML进行配置。<br/>
&nbsp;&nbsp;3、提供了大量的控制器接口和实现类，这样开发人员可以使用Spring提供的控制器实现类，也可以自己实现控制器接口。<br/>
&nbsp;&nbsp;4、SpringMVC是真正的View层实现无关的，它不会强制开发员使用JSP,我们可以使用其他View技术，比如Velocity，Xskt等。<br/>
&nbsp;&nbsp;5、国际化支持，Spring的ApplicationContext提供了对国际化的支持，在这里可以很方便的使用。<br/>
&nbsp;&nbsp;6、面向接口编程，其实这不仅是springMVC的特点，整个Spring来看，这个特点都是很明显的，因为它使开发人员对程序易于进行测试，并且很方便的进行管理。<br/>
&nbsp;&nbsp;7、Spring提供了Web应用开发的一整套流程，而不仅仅是MVC，他们之间可以很方便的结合在一起。下面有一个自己做得例子，做完这个例子后真的体会到了SpringMVC的强大。</p>

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
 1:jar包下载地址：<a href="http://download.csdn.net/detail/jiashubing/9403927" target="_blank">SpringMVC框架所需要的jar包</a><br/>
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
 &nbsp;&nbsp;接下来搭建第一个SpringMVC框架的项目，实现从数据库中读取数据的功能。<br/>
 &nbsp;&nbsp;首先为自己的项目新建一个数据库，本例使用mysql数据库，创建了一张USERMBO表，里面有三个字段 USERID，USERNAME，USERAGE，使用下面的sql语句快速建表：<br/>
   <pre  name="code" class="xml">
   SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `usermbo`
-- ----------------------------
DROP TABLE IF EXISTS `usermbo`;
CREATE TABLE `usermbo` (
  `USERID` int(11) NOT NULL DEFAULT '0',
  `USERNAME` varchar(50) DEFAULT NULL,
  `USERAGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermbo
-- ----------------------------
INSERT INTO `usermbo` VALUES ('1', '小红', '25');
INSERT INTO `usermbo` VALUES ('2', '小明', '27');
INSERT INTO `usermbo` VALUES ('3', '小花', '26');
</pre>
&nbsp;&nbsp; 然后新建一个项目，导入必要的jar包以后。配置WEB-INF目录下的web.xml，代码如下:</br>
   <pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;web-app version="2.5" xmlns="http://java.sun.com/xml/ns/javaee"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
	http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"&gt;
	&lt;servlet&gt;
		&lt;!--springmvc的核心是DispatcherServlet，它负责控制整个页面的请求路径--&gt;
		&lt;servlet-name&gt;dispatcherServlet&lt;/servlet-name&gt;
		&lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;
		&lt;!--初始化参数 &gt;--&gt;
		&lt;init-param&gt;
			&lt;!-- 这个param-name必须是contextConfigLocation--&gt;
			&lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
			&lt;param-value&gt;/WEB-INF/classes/applicationContext.xml&lt;/param-value&gt;
		&lt;/init-param&gt;
		&lt;load-on-startup&gt;2&lt;/load-on-startup&gt;
	&lt;/servlet&gt;
	&lt;!--拦截所有以do结尾的请求--&gt;
	&lt;servlet-mapping&gt;
		&lt;servlet-name&gt;dispatcherServlet&lt;/servlet-name&gt;
		&lt;url-pattern&gt;*.do&lt;/url-pattern&gt;
	&lt;/servlet-mapping&gt;
	&lt;!--处理从页面传递中文到后台而出现的中文乱码问题--&gt;
	&lt;filter&gt;
		&lt;filter-name&gt;encodingFilter&lt;/filter-name&gt;
		&lt;filter-class&gt;org.springframework.web.filter.CharacterEncodingFilter&lt;/filter-class&gt;
		&lt;init-param&gt;
			&lt;param-name&gt;encoding&lt;/param-name&gt;
			&lt;param-value&gt;UTF-8&lt;/param-value&gt;
		&lt;/init-param&gt;
	&lt;/filter&gt;
	&lt;filter-mapping&gt;
		&lt;filter-name&gt;encodingFilter&lt;/filter-name&gt;
		&lt;url-pattern&gt;/*&lt;/url-pattern&gt;
	&lt;/filter-mapping&gt;
	&lt;welcome-file-list&gt;
		&lt;welcome-file&gt;index.jsp&lt;/welcome-file&gt;
	&lt;/welcome-file-list&gt;
&lt;/web-app&gt;

</pre>
&nbsp;&nbsp;spring配置文件applicationContext.xml的代码如下：<br/>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.springframework.org/schema/beans 
	http://www.springframework.org/schema/beans/spring-beans-2.5.xsd"&gt;
	&lt;!-- 定义个缺省的控制适配器 --&gt;
	&lt;bean
		class="org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter" /&gt;
	&lt;!-- 获取配置文件 --&gt;
	&lt;bean id="config"
		class="org.springframework.beans.factory.config.PropertyPlaceholderConfigurer"&gt;
		&lt;property name="locations"&gt;
			&lt;list&gt;
				&lt;value&gt;classpath:db-config.properties&lt;/value&gt;
			&lt;/list&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!-- 获取数据源 --&gt;
	&lt;bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource"&gt;
		&lt;property name="driverClassName"&gt;
			&lt;value&gt;${db.dirverClass}&lt;/value&gt;
		&lt;/property&gt;
		&lt;property name="url"&gt;
			&lt;value&gt;${db.url}&lt;/value&gt;
		&lt;/property&gt;
		&lt;property name="username"&gt;
			&lt;value&gt;${db.username}&lt;/value&gt;
		&lt;/property&gt;
		&lt;property name="password"&gt;
			&lt;value&gt;${db.password}&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!--
		URL到处理器的映射列表可以配置多个
		mappings属性健值为URL程序文件地址，而值为处理器的Bean名字，URL程序文件地址可采用路径匹配的模式，如：
		com/mvc/t?st.jsp:匹配com/mvc/test.jsp、com/mvc/tast.jsp等
		 com/mvc /*.jsp：匹配所有com/mvc/下带jsp后缀的URL com/mvc
		/**/test.jsp：匹配所有在com/mvc路径下或子孙路径下的test.jsp com/mvc
		/**/*.jsp：匹配所有com/mvc路径下或子孙路径下带.jsp后缀的URL 
		cn/**/web/bla.jsp：匹配cn/option/web/dog.jsp cn/option/test/web/dog.jsp cn/web/ dog.jsp的请求
	--&gt;
	&lt;bean class="org.springframework.web.servlet.handler.SimpleUrlHandlerMapping"&gt;
		&lt;property name="mappings"&gt;
			&lt;value&gt;
				user.do=userAction
&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

	&lt;!--定义视图 通过internalResourceView来表示 使用的是Servlet/jsp技术--&gt;
	&lt;bean id="viewResolver"
		class="org.springframework.web.servlet.view.InternalResourceViewResolver"&gt;
		&lt;property name="viewClass"&gt;
			&lt;value&gt;org.springframework.web.servlet.view.InternalResourceView
			&lt;/value&gt;
		&lt;/property&gt;
		&lt;!--jsp存放的目录--&gt;
		&lt;property name="prefix"&gt;
			&lt;value&gt;jsp/&lt;/value&gt;
		&lt;/property&gt;
		&lt;!--jsp文件的后缀--&gt;
		&lt;property name="suffix"&gt;
			&lt;value&gt;.jsp&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;bean id="userDao" class="com.springmvc.UserDao "&gt;
		&lt;property name="dataSource" ref="dataSource"&gt;&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!--定义控制器--&gt;
	&lt;bean id="userAction" class="com.springmvc.UserController"&gt;
		&lt;property name="dao"&gt;
			&lt;ref bean="userDao" /&gt;
		&lt;/property&gt;
		&lt;property name="commandClass"&gt;
			&lt;value&gt;com.springmvc.UserDao&lt;/value&gt;
		&lt;/property&gt;
		&lt;property name="viewpage"&gt;
			&lt;value&gt;userInfo&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
&lt;/beans&gt;

</pre>
&nbsp;&nbsp;数据源配置文件db-config.properties的代码如下：<br/>
<pre  name="code" class="xml">
db.url=jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf8
db.username=root
db.password=19921002
db.dirverClass=com.mysql.jdbc.Driver
dbName=springmvcdb
</pre>
&nbsp;&nbsp;配置文件配置好以后我们开始编写具体的JAVA类，我们需要一个Dao类，一个Controller类和一个PO。把它们建在com.springmvc包下面、<br/>
&nbsp;&nbsp;UserControer.java代码如下：<br/>
<pre  name="code" class="java">
package com.springmvc;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

@SuppressWarnings("all")
// SimpleFormController是spring提供的表单控制器，把页面中Form中的元素名称设定为和bean中的一样，当传入的时候Spring会自动抓取form中和Bean名称一样的元素值，把它转换成一个bean,使得开发人员可以很方便的使用。
public class UserController extends SimpleFormController {
	private String viewpage;
	private UserDao dao;

	public String getViewpage() {
		return viewpage;
	}

	public void setViewpage(String viewpage) {
		this.viewpage = viewpage;
	}

	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
		UserDao tmp = (UserDao) command;
		Collection&lt;UserPO&gt; list = dao.doquery();
		List&lt;UserPO&gt; users = new ArrayList&lt;UserPO&gt;();
		UserPO user;
		for (UserPO userPO : list) {
			user = new UserPO();
			user.setUserId(userPO.getUserId());
			user.setUserName(userPO.getUserName());
			user.setUserAge(userPO.getUserAge());
			users.add(user);
		}
		Map mp = new HashMap();
		mp.put("list", users);
		return new ModelAndView(getViewpage(), mp);
	}

	public void setDao(UserDao dao) {
		this.dao = dao;
	}

}

</pre>
&nbsp;&nbsp;UserDao.java代码如下：<br/>
<pre  name="code" class="java">
package com.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

@SuppressWarnings("all")
public class UserDao extends JdbcDaoSupport {
	private String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	// 此方法把USEMBO表对应的字段查询出来依次放入userPO中
	public Collection&lt;UserPO&gt; doquery() {
		String sql = "SELECT T.USERID,T.USERNAME,T.USERAGE FROM USERMBO T";
		return super.getJdbcTemplate().query(sql, new RowMapper() {

			public Object mapRow(ResultSet rs, int num) throws SQLException {
				UserPO user = new UserPO();
				user.setUserId(rs.getInt("USERID"));
				user.setUserName(rs.getString("USERNAME"));
				user.setUserAge(rs.getInt("USERAGE"));
				return user;
			}
		});
	}
}

</pre>
&nbsp;&nbsp;UserPO.java代码如下：<br/>
<pre  name="code" class="java">
package com.springmvc;

public class UserPO {
	private Integer userId;
	private String userName;
	private Integer userAge;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getUserAge() {
		return userAge;
	}

	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}
}

</pre>
&nbsp;&nbsp;最后是相应的jsp页面，index.jsp的代码如下：<br/>
<pre  name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%&gt;
&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;My SpringMVC&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
	第一个SpringMVC框架，点击按钮可以获取数据库中的数据！
	&lt;br /&gt;&lt;br /&gt;
	&lt;form action="user.do" method="post"&gt;
		&lt;input type="submit" value="获取人员信息列表"&gt;
	&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;

</pre>
&nbsp;&nbsp;jsp文件夹下userInfo.jsp代码如下：<br/>
<pre  name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="utf-8"%&gt;
&lt;%@ page import="com.springmvc.UserPO"%&gt;
&lt;%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List&lt;UserPO&gt; str= (List&lt;UserPO&gt;)request.getAttribute("list");
%&gt;

&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;SpringMVC&lt;/title&gt;
  &lt;/head&gt;
  
  &lt;body&gt;
  &lt;table border="1" width="500" align="center" cellpadding="0" cellspacing="0" &gt;
  		&lt;tr&gt;
			&lt;td &gt;编号&lt;/td&gt;
			&lt;td &gt;姓名&lt;/td&gt;
			&lt;td &gt;年龄&lt;/td&gt;
		&lt;/tr&gt;
   &lt;%
   		for(UserPO user:str){
   			%&gt;
   				&lt;tr&gt;
   					&lt;td&gt;&lt;%=user.getUserId() %&gt;&lt;/td&gt;
   					&lt;td&gt;&lt;%=user.getUserName() %&gt;&lt;/td&gt;
   					&lt;td&gt;&lt;%=user.getUserAge() %&gt;&lt;/td&gt;
   				&lt;/tr&gt;
   			&lt;%
   		}
    %&gt;
    &lt;/table&gt;
  &lt;/body&gt;
&lt;/html&gt;

</pre>
&nbsp;&nbsp;至此，第一个SpringMVC框架就搭建好了，赶快运行一下，看看效果吧^_^<br/>


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