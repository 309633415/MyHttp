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
<p style="text-indent:2em">控制反转（Inversion of Control，英文缩写为IoC）是一个重要的面向对象编程的法则来削减计算机程序的耦合问题，也是轻量级的Spring框架的核心。 控制反转一般分为两种类型，依赖注入（Dependency Injection，简称DI）和依赖查找（Dependency Lookup）。依赖注入应用比较广泛。</p>
<p style="text-indent:2em">从注入的方法上看，依赖注入主要可以划分为三种类型：属性注入（set注入）、构造函数注入和接口注入。由于接口注入需要额外声明一个接口，增加了类的数目，而且它的效果和属性注入并无本质区别，因此我们不提倡采用这种方式。</p>
<p style="text-indent:2em">三种注入方式的区别：</p>
<p style="text-indent:2em">1.属性注入方式：对于需要注入的东西比较明确。符合java的设计规则。更适合java开发人员，使用起来更加自然，更加方便。</p>
<p style="text-indent:2em">2.构造函数注入方式：在类加载的时候，就已经注入依赖的组件。但是若是参数多的话，使用起来不方便。</p>
<p style="text-indent:2em">3.接口注入：组件需要依赖特定接口的实现，其中的加载接口实现和接口实现的具体对象都是由容器来完成。由于需要额外声明一个接口，增加了类的数目，而且它的效果和属性注入并无本质区别，因此我们不提倡采用这种方式。</p>
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
 1:jar包下载地址：<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar包</a>
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON包合集</a>（包括commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar）<br/>
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
&nbsp;&nbsp;首先导入需要的jar包，我们使用基于struts2的ajax来实现该例功能。</br>
&nbsp;&nbsp;ajaxComplete.jsp页面的代码如下：</br>
   <pre  name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%&gt;
&lt;%@ taglib prefix="sx" uri="/struts-dojo-tags"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
	&lt;!-- 注意这里看要加这个标签 --&gt;
	&lt;sx:head /&gt;
&lt;/head&gt;
&lt;body&gt;
	&lt;br&gt;
	&lt;h3&gt;自动补全&lt;/h3&gt;
	&lt;br /&gt;
	&lt;form&gt;
		&lt;table&gt;
			&lt;tr&gt;
				&lt;td class="tdLabel"&gt;&lt;label class="label"&gt;AJAX 自动补全:&lt;/label&gt;
				&lt;/td&gt;
				&lt;td &gt;
					&lt;s:url id="dataUrl" value="%{#request.basePath}/ajax/autoCompleter.action" /&gt;
					&lt;!-- name属性必须设置，其名字是什么无所谓 --&gt;
					 &lt;sx:autocompleter  
					 	name="start"
						href="%{dataUrl}" 
						loadOnTextChange="true"
						loadMinimumCount="1"
					 	autoComplete="false" 
					 	showDownArrow="false"
					 	indicator = "indicator"
					 	/&gt;
					&lt;!-- indicator是加载时显示的动态图片 --&gt;
					&lt;img id="indicator" src="../image/indicator.gif" alt="Loading" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;
	&lt;/form&gt; 
&lt;/body&gt;
&lt;/html&gt;

</pre>

&nbsp;&nbsp;在struts.xm配置文件中包含ajax.xml，其中的内容是：</br>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;

&lt;package name="ajax" extends="json-default" namespace="/ajax"&gt;
&lt;!--自动补全的Action--&gt;
  &lt;action name="autoCompleter" class="demoinfo.struts2.ajax.AjaxAction" method="autoCompleter"&gt;
  	&lt;result name="fail"&gt;&lt;/result&gt;
      &lt;result type="json"&gt;
        &lt;param name="root"&gt;names&lt;/param&gt;
      &lt;/result&gt;
   &lt;/action&gt;   
&lt;/package&gt;
&lt;/struts&gt;
</pre>

&nbsp;&nbsp;AjaxAction对应的代码为：</br>
   <pre  name="code" class="java">
package demoinfo.struts2.ajax;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Ajax的Action
 * **/
public class AjaxAction extends ActionSupport{

	private static final long serialVersionUID = -8201401726773589361L;

	private List&lt;String[]&gt; names; // autocompleter返回客户端数组

	// 下拉框
	public String autoCompleter(){
		names = new ArrayList&lt;String[]&gt;();
		names.add(new String[]{"Alabama","Alabama"});
		names.add(new String[]{"Alaska","Alaska"});
		names.add(new String[]{"American Samoa","American Samoa"});
		names.add(new String[]{"Arizona","Arizona"});
		names.add(new String[]{"Arkansas","Arkansas"});
		names.add(new String[]{"Armed Forces Europe","Armed Forces Europe"});
		names.add(new String[]{"Armed Forces Pacific","Armed Forces Pacific"});
		names.add(new String[]{"Armed Forces the Americas","Armed Forces the Americas"});
		names.add(new String[]{"Beaver","Beaver"});
		names.add(new String[]{"Banana Mania","Banana Mania"});
		names.add(new String[]{"California","California"});
		names.add(new String[]{"Colorado","Colorado"});
		names.add(new String[]{"Connecticut","Connecticut"});
		names.add(new String[]{"Delaware","Delaware"});
		names.add(new String[]{"District of Columbia","District of Columbia"});
		names.add(new String[]{"Eggplant","Eggplant"});
		names.add(new String[]{"Electric Lime","Electric Lime"});
		names.add(new String[]{"Federated States of Micronesia","Federated States of Micronesia"});
		names.add(new String[]{"Florida","Florida"});
		names.add(new String[]{"Georgia","Georgia"});
		names.add(new String[]{"Guam","Guam"});
		names.add(new String[]{"Hawaii","Hawaii"});
		names.add(new String[]{"Idaho","Idaho"});
		names.add(new String[]{"Illinois","Illinois"});
		names.add(new String[]{"Indiana","Indiana"});
		names.add(new String[]{"Iowa","Iowa"});
		names.add(new String[]{"Jazzberry Jam","Jazzberry Jam"});
		names.add(new String[]{"Jungle Green","IoJungle Greenwa"});
		names.add(new String[]{"Kansas","Kansas"});
		names.add(new String[]{"Kentucky","Kentucky"});
		names.add(new String[]{"Louisiana","Louisiana"});
		names.add(new String[]{"Maine","Maine"});
		names.add(new String[]{"Marshall Islands","Marshall Islands"});
		names.add(new String[]{"Maryland","Maryland"});
		names.add(new String[]{"Massachusetts","Massachusetts"});
		names.add(new String[]{"Michigan","Michigan"});
		names.add(new String[]{"Minnesota","Minnesota"});
		names.add(new String[]{"Mississippi","Mississippi"});
		names.add(new String[]{"Missouri","Missouri"});
		names.add(new String[]{"Montana","Montana"});
		names.add(new String[]{"Nebraska","Nebraska"});
		names.add(new String[]{"Nevada","Nevada"});
		names.add(new String[]{"New Hampshire","New Hampshire"});
		names.add(new String[]{"New Jersey","New Jersey"});
		names.add(new String[]{"New Mexico","New Mexico"});
		names.add(new String[]{"New York","New York"});
		names.add(new String[]{"North Carolina","North Carolina"});
		names.add(new String[]{"North Dakota","North Dakota"});
		names.add(new String[]{"Northern Mariana Islands","Northern Mariana Islands"});
		names.add(new String[]{"Oklahoma","Oklahoma"});
		names.add(new String[]{"Oregon","Oregon"});
		names.add(new String[]{"Pennsylvania","Pennsylvania"});
		names.add(new String[]{"Puerto Rico","Puerto Rico"});
		names.add(new String[]{"Rhode Island","Rhode Island"});
		names.add(new String[]{"South Carolina","South Carolina"});
		names.add(new String[]{"South Dakota","South Dakota"});
		names.add(new String[]{"Tennessee","Tennessee"});
		names.add(new String[]{"Texas","Texas"});
		names.add(new String[]{"Utah","Utah"});
		names.add(new String[]{"Vermont","Vermont"});
		names.add(new String[]{"Virgin Islands U.S.","Virgin Islands U.S."});
		names.add(new String[]{"Virginia","Virginia"});
		names.add(new String[]{"Washington","Washington"});
		names.add(new String[]{"West Virginia","West Virginia"});
		names.add(new String[]{"Wisconsin","Wisconsin"});
		names.add(new String[]{"Wyoming","Wyoming"});
		names.add(new String[]{"Yellow","Yellow"});
		return SUCCESS;
	}

	public List&lt;String[]&gt; getNames() {
		return names;
	}

	public void setNames(List&lt;String[]&gt; names) {
		this.names = names;
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