<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>JAVA菜鸟学习</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/js.js"></script>
	</head>

	<style type="text/css">
body {
	margin: 0px 2px;
	padding: 0;
	line-height: 2em;
	
	background-color: lightslategray;
}
b {
	font-size: 110%;
}
em {
	color: red;
}
#maincontainer {/*div边框*/
	width: 100%; /*Width of main container*/
	margin: 0 auto; /*Center container on page*/
}
#topsection {
	width: 100%;
	height: 133px;
	background: url(image/aaa.jpg) #434343 no-repeat; 
}
#topsection h1 {
	color: #fff;
	height: 2em;
	line-height: 3em;
	overflow: hidden;
}
#contentcolumn h2{
	height: 1.5em;
	line-height: 1.5em;
	overflow: hidden;
}
#leftcolumn h2{/*右侧栏*/
	height: 1.5em;
	line-height: 1.5em;
	overflow: hidden;
}
#contentwrapper {/*右侧栏*/
	font-size: 130%;
	float: left;
	width: 100%;
	background-color: green;
	text-align: center;	
}
#contentcolumn {
	margin-left: 45%; /*Set left margin to LeftColumnWidth*/
}
#leftcolumn {
	font-size: 130%;
	text-align: center;
	float: left;
	width: 45%; /*Width of left column*/
	margin-left: -100%; /*Set left margin to -(MainContainerWidth)*/
	background: #C8FC98;
}
#footer {
	clear: left;
	width: 100%;
	background: black;
	color: #FFF;
	text-align: center;
	padding: auto;
	overflow:hidden;
	position:fixed;
            bottom:0;
}
#footer a {
	color: #FFFF80;
}
.innertube {
	margin: 0px;
	/*Margins for inner DIV inside each column (to provide padding)*/
	margin-top: 0;
	
}
</style>


	<script type="text/javascript">
/*** Temporary text filler function. Remove when deploying template. ***/
var gibberish=["This is just some filler text", "Welcome to Dynamic Drive CSS Library", "Demo content nothing to read here"]
function filltext(words){
for (var i=0; i<words; i++)
document.write(gibberish[Math.floor(Math.random()*3)]+" ")
}
</script>
	<%
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		request.setCharacterEncoding("GBK");
	%>
	</head>
	<body>
		<div id="maincontainer">
			<div id="topsection">
				<div class="innertube">
					<center>
						<h1>
							JAVA菜鸟学习
							<br />
						</h1>
					</center>


					<br />
					<!--导航栏-->
					<div class="top">
						<ul class="menu">
							
							<li class="no_sub">
								<a  href="#"  onclick="mpost('codehome.html' , {code : 'oldindex' })"
									class="tablink nosub">首 页</a>
							</li>
							<li>
								<a href="#" class="tablink arwlink">Struts2实例</a>
								<ul>
									<li>
										<a href="#" id="strutsLoginDemo" onclick="strutsLoginDemo()">登陆实例</a>
									</li>
									<li>
										<a href="#" id="strutsValidDemo" onclick="strutsValidDemo()">框架校验实例</a>
									</li>
									<li>
										<a href="#"  id="strutsInterceptorDemo" onclick="strutsInterceptorDemo()">拦截器实例</a>
									</li>
									<li>
										<a href="#"  id="strutsFileUploadDemo" onclick="strutsFileUploadDemo()">文件上传实例</a>
									</li>
									<li>
										<a href="#"  id="strutsTagDemo" onclick="strutsTagDemo()">struts2标签实例</a>
									</li>
									<li>
										<a href="#"  id="strutsJsonDemo" onclick="strutsJsonDemo()">json</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#" class="tablink arwlink">Hibernate实例</a>
								<ul>
									<li>
										<a href="#"  id="ormCrudDemo"  onclick="ormCrudDemo()">增加</a>
									</li>
									<li>
										<a href="#"  id="ormCrudDeleteDemo"  onclick="ormCrudDeleteDemo(this.value)">删除</a>
									</li>
									<li>
										<a href="#"  id="ormCrudUpdateDemo" onclick="ormCrudUpdateDemo(this.value)">修改</a>
									</li>
									<li>
										<a href="#"  id="ormCrudQueryDemo" onclick="ormCrudQueryDemo(this.value)">简单查询</a>
									</li>
									<li>
										<a href="#"  id="ormCrudQueryLinkDemo" onclick="ormCrudQueryLinkDemo(this.value)">连接查询</a>
									</li>
									<li>
										<a href="#"  id="ormCrudQueryHqlDemo" onclick="ormCrudQueryHqlDemo(this.value)">自定义查询</a>
									</li>
									<li>
										<a href="#"  id="relationshipDemo" onclick="relationshipDemo(this.value)">关系(一对一)</a>
									</li>
									<li>
										<a href="#"  id="relationshipOneToMany" onclick="relationshipOneToMany(this.value)">关系(一对多)</a>
									</li>
									<!-- <li>
										<a href="#"  id="strutsCrudDemo" onclick="strutsCrudDemo()">crud实例</a>
									</li> -->
								</ul>
							</li>
							<li>
								<a href="#" class="tablink arwlink">Spring实例</a>
								<ul>
									<li>
										<a href="#"  id="springIocDemo"  onclick="springIocDemo()">IOC</a>
									</li>
									<li>
										<a href="#"  id="springAopDemo" onclick="springAopDemo()">AOP</a>
									</li>
									<li>
										<a href="#"  id="springJdbcDemo" onclick="springJdbcDemo()">JDBC数据库访问</a>
									</li>
									<li>
										<a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">事务管理</a>
									</li>
									<li>
										<a href="#"  id="springOrmDemo"  onclick="springOrmDemo()">ORM整合</a>
									</li>
									<li>
										<a href="#"  id="springQuartzDemo" onclick="springQuartzDemo()">定时服务QuartZ</a>
									</li>
									<li>
										<a href="#"  id="springMvcDemo"  onclick="springMvcDemo()">SpringMVC</a>
									</li>
								</ul>
								<div class="hot"></div>
							</li>
							<li>
								<a href="#" class="tablink arwlink">AJAX和javaScript</a>
								<ul>
									<li>
										<a href="#"  id="ajaxJsDemo" onclick="ajaxJsDemo()">Ajax简单特效</a>
									</li>
									<li>
										<a href="#"  id="ajaxJsJqueryDemo"  onclick="ajaxJsJqueryDemo()">Ajax简单校验</a>
									</li>
									<li>
										<a href="#"  id="ajaxJsAutoCompleterDemo"  onclick="ajaxJsAutoCompleterDemo()">Ajax查询</a>
									</li>
									<li>
										<a href="#"  id="ajaxJsSelectValueDemo"  onclick="ajaxJsSelectValueDemo()">JS取值大全</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#" class="tablink arwlink">webService实例</a>
								<ul>
									<!-- <li>
										<a href="#"  id="webServiceConf"  onclick="webServiceConf()">环境配置(XFire)</a>
									</li>
									<li>
										<a href="#"  id="webServiceTake"  onclick="webServiceTake()">调取网站服务</a>
									</li> -->
									<li>
										<a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">环境配置和发布服务（CXF）</a>
									</li>
									<li>
										<a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">调用CXF服务示例（调用客户端）</a>
									</li>
									<li>
										<a href="#"  id="deployServlet"  onclick="deployServlet()">发布Servlet</a>
									</li>
									<li>
										<a href="#"  id="webServiceXstream"  onclick="webServiceXstream()">XStream解析XML</a>
									</li>
									<li>
										<a href="#"  id="webServiceHttpClient"  onclick="webServiceHttpClient()">httpClient调用Servlet</a>
									</li>
									<!--  <li>
										<a href="#"  id="webServiceSoap"  onclick="webServiceSoap()">调用服务端(Soap)</a>
									</li>-->
								</ul>
							</li>
					<!-- 		<li>
								<a href="#" class="tablink arwlink">JBPM工作流实例</a>
								<ul>
									<li>
										<a href="#"  id=""  onclick="">准备与环境搭建</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">发布</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">任务发起</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">流程跳转和退回</a>
									</li>
								</ul>
								<div class="new"></div>
							</li> -->
							<!-- 
							<li>
								<a href="#" class="tablink arwlink">设计模式23种</a>
								<ul>
									<li>
										<a href="#"  id="" onclick="">单例模式</a>
									</li>
									<li>
										<a href="#"  id="" onclick="">观察者模式</a>
									</li>
								</ul>
							</li> -->
							<li>
								<a href="#" class="tablink arwlink">JBPM工作流</a>
								<ul>
									<li>
										<a href="#"  id="JbpmIntroduction" onclick="JbpmIntroduction()">简介</a>
									</li>
									<li>
										<a href="#"  id="deployProcess" onclick="deployProcess()">发布工作流</a>
									</li>
									<li>
										<a href="#"  id="startTask" onclick="startTask()">发起任务</a>
									</li>
									<li>
										<a href="#"  id="handleFlow" onclick="handleFlow()">流程跳转和退回</a>
									</li>
								</ul>
							</li>
							<li class="no_sub">
								<a  href="#"  onclick="mpost('codehome.html' , {code : 'newindex' })"
									class="tablink nosub">返回新版</a>
							</li>
						</ul>
					</div>
					<!--代码结束-->


				</div>
				<!-- /b -->
				<div id="contentwrapper">
					<div id="contentcolumn">
						<h2>源码</h2>
						<iframe id="mainfrm" src="./demoSrcCode.jsp" name="mainfrm"
							width=100% height=690 scrolling="yes" style="border: solid 1px;"
							frameborder="0">
							<div class="innertube">
								<b>Content Column: <em>Fixed</em>
								</b>
								<script type="text/javascript">filltext(45)</script>
							</div>
						</iframe>
					</div>
				</div>

				<div id="leftcolumn">
					<h2>示例展示</h2>
					<iframe id="mainfrm1" src="./demoList.jsp" name="mainfrm1"
						onload="mainfrm.window.location.reload();" width=100% height=690
						scrolling="yes" style="border: solid 1px;" frameborder="0">
						<div class="innertube">
							<b>Left Column: <em>200px</em>
							</b>
							<script type="text/javascript">filltext(15)</script>
						</div>
					</iframe>
				</div>

				<div id="footer">
					希望您亲自打一遍代码，这样可以更加熟悉<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257110248'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257110248%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
				</div>

			</div>
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
    //JBPM工作流实例
    //iframe框的高度随着浏览器改变而改变
	$(function(){
	    var height = $(window).height();
	    var contentHeight = height - (156);
	    $("#mainfrm").css("height",contentHeight);
	    $("#mainfrm1").css("height",contentHeight);
	});
	$(window).resize(function () {
	    var height = $(window).height();
	    var contentHeight = height - (156);
	    $("#mainfrm").css("height",contentHeight);
	    $("#mainfrm1").css("height",contentHeight);
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
</script>