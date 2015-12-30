<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setHeader("Pragma","no-cache");     
response.setHeader("Cache-Control","no-cache");    
response.setDateHeader("Expires",0);
request.setCharacterEncoding("GBK");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	.mulu{
		margin-left:4%;
		width:45%;
		border:#66ccff 1px solid;
		height:250px;
		float:left;
		text-align: center;
		margin:10px 10px;
	}
	
	.mulu a{
		height: 16px;
		line-height: 18px;
		font-size: 15px;
		color: #333;
		text-decoration: underline;
	}
	
	</style>
  </head>
  
  <body>
    
    <div style="float:left;">
	    <div id="struts" class="mulu">
		    <h2>Struts2实例</h2><br/>
		    <a href="./common/common.action?target=strutsLoginDemo" >登陆实例</a><br>
		    <a href="./common/common.action?target=strutsValidDemo" >框架校验实例</a><br/>
		    <a href="./common/common.action?target=strutsInterceptorDemo" >拦截器实例</a><br/>
		    <a href="./common/common.action?target=strutsFileUploadDemo" >文件上传实例</a><br/>
		    <a href="./common/common.action?target=strutsTagDemo" >struts2标签实例</a><br/>
		    <a href="./common/common.action?target=strutsJsonDemo">json</a>
	    </div>
	    <div id="hibernate" class="mulu">
		    <h2>Hibernate实例</h2>
		    <a href="./common/common.action?target=ormCrudDemo">增加</a><br/>
		    <a href="./common/common.action?target=ormCrudDeleteDemo">删除</a><br/>
		    <a href="./common/common.action?target=ormCrudUpdateDemo">修改</a><br/>
		    <a href="./common/common.action?target=ormCrudQueryDemo">简单查询</a><br/>
		    <a href="./common/common.action?target=ormCrudQueryLinkDemo">连接查询</a><br/>
		    <a href="./common/common.action?target=ormCrudQueryHqlDemo">自定义查询（HQL或者SQL均可）</a><br/>
		    <a href="./common/common.action?target=relationshipDemo">关系（一对一，一对多，多对多）</a><br/>
		    <a href="./common/common.action?target=strutsCrudDemo" >crud实例</a><br/>
	    </div>
	    <div id="spring" class="mulu">
		    <h2>Spring实例</h2>
		    <a href="./strut/json/json.jsp">注入</a><br/>
		    <a href="./strut/json/json.jsp">事务的配置管理</a><br/>
	    </div>
	    <div id="ajax" class="mulu">
		    <h2>AJAX和javaScript</h2>
		    <a href="./strut/json/json.jsp">AJAX简单的校验</a><br/>
		    <a href="./strut/json/json.jsp">AJAX查询</a><br/>
		    <a href="./common/common.action?target=strutsAjaxDemo">简单Ajax特效</a><br/>
		    <a href="./strut/json/json.jsp">JavaScript取值大全</a><br/>
	    </div>
	    <div id="webService" class="mulu">
		    <h2>webService实例</h2>
		    <a href="./common/common.action?target=webServiceConf">环境配置</a><br/>
		    <a href="./common/common.action?target=webServiceTake">调取网站服务</a><br/>
	    </div>
	    <div id="jbpm" class="mulu">
		    <h2>JBPM工作流实例</h2>
		    <a href="./strut/json/json.jsp">资源准备与环境搭建</a><br/>
		    <a href="./strut/json/json.jsp">发布</a><br/>
		    <a href="./strut/json/json.jsp">任务发起</a><br/>
		    <a href="./strut/json/json.jsp">流程跳转和退回</a><br/>
	    </div>
	    <div class="mulu">
			<h2>设计模式23中</h2>
			<a>单利模式</a>	    
			<a>观察者模式</a>	    
	    </div>
    </div>
  </body>
</html>
