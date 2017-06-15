<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JBPM工作流</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<p style="text-indent:2em">工作流引擎是一种软件，它通过软件的形式来定义、执行并管理业务流程（如请假、报销等）。
通过工作流引擎当中提供的人工任务，实现业务流程自动运行过程中人的参与（复核、审批等）。<br/>
JBPM全称是Java Business Process Management（业务流程管理），它是覆盖了业务流程管理、工作流、服务协作等领域的一个开源的、灵活的、易扩展的可执行流程语言框架。
jBPM是公开源代码项目，使用它要遵循 ASL(Apache License Version 2.0)和EULA(JBoss End User License Agreement)协议。<br/>
<font color="red">工作流的组成：</font><br/>
&nbsp;&nbsp;一个完整的工作流产品来说它应该有一个流程设计器、一个流程管理跟踪工具、还要有一套核心的API及可以对外提供服务类。<br/><br/>
<img src="<%=basePath %>/image/jbpmprocess.png" style="width:80%"><br/><br/>
<font color="red">工作流的特色：</font><br/>
&nbsp;&nbsp;jBPM的一个特色是采用了它自己定义的流程描述语言(jPdl)。jPdl就是详细定义了流程的每个部分,如起始、结束状态,状态转换等。jBPM的另一个特色是它使用Hibernate来管理它的数据库。<br/>
<font color="red">工作流运行方式：</font><br/>
&nbsp;&nbsp;独立运行： jBPM流程引擎会作为一个单独的组件，部署到应用服务器当中，通过提供Service为外部的应用提供工作流服务。<br/>
&nbsp;&nbsp;嵌入式运行：在这种模式下jBPM流程引擎作为具体应用的一个模块。<br/><br/>
<img src="<%=basePath %>/image/jbpmrun.png" style="width:50%"><br/><br/>
</p>
<p style="text-indent:2em">学习JBPM前了解几个jbpm的表，做好jar包配置文件准备。 </p>
<p><strong>1.jar包准备</strong></p>
<p>添加jbpm相关jar包。bsh-2.0b4.jar，jbpm-3.1.4.jar，jbpm-identity.jar等相关jar包。<br/>
</p>
<p><strong>2.配置文件准备</strong></p>
<p>添加jbpm相关配置文件hibernate.cfg.xml、jbpm.cfg.xml、log4j.properties。配置文件在jbpm-jpdl.zip下载解压config文件夹下<br/>
</p>
<p><strong>3.流程定义表</strong></p>
<p>jbpm_processdefinition流程定义表<br/>
jbpm_node流程节点定义表<br/>
jbpm_task流程任务定义表<br/>
jbpm_transition流程转向定义表<br/>
jbpm_event流程事件定义表,跟节点变化有关.<br/>
jbpm_action流程动作定义表.定义具体的行动,可以嵌入到Event事件，或者transition.<br/>
jbpm_variableaccess流程变量定义表,流程变量是指流程在跳转时所需要的业务号等关键字段.<br/>
</p>
<p><strong>4.流程实例表</strong></p>
<p>jbpm_processinstance流程实例表<br/>
jbpm_taskinstance流程任务实例表<br/>
jbpm_token流程令牌表，要发出明确的指令或者信号，节点移动需要信号。<br/>
jbpm_variableinstance变量实例对应表<br/>
</p>
<p><strong>4.数据库准备</strong></p>
<p>
新建jbpm相关数据库表。<br/>
<a href="<%=basePath%>/jbpm/jbpm.sql">点击查看jbpm建表sql</a>
</p>
  </body>
</html>
