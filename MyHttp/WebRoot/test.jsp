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
<p style="text-indent:2em">如何使用Quartz？<br/>
&nbsp;&nbsp;对于Quartz，我们使用的时候主要是注重两个方面，一个是定时任务的业务，另一个就是Cron表达式。<br/>
&nbsp;&nbsp;1>Quartz存在两种方式来定义定时执行任务，一种是使用QuartJobBean和JobDetailBean；另一种是使用MethodInvokingJobDetailFactoryBean。<br/>
&nbsp;&nbsp;2>Cron表达式包括下面7个字段并区别顺序：秒0-59，分0-59，小时0-23，月内日期1-31，月1-12或者JAN-DEC，周内日期1-7或者SUN-SAT，年(可选字段)留空或者1970-2099并且通过特殊字符表示特殊意义，具体为下：<br/>
&nbsp;&nbsp;&nbsp;斜线(/)字符表示增量值。例如，在秒字段中"5/15"代表从第5秒开始，每15秒一次。<br/>
&nbsp;&nbsp;&nbsp;问号(?)字符和字母L字符只有在月内日期和周内日期字段中可用。问号表示这个字段不包含具体值。所以，如果指定月内日期，可以在周内日期字段中插入"?"，表示周内日期值无关紧要。这里有个很蛋疼的设定，无关Quartz，而是Spring集成Quartz后，它自己加的一个约束，那就是：日期(1-31)和星期(SUN-SAT)两者，必须有一个是问号(?)，系统在启动的时候，Spring会检查表达式，如果不符合它的规则，就会抛异常。所以在使用的时候这个地方一定要注意，而这个在Linux上执行Cron是没有这个限制的。<br/>
&nbsp;&nbsp;&nbsp;字母L字符是last的缩写。放在月内日期字段中，表示安排在当月最后一天执行。在周内日期字段中，如果"L"单独存在,就等于"7"，否则代表当月内周内日期的最后一个实例。所以"0L"表示安排在当月的最后一个星期日执行。<br/>
&nbsp;&nbsp;&nbsp;字母(W)字符把执行安排在最靠近指定值的工作日。把"1W"放在月内日期字段中，表示把执行安排在当月的第一个工作日内。<br/>
&nbsp;&nbsp;&nbsp;井号(#)字符为给定月份指定具体的工作日实例。把"MON#2"放在周内日期字段中，表示把任务安排在当月的第二个星期一。<br/>
&nbsp;&nbsp;&nbsp;星号(*)字符是通配字符,表示该字段可以接受任何可能的值、表达式例子。<br/>
&nbsp;&nbsp;&nbsp;例子：<br/>
&nbsp;&nbsp;&nbsp;"0 0 08 * * ?" 每天上午8点触发<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 ? * *" 每天上午10:15触发<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 * * ?" 每天上午10:15触发<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 ? * 6L 2009-2019" 2009年至2019年的每月的最后一个星期五上午10:15触发<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 ? * 6#3" 每月的第三个星期五上午10:15触发<br/>
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
 1:jar包下载地址：<a href="http://repo.spring.io" target="_blank">spring jar包</a>&nbsp;<a href="http://download.csdn.net/detail/jiashubing/9405044" target="_blank">quartz-all-1.6.5.jar包</a><br/>
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
<p style="text-indent:2em">我们使用Spring定时服务Quartz来实现一个每5秒打印一次当前时间的小例子。<br/>
 &nbsp;&nbsp;1:定义接口IPrintInfoService类</p>
   <pre  name="code" class="java">
package demoinfo.spring.quartz;
public interface IPrintInfoService {
	public void print();
}
   </pre>
<p style="text-indent:2em">2:实现接口类PrintInfoServiceImpl</p>
<pre  name="code" class="java">
package demoinfo.spring.quartz;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import demoinfo.spring.quartz.IPrintInfoService;

public class PrintInfoServiceImpl implements IPrintInfoService{

	public void print() {
		Calendar now = Calendar.getInstance();
		System.out.println("现在是北京时间：" + this.format(now.getTime()));
	}
	
	public String format(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
	
}

</pre>
<p style="text-indent:2em">3:基于QuartzJobBean的实现类PrintInfoJob</p>
<pre  name="code" class="java">
package demoinfo.spring.quartz;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import demoinfo.spring.quartz.IPrintInfoService;

public class PrintInfoJob extends QuartzJobBean{
	
	private IPrintInfoService prinfInfoService = null;
	public IPrintInfoService getPrinfInfoService() {
		return prinfInfoService;
	}
	public void setPrinfInfoService(IPrintInfoService prinfInfoService) {
		this.prinfInfoService = prinfInfoService;
	}
	@Override
	protected void executeInternal(JobExecutionContext arg0)
			throws JobExecutionException {
		this.prinfInfoService.print();
		
	}
}

</pre>
<p style="text-indent:2em">4:Spring配置文件applicationContext.xml</p>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:context="http://www.springframework.org/schema/context"
	xmlns:tx="http://www.springframework.org/schema/tx"
	xsi:schemaLocation="http://www.springframework.org/schema/beans 
				http://www.springframework.org/schema/beans/spring-beans-2.5.xsd
				http://www.springframework.org/schema/context 
				http://www.springframework.org/schema/context/spring-context-2.5.xsd
				http://www.springframework.org/schema/tx 
				http://www.springframework.org/schema/tx/spring-tx-2.5.xsd"&gt;


	&lt;bean id="printInfoService" class="demoinfo.spring.quartz.PrintInfoServiceImpl" /&gt;
	&lt;!-- 配置一个Job --&gt;
	&lt;bean id="printInfoJob" class="org.springframework.scheduling.quartz.JobDetailBean"&gt;
		&lt;property name="jobClass" value="demoinfo.spring.quartz.PrintInfoJob" /&gt;
		&lt;property name="jobDataAsMap"&gt;
			&lt;map&gt;
				&lt;entry key="prinfInfoService" value-ref="printInfoService"&gt;&lt;/entry&gt;
			&lt;/map&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

	&lt;!-- 简单的触发器 --&gt;
	&lt;bean id="simplePrintInfoTrigger" class="org.springframework.scheduling.quartz.SimpleTriggerBean"&gt;
		&lt;property name="jobDetail"&gt;
			&lt;ref bean="printInfoJob" /&gt;
		&lt;/property&gt;
		&lt;property name="startDelay"&gt;
			&lt;value&gt;6000&lt;/value&gt;
		&lt;/property&gt;
		&lt;property name="repeatInterval"&gt;
			&lt;value&gt;6000&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

	&lt;!--复杂的触发器 --&gt;
	&lt;bean id="complexPrintInfoTrigger" class="org.springframework.scheduling.quartz.CronTriggerBean"&gt;
		&lt;property name="jobDetail"&gt;
			&lt;ref bean="printInfoJob" /&gt;
		&lt;/property&gt;
		&lt;property name="cronExpression"&gt;
			&lt;value&gt;00,05,10,15,20,25,30,35,40,45,50,55 * * * * ?&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

	&lt;!-- spring触发工厂 --&gt;
	&lt;bean class="org.springframework.scheduling.quartz.SchedulerFactoryBean"&gt;
		&lt;property name="triggers"&gt;
			&lt;list&gt;
				&lt;ref bean="complexPrintInfoTrigger" /&gt;
			&lt;/list&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
&lt;/beans&gt;
</pre>
<p style="text-indent:2em">5:测试用例类SpringQuartzDemo</p>
<pre  name="code" class="java">
package demoinfo.spring.quartz;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringQuartzDemo {

	public static void main(String[] args) {
		System.out.println("测试开始......");
		new ClassPathXmlApplicationContext(
				"classpath:demoinfo/spring/quartz/applicationContext.xml");     
		System.out.println("测试结束......");
	}

}

</pre>
<p style="text-indent:2em">运行测试用例，可以看到控制台每过5秒钟就打印一次时间信息。</p>


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