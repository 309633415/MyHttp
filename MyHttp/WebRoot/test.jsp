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
<p style="text-indent:2em">ʲô��Quartz��<br/>
&nbsp;&nbsp;Quartz��һ��ǿ�����ҵ��������ȿ�ܡ�����������Ա���ض��崥�����ĵ���ʱ������ɶԴ�������������й���ӳ�䡣���⣬Quartz�ṩ�˵������л����ĳ־û����ƣ����Ա��沢�ᷢ�����ֳ�����ʹϵͳ����Ϲرգ���������ֳ����ݲ����ᶪʧ��Spring�м̳в�����Quartz��
</p>
<p style="text-indent:2em">���ʹ��Quartz��<br/>
&nbsp;&nbsp;����Quartz������ʹ�õ�ʱ����Ҫ��ע���������棬һ���Ƕ�ʱ�����ҵ����һ������Cron���ʽ��<br/>
&nbsp;&nbsp;1>Quartz�������ַ�ʽ�����嶨ʱִ������һ����ʹ��QuartJobBean��JobDetailBean����һ����ʹ��MethodInvokingJobDetailFactoryBean��<br/>
&nbsp;&nbsp;2>Cron���ʽ��������7���ֶβ�����˳����0-59����0-59��Сʱ0-23����������1-31����1-12����JAN-DEC����������1-7����SUN-SAT����(��ѡ�ֶ�)���ջ���1970-2099����ͨ�������ַ���ʾ�������壬����Ϊ�£�<br/>
&nbsp;&nbsp;&nbsp;б��(/)�ַ���ʾ����ֵ�����磬�����ֶ���"5/15"����ӵ�5�뿪ʼ��ÿ15��һ�Ρ�<br/>
&nbsp;&nbsp;&nbsp;�ʺ�(?)�ַ�����ĸL�ַ�ֻ�����������ں����������ֶ��п��á��ʺű�ʾ����ֶβ���������ֵ�����ԣ����ָ���������ڣ����������������ֶ��в���"?"����ʾ��������ֵ�޹ؽ�Ҫ�������и��ܵ��۵��趨���޹�Quartz������Spring����Quartz�����Լ��ӵ�һ��Լ�����Ǿ��ǣ�����(1-31)������(SUN-SAT)���ߣ�������һ�����ʺ�(?)��ϵͳ��������ʱ��Spring������ʽ��������������Ĺ��򣬾ͻ����쳣��������ʹ�õ�ʱ������ط�һ��Ҫע�⣬�������Linux��ִ��Cron��û��������Ƶġ�<br/>
&nbsp;&nbsp;&nbsp;��ĸL�ַ���last����д���������������ֶ��У���ʾ�����ڵ������һ��ִ�С������������ֶ��У����"L"��������,�͵���"7"��������������������ڵ����һ��ʵ��������"0L"��ʾ�����ڵ��µ����һ��������ִ�С�<br/>
&nbsp;&nbsp;&nbsp;��ĸ(W)�ַ���ִ�а��������ָ��ֵ�Ĺ����ա���"1W"�������������ֶ��У���ʾ��ִ�а����ڵ��µĵ�һ���������ڡ�<br/>
&nbsp;&nbsp;&nbsp;����(#)�ַ�Ϊ�����·�ָ������Ĺ�����ʵ������"MON#2"�������������ֶ��У���ʾ���������ڵ��µĵڶ�������һ��<br/>
&nbsp;&nbsp;&nbsp;�Ǻ�(*)�ַ���ͨ���ַ�,��ʾ���ֶο��Խ����κο��ܵ�ֵ�����ʽ���ӡ�<br/>
&nbsp;&nbsp;&nbsp;���ӣ�<br/>
&nbsp;&nbsp;&nbsp;"0 0 08 * * ?" ÿ������8�㴥��<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 ? * *" ÿ������10:15����<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 * * ?" ÿ������10:15����<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 ? * 6L 2009-2019" 2009����2019���ÿ�µ����һ������������10:15����<br/>
&nbsp;&nbsp;&nbsp;"0 15 10 ? * 6#3" ÿ�µĵ���������������10:15����<br/>
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
 1:jar�����ص�ַ��<a href="http://repo.spring.io" target="_blank">spring jar��</a>&nbsp;<a href="http://download.csdn.net/detail/jiashubing/9405044" target="_blank">quartz-all-1.6.5.jar��</a><br/>
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
<p style="text-indent:2em">����ʹ��Spring��ʱ����Quartz��ʵ��һ��ÿ5���ӡһ�ε�ǰʱ���С���ӡ�<br/>
 &nbsp;&nbsp;1:����ӿ�IPrintInfoService��</p>
   <pre  name="code" class="java">
package demoinfo.spring.quartz;
public interface IPrintInfoService {
	public void print();
}
   </pre>
<p style="text-indent:2em">2:ʵ�ֽӿ���PrintInfoServiceImpl</p>
<pre  name="code" class="java">
package demoinfo.spring.quartz;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import demoinfo.spring.quartz.IPrintInfoService;

public class PrintInfoServiceImpl implements IPrintInfoService{

	public void print() {
		Calendar now = Calendar.getInstance();
		System.out.println("�����Ǳ���ʱ�䣺" + this.format(now.getTime()));
	}
	
	public String format(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
	
}

</pre>
<p style="text-indent:2em">3:����QuartzJobBean��ʵ����PrintInfoJob</p>
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
<p style="text-indent:2em">4:Spring�����ļ�applicationContext.xml</p>
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
	&lt;!-- ����һ��Job --&gt;
	&lt;bean id="printInfoJob" class="org.springframework.scheduling.quartz.JobDetailBean"&gt;
		&lt;property name="jobClass" value="demoinfo.spring.quartz.PrintInfoJob" /&gt;
		&lt;property name="jobDataAsMap"&gt;
			&lt;map&gt;
				&lt;entry key="prinfInfoService" value-ref="printInfoService"&gt;&lt;/entry&gt;
			&lt;/map&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

	&lt;!-- �򵥵Ĵ����� --&gt;
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

	&lt;!--���ӵĴ����� --&gt;
	&lt;bean id="complexPrintInfoTrigger" class="org.springframework.scheduling.quartz.CronTriggerBean"&gt;
		&lt;property name="jobDetail"&gt;
			&lt;ref bean="printInfoJob" /&gt;
		&lt;/property&gt;
		&lt;property name="cronExpression"&gt;
			&lt;value&gt;00,05,10,15,20,25,30,35,40,45,50,55 * * * * ?&lt;/value&gt;
		&lt;/property&gt;
	&lt;/bean&gt;

	&lt;!-- spring�������� --&gt;
	&lt;bean class="org.springframework.scheduling.quartz.SchedulerFactoryBean"&gt;
		&lt;property name="triggers"&gt;
			&lt;list&gt;
				&lt;ref bean="complexPrintInfoTrigger" /&gt;
			&lt;/list&gt;
		&lt;/property&gt;
	&lt;/bean&gt;
&lt;/beans&gt;
</pre>
<p style="text-indent:2em">5:����������SpringQuartzDemo</p>
<pre  name="code" class="java">
package demoinfo.spring.quartz;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringQuartzDemo {

	public static void main(String[] args) {
		System.out.println("���Կ�ʼ......");
		new ClassPathXmlApplicationContext(
				"classpath:demoinfo/spring/quartz/applicationContext.xml");     
		System.out.println("���Խ���......");
	}

}

</pre>
<p style="text-indent:2em">���в������������Կ�������̨ÿ��5���Ӿʹ�ӡһ��ʱ����Ϣ��</p>


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