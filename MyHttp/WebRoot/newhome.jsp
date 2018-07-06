<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String code ="";
	if(request.getParameter("code")==null)
		code="null";
	else
    	code = (String)request.getParameter("code");
%>
<!DOCTYPE html>
<html>
<head>
   <title>JAVA 菜鸟学习</title>
   <meta http-equiv="content-type" content="text/html;charset=UTF-8">
   <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <link href="http://kendo.cdn.telerik.com/2017.1.118/styles/kendo.common.min.css" rel="stylesheet" type="text/css" />
   <link href="http://kendo.cdn.telerik.com/2017.1.118/styles/kendo.silver.min.css" rel="stylesheet" type="text/css">
   <link href="css/index.css" rel="stylesheet"><!--私有CSS-->
   <link rel = "Shortcut Icon" href="cainiao.jpg"> 
   <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
   <script src="js/bootstrap.min.js" type="text/javascript"></script>
   <script src="js/prefixfree.min.js" type="text/javascript"></script>
   <script src="http://kendo.cdn.telerik.com/2017.1.118/js/kendo.all.min.js" type="text/javascript"></script>
   
   <!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
   <![endif]-->
</head>
<body>
<!--导航部分-->
<div id="nav" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
   <div class="navbar-header">
	  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
         <span class="sr-only">切换导航</span>
		 <span class="icon-bar"></span>
		 <span class="icon-bar"></span>
		 <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"  onclick="mpost('codehome.html' , {code : 'newindex' })">JAVA 菜鸟学习</a>
   </div>
   <div class="collapse navbar-collapse" id="example-navbar-collapse">
      <ul class="nav navbar-nav">
		 <li id="nav_zy"><a href="#"  onclick="mpost('codehome.html' , {code : 'newindex' })">主页</a></li>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Struts2实例 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li><a href="#" id="strutsLoginDemo" onclick="strutsLoginDemo()">登陆实例</a></li>
			    <li class="divider"></li>
               <li><a href="#" id="strutsValidDemo" onclick="strutsValidDemo()">框架校验实例</a></li>
			    <li class="divider"></li>
               <li><a href="#"  id="strutsInterceptorDemo" onclick="strutsInterceptorDemo()">拦截器实例</a></li>
               <li class="divider"></li>
               <li><a href="#"  id="strutsFileUploadDemo" onclick="strutsFileUploadDemo()">文件上传实例</a></li>
               <li class="divider"></li>
               <li><a href="#"  id="strutsTagDemo" onclick="strutsTagDemo()">Struts2标签实例</a></li>
			   <li class="divider"></li>
              <li><a href="#"  id="strutsJsonDemo" onclick="strutsJsonDemo()">json</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Hibernate实例 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#"  id="ormCrudDemo"  onclick="ormCrudDemo()">增加</a></li>
               <li class="divider"></li>
			   <li><a href="#"  id="ormCrudDeleteDemo"  onclick="ormCrudDeleteDemo(this.value)">删除</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudUpdateDemo" onclick="ormCrudUpdateDemo(this.value)">修改</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudQueryDemo" onclick="ormCrudQueryDemo(this.value)">简单查询</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudQueryLinkDemo" onclick="ormCrudQueryLinkDemo(this.value)">连接查询</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudQueryHqlDemo" onclick="ormCrudQueryHqlDemo(this.value)">自定义查询</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="relationshipDemo" onclick="relationshipDemo(this.value)">关系(一对一)</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="relationshipOneToMany" onclick="relationshipOneToMany(this.value)">关系(一对多)</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Spring实例 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#"  id="springIocDemo"  onclick="springIocDemo()">IOC</a></li>
               <li class="divider"></li>
			   <li><a href="#"  id="springAopDemo" onclick="springAopDemo()">AOP</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springJdbcDemo" onclick="springJdbcDemo()">JDBC数据库访问</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">事务管理</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">ORM整合</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springQuartzDemo" onclick="springQuartzDemo()">定时服务QuartZ</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springMvcDemo"  onclick="springMvcDemo()">SpringMVC</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               AJAX和JavaScript 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#"  id="ajaxJsDemo" onclick="ajaxJsDemo()">Ajax简单特效</a></li>
               <li class="divider"></li>
			   <li><a href="#"  id="ajaxJsJqueryDemo"  onclick="ajaxJsJqueryDemo()">Ajax简单校验</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ajaxJsAutoCompleterDemo"  onclick="ajaxJsAutoCompleterDemo()">Ajax查询(自动补全例子)</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ajaxJsSelectValueDemo"  onclick="ajaxJsSelectValueDemo()">JavaScript取值大全</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               WebService实例
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <!-- <li><a href="#"  id="webServiceConf"  onclick="webServiceConf()">环境配置(XFire)</a></li>
                <li class="divider"></li>
			   <li><a href="#"  id="webServiceTake"  onclick="webServiceTake()">调取网站服务(XFire)</a></li> -->
			   <li><a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">环境配置和发布服务（CXF）</a></li>
                <li class="divider"></li>
			   <li><a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">调用CXF服务示例（调用客户端）</a></li>
			    <li class="divider"></li>
			   <li><a href="#"  id="webServiceCxf"  onclick="deployServlet()">发布Servlet</a></li>
			    <li class="divider"></li>
			   <li><a href="#"  id="webServiceXstream"  onclick="webServiceXstream()">XStream解析XML</a></li>
			    <li class="divider"></li>
			   <li><a href="#"  id="webServiceHttpClient"  onclick="webServiceHttpClient()">httpClient调用Servlet</a></li>
			    <!-- <li class="divider"></li>
			   <li><a href="#"  id="webServiceSoap"  onclick="webServiceSoap()">调用服务端(Soap)</a></li> -->
            </ul>
         </li>
		 <!-- <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               JBPM工作流实例
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#">准备与环境搭建</a></li>
			   <li class="divider"></li>
               <li><a href="#">发布</a></li>
			   <li class="divider"></li>
               <li><a href="#">任务发起</a></li>
               <li class="divider"></li>
               <li><a href="#">流程跳转和退回</a></li>
            </ul>
         </li> -->
         <!-- 
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               设计模式23种
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#">单例模式</a></li>
			   <li class="divider"></li>
               <li><a href="#">观察者模式</a></li>
            </ul>
         </li> -->
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               JBPM工作流
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#" id="JbpmIntroduction" onclick="JbpmIntroduction()">简介</a></li>
			   <li class="divider"></li>
               <li><a href="#" id="deployProcess" onclick="deployProcess()">发布工作流</a></li>
               <li class="divider"></li>
               <li><a href="#" id="startTask" onclick="startTask()">发起任务</a></li>
               <li class="divider"></li>
               <li><a href="#" id="handleFlow" onclick="handleFlow()">流程跳转和退回</a></li>
            </ul>
         </li>
		 <li id="nav_fhzy"><a href="frame.jsp" >返回旧版</a></li>
      </ul>
   </div>
</div>

<!--实例展示部分-->
<div id="section">
	<div id="section_box">
		<div id="section_left">
			<div id="section_left_title">实例展示</div>
			<ul id="panelbar">
				<li><!--添加这个class   k-state-active的元素会默认展开-->
					<span class="panelbar_title">Struts2实例</span>
					<ul>
						<li><a href="#" id="strutsLoginDemo" onclick="strutsLoginDemo()">登陆实例</a></li>
						<li><a href="#" id="strutsValidDemo" onclick="strutsValidDemo()">框架校验实例</a></li>
						<li><a href="#"  id="strutsInterceptorDemo" onclick="strutsInterceptorDemo()">拦截器实例</a></li>
						<li><a href="#"  id="strutsFileUploadDemo" onclick="strutsFileUploadDemo()">文件上传实例</a></li>
						<li><a href="#"  id="strutsTagDemo" onclick="strutsTagDemo()">struts2标签实例</a></li>
						<li><a href="#"  id="strutsJsonDemo" onclick="strutsJsonDemo()">json</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">Hibernate实例</span>
					<ul>
						<li><a href="#"  id="ormCrudDemo"  onclick="ormCrudDemo()">增加</a></li>
						<li><a href="#"  id="ormCrudDeleteDemo"  onclick="ormCrudDeleteDemo(this.value)">删除</a></li>
						<li><a href="#"  id="ormCrudUpdateDemo" onclick="ormCrudUpdateDemo(this.value)">修改</a></li>
						<li><a href="#"  id="ormCrudQueryDemo" onclick="ormCrudQueryDemo(this.value)">简单查询</a></li>
						<li><a href="#"  id="ormCrudQueryLinkDemo" onclick="ormCrudQueryLinkDemo(this.value)">连接查询</a></li>
						<li><a href="#"  id="ormCrudQueryHqlDemo" onclick="ormCrudQueryHqlDemo(this.value)">自定义查询（HQL或者SQL均可）</a></li>
						<li><a href="#"  id="relationshipDemo" onclick="relationshipDemo(this.value)">关系(一对一)</a></li>
						<li><a href="#"  id="relationshipOneToMany" onclick="relationshipOneToMany(this.value)">关系(一对多)</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">Spring实例</span>
					<ul>
						<li><a href="#"  id="springIocDemo"  onclick="springIocDemo()">IOC</a></li>
						<li><a href="#"  id="springAopDemo" onclick="springAopDemo()">AOP</a></li>
						<li><a href="#"  id="springJdbcDemo" onclick="springJdbcDemo()">JDBC数据库访问</a></li>
						<li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">事务管理</a></li>
						<li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">SpringORM整合</a></li>
						<li><a href="#"  id="springQuartzDemo" onclick="springQuartzDemo()">Spring定时服务QuartZ</a></li>
						<li><a href="#"  id="springMvcDemo"  onclick="springMvcDemo()">SpringMVC</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">AJAX和javaScript</span>
					<ul>
						<li><a href="#"  id="ajaxJsDemo" onclick="ajaxJsDemo()">Ajax简单特效(struts2)</a></li>
						<li><a href="#"  id="ajaxJsJqueryDemo"  onclick="ajaxJsJqueryDemo()">Ajax简单校验(struts2+jQuery)</a></li>
						<li><a href="#"  id="ajaxJsAutoCompleterDemo"  onclick="ajaxJsAutoCompleterDemo()">Ajax查询(自动补全例子)</a></li>
						<li><a href="#"  id="ajaxJsSelectValueDemo"  onclick="ajaxJsSelectValueDemo()">JavaScript取值大全</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">webService实例</span>
					<ul>
						<!-- <li><a href="#"  id="webServiceConf"  onclick="webServiceConf()">环境配置(XFire)</a></li>
						<li><a href="#"  id="webServiceTake"  onclick="webServiceTake()">调取网站服务(XFire)</a></li> -->
						<li><a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">环境配置和发布服务（CXF）</a></li>
						<li><a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">调用CXF服务示例（调用客户端）</a></li>
						<li><a href="#"  id="webServiceCxf"  onclick="deployServlet()">发布Servlet</a></li>
						<li><a href="#"  id="webServiceXstream"  onclick="webServiceXstream()">XStream解析XML</a></li>
						<li><a href="#"  id="webServiceHttpClient"  onclick="webServiceHttpClient()">httpClient调用Servlet</a></li>
						<!-- <li><a href="#"  id="webServiceSoap"  onclick="webServiceSoap()">调用服务端(Soap)</a></li> -->
					</ul>
				</li>
				<!-- 
				<li>
					<span class="panelbar_title">设计模式23种</span>
					<ul>
						<li><a href="#">单例模式</a></li>
						<li><a href="#">观察者模式</a></li>
					</ul>
				</li> -->
				<li>
					<span class="panelbar_title">JBPM工作流</span>
					<ul>
						<li><a href="#" id="JbpmIntroduction" onclick="JbpmIntroduction()">简介</a></li>
						<li><a href="#" id="deployProcess" onclick="deployProcess()">发布工作流</a></li>
						<li><a href="#" id="startTask" onclick="startTask()">发起任务</a></li>
						<li><a href="#" id="handleFlow" onclick="handleFlow()">流程跳转和退回</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="section_right">
			<div id="section_sljj"><!--实例简介-->
				<div id="section_sljj_title">实例简介及展示</div>
				<div id="section_sljj_body">
					<iframe id="mainfrm1" src="./demoList.jsp" name="mainfrm1"
						onload="mainfrm.window.location.reload();" width="100%"  height="100%"
						scrolling="yes" style="border: solid 1px;" frameborder="0">
					</iframe>
				</div>
				<div id="section_ckdm_btn">查看代码</div>
			</div>
			<div id="section_ydm"><!--源代码-->
				<div id="section_ydm_title">查看源代码</div>
				<div id="section_ydm_body">
					<iframe id="mainfrm" src="./demoSrcCode.jsp" name="mainfrm"
								width=100% height=690 scrolling="yes" frameborder="0">
					</iframe>
				</div>
				<div id="section_fhsl_btn">返回实例</div>
			</div>
		</div>
		
	</div>
</div>
<div id="footer">
	<div id="footer_link">
		<a href="#">首页</a></li>
		<a href="#">JAVA菜鸟</a></li>
		<a href="#">菜鸟社区</a></li>
		<a id="footer_link_last" href="#">联系我们</a>
	</div>
	<div id="footer_box">
		<a href="#">法律声明</a></li>
		<span>备案证号：京##########</span>
		<span>&copy;版权20xx-20xx ############有限公司
		<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257110248'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257110248%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
		</span>
	</div>
</div>
<script>
$(function () {
	$("#panelbar").kendoPanelBar({
		expandMode: "single" // 设置展开模式只能展开单个
	});
});
$("#banner_box_left_botton").click(function(){
	var t=$(window).scrollTop();
	$('body,html').animate({scrollTop:$("#show").offset().top},1000);
});
$("#show a").click(function(){
	var t=$(window).scrollTop();
	$('body,html').animate({scrollTop:$("#section").offset().top},1000);
});
$("#section_ckdm_btn").click(function(){
	var t=$(window).scrollTop();
	$('body,html').animate({scrollTop:$("#section_ckdm_btn").offset().top},1000);
});
$("#section_fhsl_btn").click(function(){
	var t=$(window).scrollTop();
	$('body,html').animate({scrollTop:$("#section").offset().top},1000);
});

/*********
	注意下面这里是关于点击链接跳转的方法，
	是根据元素下标获取的，
	所以在更新网页的时候要注意一下<a>标签内容的书写顺序要一一对应
	网页的布局不要动，这个方法是根据父元素，子元素下标进行查找的，
	如果改变元素的位置找不到对应元素
	***********/
$(".show_box_win a").click(function(){
	var n = $(this).parent().index();//获取当前元素父节点下标
	var i = $(this).parent().parent().parent().index();//获取当前元素高层父节点下标
	$('#panelbar').children('li:eq('+i+')').addClass('k-state-active');
	$('#panelbar').children('li:eq('+i+')').children().children('li:eq('+n+')').children().addClass('k-state-selected k-state-focused');
	$('#panelbar').data("kendoPanelBar").expand($("#panelbar .k-state-active"));//展开元素

});
</script>
</body>
</html>
<script>
//刷新源码窗口
function refreshMainfrm(){
	document.getElementById("mainfrm").reload(); 
	document.frames('mainfrm').location.reload(); 
}

function demoIndex(){
    document.getElementById("mainfrm1").src="./common/common.action?target=backDemoList";
    document.getElementById("mainfrm1").onload;
  }

function strutsLoginDemo(){
    document.getElementById("mainfrm1").src="./common/common.action?target=strutsLoginDemo";
    document.getElementById("mainfrm1").onload;
  }
  
  
    function strutsValidDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=strutsValidDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function strutsInterceptorDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=strutsInterceptorDemo";
    	document.getElementById("mainfrm1").onload;
    }
    
    function strutsFileUploadDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=strutsFileUploadDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function strutsTagDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=strutsTagDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function strutsCrudDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=strutsCrudDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function strutsJsonDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=strutsJsonDemo";
    	document.getElementById("mainfrm1").onload;
    }
    //Hibernate
    function ormCrudDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ormCrudDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ormCrudDeleteDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ormCrudDeleteDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ormCrudUpdateDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ormCrudUpdateDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ormCrudQueryDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ormCrudQueryDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ormCrudQueryLinkDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ormCrudQueryLinkDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ormCrudQueryHqlDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ormCrudQueryHqlDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function relationshipDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=relationshipDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function relationshipOneToMany(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=relationshipOneToMany";
    	document.getElementById("mainfrm1").onload;
    }
    //Spring
   function springIocDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=springIocDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function springAopDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=springAopDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function springJdbcDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=springJdbcDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function springTransactionDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=springTransactionDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function springOrmDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=springOrmDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function springQuartzDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=springQuartzDemo";
    	document.getElementById("mainfrm1").onload;
    }
   function springMvcDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=springMvcDemo";
    	document.getElementById("mainfrm1").onload;
    }
    //AJAX和javaScript
     function ajaxJsDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ajaxJsDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ajaxJsJqueryDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ajaxJsJqueryDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ajaxJsAutoCompleterDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ajaxJsAutoCompleterDemo";
    	document.getElementById("mainfrm1").onload;
    }
    function ajaxJsSelectValueDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=ajaxJsSelectValueDemo";
    	document.getElementById("mainfrm1").onload;
    }
    //webService
    function webServiceConf(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceConf";
    	document.getElementById("mainfrm1").onload;
    }
    function webServiceTake(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceTake";
    	document.getElementById("mainfrm1").onload;
    }
    function webServiceXstream(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceXstream";
    	document.getElementById("mainfrm1").onload;
    }
    function webServiceCxf(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceCxf";
    	document.getElementById("mainfrm1").onload;
    }
    function deployServlet(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=deployServlet";
    	document.getElementById("mainfrm1").onload;
    }
    function webServiceHttpClient(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceHttpClient";
    	document.getElementById("mainfrm1").onload;
    }
    function webServiceSoap(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceSoap";
    	document.getElementById("mainfrm1").onload;
    }
    //JBPM工作流
		function JbpmIntroduction(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=JbpmIntroduction";
    	document.getElementById("mainfrm1").onload;
	    }
	    function deployProcess(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=deployProcess";
    	document.getElementById("mainfrm1").onload;
    	}
    	function startTask(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=startTask";
    	document.getElementById("mainfrm1").onload;
    	}
    	function handleFlow(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=handleFlow";
    	document.getElementById("mainfrm1").onload;
    	}
    //JBPM工作流实例
    //iframe框的高度随着浏览器改变而改变
	$(function(){
	   	var height = $(window).height();
	    var contentHeight = height - (156);
	    var theight = contentHeight + (45);
	    $("#mainfrm").css("height",contentHeight);
	    $("#mainfrm1").css("height",contentHeight); 
		$("#section_sljj").css("height",theight);
		$("#section_ydm").css("height",theight);
	    $("#section_box").css("height",2*theight);
	    $("#section").css("background-color","#1c1d21");
		/* var theight = $("#mainfrm1").height() + (45);
		$("#section_sljj").css("height",theight);
		var theight2 = $("#mainfrm").height() + (45);
		$("#section_ydm").css("height",theight);
		console.log(height); */
	});
	$(window).resize(function () {
	   	var height = $(window).height();
	    var contentHeight = height - (156);
	    var theight = contentHeight + (45);
	    $("#mainfrm").css("height",contentHeight);
	    $("#mainfrm1").css("height",contentHeight); 
		$("#section_sljj").css("height",theight);
		$("#section_ydm").css("height",theight);
		$("#section_box").css("height",2*theight);
		$("#section").css("background-color","#1c1d21");
	});
	$(function(){
		 var temp = "<%=code%>";
		 if(temp != "null")
		 	eval( temp+"()");
 	
		/* var url = location.search; //获取url中"?"符后的字串 
		var theRequest = new Object(); 
		if (url.indexOf("?") != -1) { 
			var str = url.substr(1); 
			strs = str.split("&"); 
			var temp = strs[0].split("=")[0];
			theRequest[temp]=unescape(strs[0].split("=")[1]); 
			if(temp =="code"){
				eval( theRequest[temp]+"()");
			}
		} */
	});
     function mpost(URL, PARAMS) {      
		var temp = document.createElement("form");      
		temp.action = URL;      
		temp.method = "post";      
		temp.style.display = "none";      
		for (var x in PARAMS) {      
		var opt = document.createElement("textarea");      
		opt.name = x;      
		opt.value = PARAMS[x];      
	    			temp.appendChild(opt);      
		  }      
	   document.body.appendChild(temp);      
	   temp.submit();      
	  		return temp;      
	}      
</script>
