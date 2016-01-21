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
	
<p style="text-indent:2em"><strong>XStream���</strong><br/>
&nbsp;&nbsp;XStream��һ�����л�����ΪXML��XMLת��Ϊ����Ŀ⡣
</p>
<p style="text-indent:2em"><strong>�ص㣺</strong><br/>
&nbsp;&nbsp;�򻯵�API;<br/>
&nbsp;&nbsp;��ӳ���ļ�;<br/>
&nbsp;&nbsp;������,���ڴ�ռ��;<br/>
&nbsp;&nbsp;�����XML;<br/>
&nbsp;&nbsp;����Ҫ�޸Ķ���;<br/>
&nbsp;&nbsp;�ṩ���л��ӿ�;<br/>
&nbsp;&nbsp;�Զ���ת�����Ͳ���;<br/>
&nbsp;&nbsp;��ϸ�Ĵ������;<br/>
&nbsp;&nbsp;���������ʽ;��ǰ֧�� JSON �� morphing.</p>

<p style="text-indent:2em"><strong>ʹ�ó�����</strong><br/>
&nbsp;&nbsp;Transport&nbsp;&nbsp;ת��<br/>
&nbsp;&nbsp;Persistence&nbsp;&nbsp;�־û�����<br/>
&nbsp;&nbsp;Configuration&nbsp;&nbsp;����<br/>
&nbsp;&nbsp;Unit Tests&nbsp;&nbsp;��Ԫ����</p>

<p style="text-indent:2em"><strong>���ƣ�</strong><br/>
&nbsp;&nbsp;enhanced ģʽ: JDK�汾 ����&lt;1.5.<br/>
&nbsp;&nbsp;��ȻԤ����ע���ǰ�ȫ��,���Զ����ע����ܷ�����������.
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
   <h3>��Դ׼��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar�����ص�ַ��
 <a href="http://xstream.codehaus.org/" target="_blank">XStream��������</a>&nbsp;����ֱ��ʹ��
 <a href="http://download.csdn.net/detail/jiashubing/9413416" target="_blank">xstream-1.4.2.jar</a>��jar����������Ͳ������ˣ�
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
 
&nbsp;&nbsp;����jar���󣬴���javaBean�࣬������ʹ��Person��<br/>
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
&nbsp;&nbsp;��JavaBeanת����xml�����л�������BeanToXmlTest���������£�<br/>
<pre name="code" class="java">
package demoinfo.webservice.xstream;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class BeanToXmlTest {
	public static void main(String[] args) {
		//XStream��ʼ��
		XStream xstream = new XStream(new DomDriver()); 
		//���ýڵ��Ӧ��ʵ����
		xstream.alias("person", Person.class);
		Person person = new Person("Tom","Hello , I am Tom !");
		//��JavaBeanת����xml
		String xml = xstream.toXML(person);
		System.out.println(xml);
	}
}

</pre>
&nbsp;&nbsp;��xmlת����JavaBean�ķ����л���XmlToBeanTest���������£�<br/>
<pre name="code" class="java">
package demoinfo.webservice.xstream;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class XmlToBeanTest {
	public static void main(String[] args) {
		//XStream��ʼ��
		XStream xstream = new XStream(new DomDriver()); 
		//���ýڵ��Ӧ��ʵ����
		xstream.alias("person", Person.class);
		String str ="<person>"+
								"<name>Bob</name>"+
								"<sayHello>Hello , I am Bob !</sayHello>"+
						  "</person>";
		//��xmlת����JavaBean
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