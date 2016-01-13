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
<p style="text-indent:2em">什么是AOP?<br/>
&nbsp;&nbsp;AOP: (Aspect Oriented Programming) 面向切面编程。是目前软件开发中的一个热点，也是Spring框架中容。利用AOP可以对业务逻辑的各个部分进行隔离，从而使得业务逻辑各部分之间的耦合度降低，提高程序的可重用性，同时提高了开发的效率。主要的功能是：日志记录，性能统计，安全控制，事务处理，异常处理等等。</p>
<p style="text-indent:2em">什么是OOP？AOP与其有什么区别？<br/>
&nbsp;&nbsp;AOP、OOP在字面上虽然非常类似，但却是面向不同领域的两种设计思想。OOP（面向对象编程）针对业务处理过程的实体及其属性和行为进行抽象封装，以获得更加清晰高效的逻辑单元划分。 而AOP则是针对业务处理过程中的切面进行提取，它所面对的是处理过程中的某个步骤或阶段，以获得逻辑过程中各部分之间低耦合性的隔离效果。这两种设计思想在目标上有着本质的差异。<br/>
&nbsp;&nbsp;通俗来讲，OOP面向名词领域，AOP面向动词领域。</p>
<p style="text-indent:2em">如何理解AOP?<br/>
&nbsp;&nbsp;举个简单例子，比如你想在每次写字之前都检查一下笔里有没有墨水了，通常的做法是：在写字这个Action里调用判断是否有墨水的方法。这样做的不好一个方面是，写字的Action和是否有墨水的方法产生了依赖，如果你有十几支不同的笔写字，每一个笔的Action里都要调用判断是否有墨水的方法；另一个方面是：就面向对象的程序设计来说，写字和判断是否有墨水的方法是同一等级的，如果你让写字这个动作来判断是否有墨水不够人性化，有违面向对象的程序设计的思想。<br/>
&nbsp;&nbsp;如果用Spring的AOP，是把写字的Action作为一个切面，在每次调用不同的笔来写字的方法之前，调用判断是否有墨水的方法。它是由&lt;aop:config/&gt;标签在Spring配置文件里定义的。</p>
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
 1:jar包下载地址：<a href="http://repo.springsource.org/libs-release-local" target="_blank">spring jar包</a><br/>
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
&nbsp;&nbsp;AOP的实现可以使用注解和xml配置文件两种方式，这里使用xml配置文件方式。示例的过程见左侧的“示例展示”，下面是源码：</br>
&nbsp;&nbsp;首先建立一个接口Performer类</br>
   <pre  name="code" class="java">
package demoinfo.spring.aop;

public interface Performer {
	//表演歌曲
	public void perform();
}
</pre>
&nbsp;&nbsp;再建立一个接口实现类DukePerformer</br>
  <pre  name="code" class="java">
package demoinfo.spring.aop;

public class DukePerformer implements  Performer{
    private String name;  
    public void setName(String name)  {  
        this.name=name;  
    }  
    public String getName()  {  
        return this.name;  
    }  
    public void perform() {  
        System.out.println(this.name+" 开始演唱歌曲。");  
    }  
} 

</pre>
&nbsp;&nbsp;Audience观众业务类</br>
  <pre  name="code" class="java">
  package demoinfo.spring.aop;

public class Audience {  
	public void takeSeat()  {  
		System.out.println("观众坐在座位上。");  
	}  
	public void turnOffPhone()   {  
		System.out.println("观众关闭手机。");  
	}  
	public void applaud()  {  
		System.out.println("观众鼓掌，掌声经久不息...");  
	}  
	public void unHappy()  {  
		System.out.println("观众不高兴.");  
	}  
}  

</pre>
&nbsp;&nbsp;配置文件applicationContext.xml代码如下：</br>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:aop="http://www.springframework.org/schema/aop"
	xsi:schemaLocation="http://www.springframework.org/schema/beans
           http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
           http://www.springframework.org/schema/aop
           http://www.springframework.org/schema/aop/spring-aop-2.0.xsd"&gt;
	&lt;!-- AOP学习时的配置 --&gt;
	&lt;bean id="DukePerformer" class="demoinfo.spring.aop.DukePerformer"&gt;
		&lt;property name="name" value="duke" /&gt;
	&lt;/bean&gt;
	&lt;bean id="audience" class="demoinfo.spring.aop.Audience" /&gt;
	
	&lt;aop:config&gt;
		&lt;!-- 定义切入点 --&gt;
		&lt;aop:pointcut id="sing" expression="execution(* *.perform(..))"/&gt;
		&lt;!-- 定义切面 --&gt;
		&lt;aop:aspect ref="audience"&gt;
			&lt;!-- 前置通知 --&gt;
			&lt;aop:before method="takeSeat" pointcut-ref="sing" /&gt;
			&lt;aop:before method="turnOffPhone" pointcut-ref="sing" /&gt;
			&lt;!-- 返回后通知 --&gt;
			&lt;aop:after-returning method="applaud" pointcut-ref="sing" /&gt;
			&lt;!-- 抛出后通知 --&gt;
			&lt;aop:after-throwing method="unHappy" pointcut-ref="sing" /&gt;
		&lt;/aop:aspect&gt;
	&lt;/aop:config&gt;
	&lt;!-- AOP学习时的配置 --&gt;
&lt;/beans&gt;

</pre>
&nbsp;&nbsp;最后测试类代码如下：</br>
<pre  name="code" class="java">
package demoinfo.spring.aop;

import org.springframework.context.ApplicationContext;  
import org.springframework.context.support.FileSystemXmlApplicationContext;  

public class SpringDemo {  
    public static void main(String[] args) {  
    	//获得Spring中定义的Bean实例(对象)
        ApplicationContext ctx=new FileSystemXmlApplicationContext(
        		"classpath:demoinfo/spring/aop/applicationContext.xml");  
        Performer per=(Performer)ctx.getBean("DukePerformer");  
        per.perform();  
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