<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
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
<style>
/***************内部CSS样式为旋转立方体样式勿删，不要写在外部**************************/
.wrap {
	perspective: 1000px;
	perspective-origin: 50% 50%;
	background-size: 80px 80px;
	/* Background stripes animation */
	animation: bganim 3s linear 2s infinite;
}

@keyframes bganim {
	from {
		background-position: 0px;
	}

	to {
		background-position: 80px;
	}
}

.cube {
	margin: auto;
	position: relative;
	height: 200px;
	width: 200px;
	transform-style: preserve-3d;
}

.cube div {
	position: absolute;
	padding-top: 40px;
	box-sizing: border-box;
	height: 100%;
	width: 100%;
	opacity: 0.8;
	border: solid 1px #eee;
	color: #fff;
	font: 10px arial;
	transition: transform 0.2s ease-in;
}

.front {
	background-color:#961e37;
	transform: translateZ(100px);
}

.back {
	background-color:#cd2b38;
	transform: translateZ(-100px) rotateY(180deg);
}

.right {
	background-color:#fdd621;
	transform: rotateY(-270deg) translateX(100px);
	transform-origin: top right;
}

.left {
	background-color:#37a245;
	transform: rotateY(270deg) translateX(-100px);
	transform-origin: center left;
}

.top {
	background-color:#1776cb;
	transform: rotateX(-270deg) translateY(-100px);
	transform-origin: top center;
}

.bottom {
	background-color:#18d2cb;
	transform: rotateX(270deg) translateY(100px);
	transform-origin: bottom center;
}
/* inner cube */
i{
  position:absolute;
  top:50px;
  left:50px;
  width:100px;
  height:100px;
  display:block;
  background:url(image/cube.png);
  transition: all 1s linear;
}
i.i_front{
  transform: translateZ(50px);
}
i.i_back{
  transform: translateZ(-50px) rotateY(180deg);
}
i.i_bottom{
  transform:rotateX(-90deg) translateY(50px);
  transform-origin: left bottom;
}
i.i_left{
  transform:rotateY(270deg) translateX(-50px);
  transform-origin: center left;
}
i.i_right{
  transform:rotateY(-270deg) translateX(50px);
  transform-origin: top right;
}
i.i_top{
  transform:rotateX(-270deg) translateY(-50px);
  transform-origin: left top;
}

@keyframes rotate {
	from {
		transform: rotateX(0deg) rotateY(0deg);
	}

	to {
		transform: rotateX(360deg) rotateY(360deg);
	}
}

.cube {
	animation: rotate 20s infinite linear;
}

.wrap:hover .front {
	transform: translateZ(200px);
}

.wrap:hover .back {
	transform: translateZ(-200px) rotateY(180deg);
}

.wrap:hover .right {
	transform: rotateY(-270deg) translateZ(100px) translateX(100px);
}

.wrap:hover .left {
	transform: rotateY(270deg) translateZ(100px) translateX(-100px);
}

.wrap:hover .top {
	transform: rotateX(-270deg) translateZ(100px) translateY(-100px);
}

.wrap:hover .bottom {
	transform: rotateX(270deg) translateZ(100px) translateY(100px);
}

</style>
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
      <a class="navbar-brand"  href="#"  onclick="mpost('codehome.html' , {code : 'newindex' })">JAVA 菜鸟学习</a>
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
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsLoginDemo' })">登陆实例</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsValidDemo' })">框架校验实例</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsInterceptorDemo' })">拦截器实例</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsFileUploadDemo' })">文件上传实例</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsTagDemo' })">struts2标签实例</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'code=strutsJsonDemo' })">json</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Hibernate实例 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDemo' })">增加</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDeleteDemo' })">删除</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudUpdateDemo' })">修改</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryDemo' })">简单查询</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryLinkDemo' })">连接查询</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryHqlDemo' })">自定义查询（HQL或者SQL均可）</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipDemo' })">关系(一对一)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipOneToMany' })">关系(一对多)</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Spring实例 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springIocDemo' })">IOC</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springAopDemo' })">AOP</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springJdbcDemo' })">JDBC数据库访问</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">事务管理</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">SpringORM整合</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springQuartzDemo' })">Spring定时服务QuartZ</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springMvcDemo' })">SpringMVC</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               AJAX和JavaScript 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsDemo' })">Ajax简单特效(struts2)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsJqueryDemo' })">Ajax简单校验(struts2+jQuery)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsAutoCompleterDemo' })">Ajax查询(自动补全例子)</a></li>
				<li class="divider"></li>
				<li><a href="#" onclick="mpost('codehome.html' , {code : 'ajaxJsSelectValueDemo' })">JavaScript取值大全</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               WebService实例
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceConf' })">环境配置(XFire)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceTake' })">调取网站服务(XFire)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceXstream' })">Xstream+XML解析</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceCxf' })">调用服务端(CXF)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceHttpClient' })">调用服务端(HttpClient)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceSoap' })">调用服务端(Soap)</a></li>
            </ul>
         </li>
		<!--  <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               
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
         </li>
		 <li id="nav_fhzy"><a href="frame.jsp">返回旧版</a></li>
      </ul>
   </div>
</div>
<!--带有旋转立方体的banner-->
<div id="banner">
	<div id="banner_box">
		<div id="banner_box_left">
			<h1>欢迎来到Java菜鸟学习网站</h1>
			<h3>&nbsp;&nbsp;本网站主要介绍SSH框架、Ajax、webService等基础知识，希望对您有所帮助！</h3>
			<h4>使用方法：</h4>
			<h4>&nbsp;&nbsp;针对每一个知识点，在左侧页面“示例展示”中会使用该知识点举一个例子，实现它的效果；在右侧“源码”中将它相关的代码都列了出来。为了尽量简单讲解，有些程序是运行在Web Server中，有些则是直接运行Java Application。</h4>

			<h4>&nbsp;&nbsp;因为代码是从项目中单独拿出来的，可能会有赘余或者不足，如遇错误之处，还望谅解。</h4>
			<div id="banner_box_left_botton">立即开始</div>
		</div>
		<div id="banner_box_right">
			<!--旋转立方体-->
			<div class="htmleaf-container">
				<div align="center" style="direction: ltr;">
					<div class="wrap">
						<div class="cube">
							<div class="front">
								<h2>Struts2实例</h2><!--旋转立方体各面文字，如有需要可以加<a>链接-->
							</div>
							<div class="back">
								<h2>Hibernate实例</h2>
							</div>
							<div class="top">
								<h2>Spring实例</h2>
							</div>
							<div class="bottom">
								<h2>AJAX和JavaScript</h2>
							</div>
							<div class="left">
								<h2>WebService实例</h2>
							</div>
							<!-- <div class="right">
								<h2>JBPM工作流实例</h2>
							</div> -->
							<!--内部旋转立方体-->
							<i class="i_front"></i>
							<i class="i_back"></i>
							<i class="i_top"></i>
							<i class="i_bottom"></i>
							<i class="i_left"></i>
							<i class="i_right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--示例展示链接部分show-->
<div id="show">
	<div id="show_box">
		<div class="show_box_win bgcolor1">
			<span class="show_box_win_title">Struts2实例</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsLoginDemo' })">登陆实例</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsValidDemo' })">框架校验实例</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsInterceptorDemo' })">拦截器实例</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsFileUploadDemo' })">文件上传实例</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsTagDemo' })">struts2标签实例</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'code=strutsJsonDemo' })">json</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor2">
			<span class="show_box_win_title">Hibernate实例</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDemo' })">增加</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDeleteDemo' })">删除</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudUpdateDemo' })">修改</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryDemo' })">简单查询</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryLinkDemo' })">连接查询</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryHqlDemo' })">自定义查询（HQL或者SQL均可）</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipDemo' })">关系(一对一)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipOneToMany' })">关系(一对多)</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor3">
			<span class="show_box_win_title">Spring实例</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springIocDemo' })">IOC</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springAopDemo' })">AOP</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springJdbcDemo' })">JDBC数据库访问</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">事务管理</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">SpringORM整合</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springQuartzDemo' })">Spring定时服务QuartZ</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springMvcDemo' })">SpringMVC</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor4">
			<span class="show_box_win_title">AJAX和javaScript</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsDemo' })">Ajax简单特效(struts2)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsJqueryDemo' })">Ajax简单校验(struts2+jQuery)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsAutoCompleterDemo' })">Ajax查询(自动补全例子)</a></li>
				<li><a href="#" onclick="mpost('codehome.html' , {code : 'ajaxJsSelectValueDemo' })">JavaScript取值大全</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor5">
			<span class="show_box_win_title">webService实例</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceConf' })">环境配置(XFire)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceTake' })">调取网站服务(XFire)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceXstream' })">Xstream+XML解析</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceCxf' })">调用服务端(CXF)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceHttpClient' })">调用服务端(HttpClient)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceSoap' })">调用服务端(Soap)</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor6">
			<span class="show_box_win_title">设计模式23种</span>
			<ul>
				<li><a href="#">单例模式</a></li>
				<li><a href="#">观察者模式</a></li>
			</ul>
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
<script>
//js实现post提交
     function mpost(URL, PARAMS) {      
		var temp = document.createElement("form");      
		temp.action = URL;      
		temp.method = "post";      
		temp.style.display = "none";      
		for (var x in PARAMS) {      
		var opt = document.createElement("textarea");      
		opt.name = x;      
		opt.value = PARAMS[x];      
	   			 // alert(opt.name)      
	    			temp.appendChild(opt);      
		  }      
	   document.body.appendChild(temp);      
	   temp.submit();      
	  		return temp;      
	}      
</script>
</body>
</html>
