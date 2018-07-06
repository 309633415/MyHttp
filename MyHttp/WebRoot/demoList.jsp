<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	.mulu a:link{text-decoration: none; /* 指正常的未被访问过的链接*/}
	.mulu a:visited{text-decoration:none; /*指已经访问过的链接*/}
	.mulu a:hover{ text-decoration:underline;  font-size:17px;color:blue/*指鼠标在链接*/}
	.mulu a:active{text-decoration:none;color:purple;/* 指正在点的链接*/ }
	
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
		    <a href="./common/common.action?target=relationshipDemo">关系(一对一)</a><br/>
		    <a href="./common/common.action?target=relationshipOneToMany">关系(一对多)</a><br/>
		    <!-- <a href="./common/common.action?target=strutsCrudDemo" >crud实例</a><br/> -->
	    </div>
	    <div id="spring" class="mulu">
		    <h2>Spring实例</h2>
		    <a href="./common/common.action?target=springIocDemo">IOC</a><br/>
		    <a href="./common/common.action?target=springAopDemo">AOP</a><br/>
		    <a href="./common/common.action?target=springJdbcDemo">SpringJDBC数据库访问</a><br/>
		    <a href="./common/common.action?target=springTransactionDemo">Spring事务管理</a><br/>
		    <a href="./common/common.action?target=springOrmDemo">SpringORM整合</a><br/>
		    <a href="./common/common.action?target=springQuartzDemo">Spring定时服务QuartZ</a><br/>
		    <a href="./common/common.action?target=springMvcDemo">SpringMVC</a><br/>
	    </div>
	    <div id="ajax" class="mulu">
		    <h2>AJAX和javaScript</h2>
		    <a href="./common/common.action?target=ajaxJsDemo">Ajax简单特效(struts2)</a><br/>
		    <a href="./common/common.action?target=ajaxJsJqueryDemo">Ajax简单校验(struts2+jQuery)</a><br/>
		    <a href="./common/common.action?target=ajaxJsAutoCompleterDemo">Ajax查询(自动补全例子)</a><br/>
		    <a href="./common/common.action?target=ajaxJsSelectValueDemo">JavaScript取值大全</a><br/>
	    </div>
	    <div id="webService" class="mulu">
		    <h2>webService实例</h2>
		    <!-- <a href="./common/common.action?target=webServiceConf">环境配置(XFire)</a><br/>
		    <a href="./common/common.action?target=webServiceTake">调取网站服务(XFire)</a><br/> -->
		    <a href="./common/common.action?target=webServiceCxf">环境配置和发布服务（CXF）</a><br/>
		    <a href="./common/common.action?target=webServiceCxf">调用CXF服务示例（调用客户端）</a><br/>
		    <a href="./common/common.action?target=deployServlet">发布Servlet</a><br/>
		    <a href="./common/common.action?target=webServiceXstream">XStream解析XML</a><br/>
		    <a href="./common/common.action?target=webServiceHttpClient">httpClient调用Servlet</a><br/>
		    <!-- <a href="./common/common.action?target=webServiceSoap">调用外网服务端(Soap)</a><br/> -->
	    </div>
	  <!--   <div id="jbpm" class="mulu">
		    <h2>JBPM工作流实例</h2>
		    <a href="./strut/json/json.jsp">资源准备与环境搭建</a><br/>
		    <a href="./strut/json/json.jsp">发布</a><br/>
		    <a href="./strut/json/json.jsp">任务发起</a><br/>
		    <a href="./strut/json/json.jsp">流程跳转和退回</a><br/>
	    </div> -->
	   <!-- <div class="mulu">
			<h2>设计模式23中</h2>
			<a href="./strut/json/json.jsp">单利模式</a>	    
			<a href="./strut/json/json.jsp">观察者模式</a>	    
	    </div> --> 
	    <div class="mulu">
			<h2>JBPM工作流</h2>
			<a href="./common/common.action?target=JbpmIntroduction">简介</a>	  <br/> 
			<a href="./common/common.action?target=deployProcess">发布工作流</a>	<br/>   
			<a href="./common/common.action?target=startTask">发起任务</a>	   <br/>
			<a href="./common/common.action?target=handleFlow">流程跳转和退回</a>	 <br/>
	    </div>
    </div>
  </body>
</html>