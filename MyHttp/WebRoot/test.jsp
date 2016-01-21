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
	
<p style="text-indent:2em"><strong>XStream概念：</strong><br/>
&nbsp;&nbsp;XStream是一个序列化对象为XML或XML转换为对象的库。
</p>
<p style="text-indent:2em"><strong>特点：</strong><br/>
&nbsp;&nbsp;简化的API;<br/>
&nbsp;&nbsp;无映射文件;<br/>
&nbsp;&nbsp;高性能,低内存占用;<br/>
&nbsp;&nbsp;整洁的XML;<br/>
&nbsp;&nbsp;不需要修改对象;<br/>
&nbsp;&nbsp;提供序列化接口;<br/>
&nbsp;&nbsp;自定义转换类型策略;<br/>
&nbsp;&nbsp;详细的错误诊断;<br/>
&nbsp;&nbsp;快速输出格式;当前支持 JSON 和 morphing.</p>

<p style="text-indent:2em"><strong>使用场景：</strong><br/>
&nbsp;&nbsp;Transport&nbsp;&nbsp;转换<br/>
&nbsp;&nbsp;Persistence&nbsp;&nbsp;持久化对象<br/>
&nbsp;&nbsp;Configuration&nbsp;&nbsp;配置<br/>
&nbsp;&nbsp;Unit Tests&nbsp;&nbsp;单元测试</p>

<p style="text-indent:2em"><strong>限制：</strong><br/>
&nbsp;&nbsp;enhanced 模式: JDK版本 不能&lt;1.5.<br/>
&nbsp;&nbsp;虽然预处理注解是安全的,但自动侦查注解可能发生竞争条件.
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
 1:jar包下载地址：
 <a href="http://xstream.codehaus.org/" target="_blank">XStream官网下载</a>&nbsp;或者直接使用
 <a href="http://download.csdn.net/detail/jiashubing/9413416" target="_blank">xstream-1.4.2.jar</a>（jar包介绍这里就不啰嗦了）
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
 
&nbsp;&nbsp;导入jar包后，创建javaBean类，本例中使用Person类<br/>
<pre name="code" class="java">
package demoinfo.webservice.xstream;

public class Person {
	private String name;
	private String sayHello;
	public Person(String name,String sayHello){
		this.name = name;
		this.sayHello = sayHello;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSayHello() {
		return sayHello;
	}
	public void setSayHello(String sayHello) {
		this.sayHello = sayHello;
	}

}

</pre>
&nbsp;&nbsp;将JavaBean转换成xml的序列化测试类BeanToXmlTest，代码如下：<br/>
<pre name="code" class="java">
package demoinfo.webservice.xstream;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class BeanToXmlTest {
	public static void main(String[] args) {
		//XStream初始化
		XStream xstream = new XStream(new DomDriver()); 
		//设置节点对应的实体类
		xstream.alias("person", Person.class);
		Person person = new Person("Tom","Hello , I am Tom !");
		//将JavaBean转换成xml
		String xml = xstream.toXML(person);
		System.out.println(xml);
	}
}

</pre>
&nbsp;&nbsp;将xml转换成JavaBean的反序列化类XmlToBeanTest，代码如下：<br/>
<pre name="code" class="java">
package demoinfo.webservice.xstream;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class XmlToBeanTest {
	public static void main(String[] args) {
		//XStream初始化
		XStream xstream = new XStream(new DomDriver()); 
		//设置节点对应的实体类
		xstream.alias("person", Person.class);
		String str ="<person>"+
								"<name>Bob</name>"+
								"<sayHello>Hello , I am Bob !</sayHello>"+
						  "</person>";
		//将xml转换成JavaBean
		Person person = (Person)xstream.fromXML(str);
		System.out.println(person.getSayHello());
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