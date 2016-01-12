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
<p>JavaScript取值的方法：</p>
<p style="text-indent:2em">1.getElementById()	返回对拥有指定 id 的第一个对象的引用。假如对应的为一组对象，则返回该组对象中的第一个。</p>
<p style="text-indent:2em">2.getElementsByName()	返回带有指定名称的对象集合。该方法与 getElementById() 方法相似，但是它查询元素的 name 属性，而不是 id 属性。<br/>
&nbsp;&nbsp;另外，因为一个文档中的 name 属性可能不唯一（如 HTML 表单中的单选按钮通常具有相同的 name 属性），所有 getElementsByName() 方法返回的是元素的数组，而不是一个元素。</p>
<p style="text-indent:2em">3.getElementsByClassName() 方法返回文档中所有指定类名的元素集合，作为 NodeList 对象。<br/>
&nbsp;&nbsp;NodeList 对象代表一个有顺序的节点列表。NodeList 对象 我们可通过节点列表中的节点索引号来访问列表中的节点(索引号由0开始)。<br/>
&nbsp;&nbsp;提示： 你可以使用 NodeList 对象的 length 属性来确定指定类名的元素个数，并循环各个元素来获取你需要的那个元素。</p>
<p style="text-indent:2em">4.getElementsByTagName() 返回带有指定标签名的对象集合，该方法返回元素的顺序是它们在文档中的顺序。<br/>
&nbsp;&nbsp;如果把特殊字符串 "*" 传递给 getElementsByTagName() 方法，它将返回文档中所有元素的列表，元素排列的顺序就是它们在文档中的顺序。</p>
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
&nbsp;&nbsp;JS取值只需要在普通的jsp页面中就可以使用</br>
&nbsp;&nbsp;jsp页面的代码如下：</br>
   <pre  name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;/head&gt;

&lt;body&gt;
	&lt;p&gt;
	&lt;h3&gt;JS取值大全&lt;/h3&gt;
	&lt;/p&gt;
	&lt;p&gt;
		测试输入框：&lt;input type="text" id="testId" class="testClass" name="testName"
			style="width:300px" /&gt;
	&lt;/p&gt;
	&lt;p&gt;1.通过 id属性 获取&lt;/p&gt;
	&lt;p style="color:blue"&gt;document.getElementById("testId").value="我是通过id获取到的";&lt;/p&gt;
	&lt;p&gt;
		&lt;input type="button" onclick="selectById()" value="通过id获取" /&gt;
	&lt;/p&gt;
	&lt;p&gt;2.通过 name属性 获取&lt;/p&gt;
	&lt;p style="color:blue"&gt;document.getElementsByName("testName")[0].value="我是通过name获取到的";&lt;/p&gt;
	&lt;p style="text-indent:2em"&gt;注意：这里 getElementsByName 比 getElementById
		多了一个s，一定要注意区分。因为一个文档中的 name 属性可能不唯一（如 HTML 表单中的单选按钮通常具有相同的 name 属性），所有
		getElementsByName() 方法返回的是元素的数组，而不是一个元素。&lt;/p&gt;
	&lt;p&gt;
		&lt;input type="button" onclick="selectByName()" value="通过name获取" /&gt;
	&lt;/p&gt;
	&lt;p&gt;3.通过 class属性 获取&lt;/p&gt;
	&lt;p style="color:blue"&gt;document.getElementsByName("testName")[0].value="我是通过name获取到的";&lt;/p&gt;
	&lt;p style="text-indent:2em"&gt;注意: Internet Explorer 8 及更早 IE 版本不支持
		getElementsByClassName() 方法。&lt;/p&gt;
	&lt;p&gt;
		&lt;input type="button" onclick="selectByClassName()" value="通过class获取" /&gt;
	&lt;/p&gt;
	&lt;p&gt;4.通过 tag 标签名获取&lt;/p&gt;
	&lt;p style="color:blue"&gt;
		var x= document.getElementsByTagName("input");&lt;br /&gt;
		x[0].value="我是通过tag获取到的，共有"+x.length+"个&lt;input&gt;标签";
	&lt;/p&gt;
	&lt;p style="text-indent:2em"&gt;注意: Internet Explorer 8 及更早 IE 版本不支持
		getElementsByClassName() 方法。&lt;/p&gt;
	&lt;p&gt;
		&lt;input type="button" onclick="selectByTagName()" value="通过tag标签获取" /&gt;
	&lt;/p&gt;
	&lt;script type="text/javascript"&gt;
		function selectById() {
			document.getElementById("testId").value = "我是通过id获取到的";
		}
		function selectByName() {
			document.getElementsByName("testName")[0].value = "我是通过name获取到的";
		}
		function selectByClassName() {
			document.getElementsByClassName("testClass")[0].value = "我是通过class获取到的";
		}
		function selectByTagName() {
			var x = document.getElementsByTagName("input");
			x[0].value = "我是通过tag获取到的，一共有" + x.length + "个&lt;input&gt;标签";
		}
	&lt;/script&gt;
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