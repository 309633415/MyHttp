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
struts2中autocompleter标签有如下几个属性:<br/>
&nbsp;&nbsp;autoComplete:设置是否在单行文本输入框中显示提示输入<br/>
&nbsp;&nbsp;forceValidOption:设置单行文本框内是否只接受下拉列表中列表项<br/>
&nbsp;&nbsp;delay:指定显示下拉列表框之前的延迟时间<br/>
&nbsp;&nbsp;href:指定异步生成下拉列表项的URL<br/>
&nbsp;&nbsp;searchType:设置下拉列表项与单行文本框的字符串的匹配模式,可以接受3个值:startstring(显示以文本框中字符串开头的选项,这是默认值);startword(显示以文本框中单词开头的选项);substring(显示包含文本框中字符串的选项).<br/>
&nbsp;&nbsp;dropdownHeight:设置下拉列表框的高度,默认是120<br/>
&nbsp;&nbsp;dropdownWidth:设置下拉列表框的宽度,默认与单行文本框的宽度相同.<br/>
&nbsp;&nbsp;formId:指定发送哪个表单里的表单域的请求参数<br/>
&nbsp;&nbsp;value:当theme使用simple时,指定该标签的默认值<br/>
&nbsp;&nbsp;list:指定用于迭代生成下拉选项的集合<br/>
&nbsp;&nbsp;loadOnTextChange:设置当用户在单行文本框内输入时,是否重新加载列表项.<br/>
&nbsp;&nbsp;loadMinimumCount:当loadOnTextChange属性设置为true时,该属性设置输入多少字符后,才会触发重新加载列表项.<br/>
&nbsp;&nbsp;showDownArrow:是否显示下拉箭头,默认是显示.<br/>
&nbsp;&nbsp;如果我们设置autocompleter标签的autoComplete=true(默认是false),该标签将会在单行文本框中生成输入提示.如果希望强制用户只能输入下拉列表中的列表项,则可以设置forceValidOption=true(默认是false).

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

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Ajax的Action
 * **/
public class AjaxAction extends ActionSupport{

	private static final long serialVersionUID = -8201401726773589361L;

	private List&lt;String[]&gt; names; // autocompleter返回客户端数组
	private String start; // autocompleter客户端输入的起始文字

	// 下拉框
	public String autoCompleter() throws UnsupportedEncodingException {
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

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
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