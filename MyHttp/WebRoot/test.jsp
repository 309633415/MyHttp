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
<p>SpringMVC���ص㣺<br/>
&nbsp;&nbsp;1�������Ľ�ɫ���֣�Spring��Model��View��Controller�����ṩ��һ���ǳ������Ļ��֣���3�����������Ǹ�˾��ְ����������<br/>
&nbsp;&nbsp;2���������ù��ܣ���ΪSpring�ĺ�����IOC,ͬ����ʵ��MVC�ϣ�Ҳ���԰Ѹ����൱��Bean��ͨ��XML�������á�<br/>
&nbsp;&nbsp;3���ṩ�˴����Ŀ������ӿں�ʵ���࣬����������Ա����ʹ��Spring�ṩ�Ŀ�����ʵ���࣬Ҳ�����Լ�ʵ�ֿ������ӿڡ�<br/>
&nbsp;&nbsp;4��SpringMVC��������View��ʵ���޹صģ�������ǿ�ƿ���Աʹ��JSP,���ǿ���ʹ������View����������Velocity��Xskt�ȡ�<br/>
&nbsp;&nbsp;5�����ʻ�֧�֣�Spring��ApplicationContext�ṩ�˶Թ��ʻ���֧�֣���������Ժܷ����ʹ�á�<br/>
&nbsp;&nbsp;6������ӿڱ�̣���ʵ�ⲻ����springMVC���ص㣬����Spring����������ص㶼�Ǻ����Եģ���Ϊ��ʹ������Ա�Գ������ڽ��в��ԣ����Һܷ���Ľ��й���<br/>
&nbsp;&nbsp;7��Spring�ṩ��WebӦ�ÿ�����һ�������̣�����������MVC������֮����Ժܷ���Ľ����һ��������һ���Լ��������ӣ�����������Ӻ������ᵽ��SpringMVC��ǿ��</p>

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
 1:jar�����ص�ַ��<a href="http://download.csdn.net/detail/jiashubing/9403927" target="_blank">SpringMVC�������Ҫ��jar��</a><br/>
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
 &nbsp;&nbsp;���������һ��SpringMVC��ܵ���Ŀ��ʵ�ִ����ݿ��ж�ȡ���ݵĹ��ܡ�<br/>
 &nbsp;&nbsp;����Ϊ�Լ�����Ŀ�½�һ�����ݿ⣬����ʹ��mysql���ݿ⣬������һ��USERMBO�������������ֶ� USERID��USERNAME��USERAGE��ʹ�������sql�����ٽ���<br/>
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
INSERT INTO `usermbo` VALUES ('1', 'С��', '25');
INSERT INTO `usermbo` VALUES ('2', 'С��', '27');
INSERT INTO `usermbo` VALUES ('3', 'С��', '26');
</pre>
&nbsp;&nbsp; Ȼ���½�һ����Ŀ�������Ҫ��jar���Ժ�����WEB-INFĿ¼�µ�web.xml����������:</br>
   <pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;web-app version="2.5" xmlns="http://java.sun.com/xml/ns/javaee"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
	http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"&gt;
	&lt;servlet&gt;
		&lt;!--springmvc�ĺ�����DispatcherServlet���������������ҳ�������·��--&gt;
		&lt;servlet-name&gt;dispatcherServlet&lt;/servlet-name&gt;
		&lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;
		&lt;!--��ʼ������ &gt;--&gt;
		&lt;init-param&gt;
			&lt;!-- ���param-name������contextConfigLocation--&gt;
			&lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
			&lt;param-value&gt;/WEB-INF/classes/applicationContext.xml&lt;/param-value&gt;
		&lt;/init-param&gt;
		&lt;load-on-startup&gt;2&lt;/load-on-startup&gt;
	&lt;/servlet&gt;
	&lt;!--����������do��β������--&gt;
	&lt;servlet-mapping&gt;
		&lt;servlet-name&gt;dispatcherServlet&lt;/servlet-name&gt;
		&lt;url-pattern&gt;*.do&lt;/url-pattern&gt;
	&lt;/servlet-mapping&gt;
	&lt;!--�����ҳ�洫�����ĵ���̨�����ֵ�������������--&gt;
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
&nbsp;&nbsp;spring�����ļ�applicationContext.xml�Ĵ������£�<br/>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.springframework.org/schema/beans 
	http://www.springframework.org/schema/beans/spring-beans-2.5.xsd"&gt;
	&lt;!-- �����ȱʡ�Ŀ��������� --&gt;
	&lt;bean
		class="org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter" /&gt;
	&lt;!-- ��ȡ�����ļ� --&gt;
	&lt;bean id="config"
		class="org.springframework.beans.factory.config.PropertyPlaceholderConfigurer"&gt;
		&lt;property name="locations"&gt;
			&lt;list&gt;
				&lt;value&gt;classpath:db-config.properties&lt;/value&gt;
			&lt;/list&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!-- ��ȡ����Դ --&gt;
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
		URL����������ӳ���б�������ö��
		mappings���Խ�ֵΪURL�����ļ���ַ����ֵΪ��������Bean���֣�URL�����ļ���ַ�ɲ���·��ƥ���ģʽ���磺
		com/mvc/t?st.jsp:ƥ��com/mvc/test.jsp��com/mvc/tast.jsp��
		 com/mvc /*.jsp��ƥ������com/mvc/�´�jsp��׺��URL com/mvc
		/**/test.jsp��ƥ��������com/mvc·���»�����·���µ�test.jsp com/mvc
		/**/*.jsp��ƥ������com/mvc·���»�����·���´�.jsp��׺��URL 
		cn/**/web/bla.jsp��ƥ��cn/option/web/dog.jsp cn/option/test/web/dog.jsp cn/web/ dog.jsp������
	--&gt;
	&lt;bean class="org.springframework.web.servlet.handler.SimpleUrlHandlerMapping"&gt;
		&lt;property name="mappings"&gt;
			&lt;value&gt;
				user.do=userAction
&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

	&lt;!--������ͼ ͨ��internalResourceView����ʾ ʹ�õ���Servlet/jsp����--&gt;
	&lt;bean id="viewResolver"
		class="org.springframework.web.servlet.view.InternalResourceViewResolver"&gt;
		&lt;property name="viewClass"&gt;
			&lt;value&gt;org.springframework.web.servlet.view.InternalResourceView
			&lt;/value&gt;
		&lt;/property&gt;
		&lt;!--jsp��ŵ�Ŀ¼--&gt;
		&lt;property name="prefix"&gt;
			&lt;value&gt;jsp/&lt;/value&gt;
		&lt;/property&gt;
		&lt;!--jsp�ļ��ĺ�׺--&gt;
		&lt;property name="suffix"&gt;
			&lt;value&gt;.jsp&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
	&lt;bean id="userDao" class="com.springmvc.UserDao "&gt;
		&lt;property name="dataSource" ref="dataSource"&gt;&lt;/property&gt;
	&lt;/bean&gt;
	&lt;!--���������--&gt;
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
&nbsp;&nbsp;����Դ�����ļ�db-config.properties�Ĵ������£�<br/>
<pre  name="code" class="xml">
db.url=jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf8
db.username=root
db.password=19921002
db.dirverClass=com.mysql.jdbc.Driver
dbName=springmvcdb
</pre>
&nbsp;&nbsp;�����ļ����ú��Ժ����ǿ�ʼ��д�����JAVA�࣬������Ҫһ��Dao�࣬һ��Controller���һ��PO�������ǽ���com.springmvc�����桢<br/>
&nbsp;&nbsp;UserControer.java�������£�<br/>
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
// SimpleFormController��spring�ṩ�ı�����������ҳ����Form�е�Ԫ�������趨Ϊ��bean�е�һ�����������ʱ��Spring���Զ�ץȡform�к�Bean����һ����Ԫ��ֵ������ת����һ��bean,ʹ�ÿ�����Ա���Ժܷ����ʹ�á�
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
&nbsp;&nbsp;UserDao.java�������£�<br/>
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

	// �˷�����USEMBO���Ӧ���ֶβ�ѯ�������η���userPO��
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
&nbsp;&nbsp;UserPO.java�������£�<br/>
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
&nbsp;&nbsp;�������Ӧ��jspҳ�棬index.jsp�Ĵ������£�<br/>
<pre  name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%&gt;
&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;My SpringMVC&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
	��һ��SpringMVC��ܣ������ť���Ի�ȡ���ݿ��е����ݣ�
	&lt;br /&gt;&lt;br /&gt;
	&lt;form action="user.do" method="post"&gt;
		&lt;input type="submit" value="��ȡ��Ա��Ϣ�б�"&gt;
	&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;

</pre>
&nbsp;&nbsp;jsp�ļ�����userInfo.jsp�������£�<br/>
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
			&lt;td &gt;���&lt;/td&gt;
			&lt;td &gt;����&lt;/td&gt;
			&lt;td &gt;����&lt;/td&gt;
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
&nbsp;&nbsp;���ˣ���һ��SpringMVC��ܾʹ���ˣ��Ͽ�����һ�£�����Ч����^_^<br/>


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