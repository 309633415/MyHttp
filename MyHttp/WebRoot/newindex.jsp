<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
   <title>JAVA ����ѧϰ</title>
   <meta http-equiv="content-type" content="text/html;charset=UTF-8">
   <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <link href="css/kendo.common.min.css" rel="stylesheet" type="text/css" />
   <link href="css/kendo.silver.min.css" rel="stylesheet" type="text/css">
   <link href="css/index.css" rel="stylesheet"><!--˽��CSS-->
   <link rel = "Shortcut Icon" href="cainiao.jpg"> 
   <script src="js/jquery.min.js" type="text/javascript"></script>
   <script src="js/bootstrap.min.js" type="text/javascript"></script>
   <script src="js/prefixfree.min.js" type="text/javascript"></script>
   <script src="js/kendo.all.min.js" type="text/javascript"></script>
   <!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
   <![endif]-->
</head>
<style>
/***************�ڲ�CSS��ʽΪ��ת��������ʽ��ɾ����Ҫд���ⲿ**************************/
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
<!--��������-->
<div id="nav" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
   <div class="navbar-header">
	  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
         <span class="sr-only">�л�����</span>
		 <span class="icon-bar"></span>
		 <span class="icon-bar"></span>
		 <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand"  href="#"  onclick="mpost('codehome.html' , {code : 'newindex' })">JAVA ����ѧϰ</a>
   </div>
   <div class="collapse navbar-collapse" id="example-navbar-collapse">
      <ul class="nav navbar-nav">
		 <li id="nav_zy"><a href="#"  onclick="mpost('codehome.html' , {code : 'newindex' })">��ҳ</a></li>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Struts2ʵ�� 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsLoginDemo' })">��½ʵ��</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsValidDemo' })">���У��ʵ��</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsInterceptorDemo' })">������ʵ��</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsFileUploadDemo' })">�ļ��ϴ�ʵ��</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsTagDemo' })">struts2��ǩʵ��</a></li>
				 <li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'code=strutsJsonDemo' })">json</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Hibernateʵ�� 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDemo' })">����</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDeleteDemo' })">ɾ��</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudUpdateDemo' })">�޸�</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryDemo' })">�򵥲�ѯ</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryLinkDemo' })">���Ӳ�ѯ</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryHqlDemo' })">�Զ����ѯ��HQL����SQL���ɣ�</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipDemo' })">��ϵ(һ��һ)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipOneToMany' })">��ϵ(һ�Զ�)</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Springʵ�� 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springIocDemo' })">IOC</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springAopDemo' })">AOP</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springJdbcDemo' })">JDBC���ݿ����</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">�������</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">SpringORM����</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springQuartzDemo' })">Spring��ʱ����QuartZ</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springMvcDemo' })">SpringMVC</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               AJAX��JavaScript 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsDemo' })">Ajax����Ч(struts2)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsJqueryDemo' })">Ajax��У��(struts2+jQuery)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsAutoCompleterDemo' })">Ajax��ѯ(�Զ���ȫ����)</a></li>
				<li class="divider"></li>
				<li><a href="#" onclick="mpost('codehome.html' , {code : 'ajaxJsSelectValueDemo' })">JavaScriptȡֵ��ȫ</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               WebServiceʵ��
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceConf' })">��������(XFire)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceTake' })">��ȡ��վ����(XFire)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceXstream' })">Xstream+XML����</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceCxf' })">���÷����(CXF)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceHttpClient' })">���÷����(HttpClient)</a></li>
				<li class="divider"></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceSoap' })">���÷����(Soap)</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               JBPM������ʵ��
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#">׼���뻷���</a></li>
			   <li class="divider"></li>
               <li><a href="#">����</a></li>
			   <li class="divider"></li>
               <li><a href="#">������</a></li>
               <li class="divider"></li>
               <li><a href="#">������ת���˻�</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               ���ģʽ23��
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#">����ģʽ</a></li>
			   <li class="divider"></li>
               <li><a href="#">�۲���ģʽ</a></li>
            </ul>
         </li>
		 <li id="nav_fhzy"><a href="#"  onclick="mpost('codehome.html' , {code : 'oldindex' })">���ؾɰ�</a></li>
      </ul>
   </div>
</div>
<!--������ת�������banner-->
<div id="banner">
	<div id="banner_box">
		<div id="banner_box_left">
			<h1>��ӭ����Java����ѧϰ��վ</h1>
			<h3>&nbsp;&nbsp;����վ��Ҫ����SSH��ܡ�Ajax��webService�Ȼ���֪ʶ��ϣ����������������</h3>
			<h4>ʹ�÷�����</h4>
			<h4>&nbsp;&nbsp;���ÿһ��֪ʶ�㣬�����ҳ�桰ʾ��չʾ���л�ʹ�ø�֪ʶ���һ�����ӣ�ʵ������Ч�������ҲࡰԴ�롱�н�����صĴ��붼���˳�����Ϊ�˾����򵥽��⣬��Щ������������Web Server�У���Щ����ֱ������Java Application��</h4>

			<h4>&nbsp;&nbsp;��Ϊ�����Ǵ���Ŀ�е����ó����ģ����ܻ���׸����߲��㣬��������֮���������½⡣</h4>
			<div id="banner_box_left_botton">������ʼ</div>
		</div>
		<div id="banner_box_right">
			<!--��ת������-->
			<div class="htmleaf-container">
				<div align="center" style="direction: ltr;">
					<div class="wrap">
						<div class="cube">
							<div class="front">
								<h2>Struts2ʵ��</h2><!--��ת������������֣�������Ҫ���Լ�<a>����-->
							</div>
							<div class="back">
								<h2>Hibernateʵ��</h2>
							</div>
							<div class="top">
								<h2>Springʵ��</h2>
							</div>
							<div class="bottom">
								<h2>AJAX��JavaScript</h2>
							</div>
							<div class="left">
								<h2>WebServiceʵ��</h2>
							</div>
							<div class="right">
								<h2>JBPM������ʵ��</h2>
							</div>
							<!--�ڲ���ת������-->
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
<!--ʾ��չʾ���Ӳ���show-->
<div id="show">
	<div id="show_box">
		<div class="show_box_win bgcolor1">
			<span class="show_box_win_title">Struts2ʵ��</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsLoginDemo' })">��½ʵ��</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsValidDemo' })">���У��ʵ��</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsInterceptorDemo' })">������ʵ��</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsFileUploadDemo' })">�ļ��ϴ�ʵ��</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'strutsTagDemo' })">struts2��ǩʵ��</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'code=strutsJsonDemo' })">json</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor2">
			<span class="show_box_win_title">Hibernateʵ��</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDemo' })">����</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudDeleteDemo' })">ɾ��</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudUpdateDemo' })">�޸�</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryDemo' })">�򵥲�ѯ</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryLinkDemo' })">���Ӳ�ѯ</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ormCrudQueryHqlDemo' })">�Զ����ѯ��HQL����SQL���ɣ�</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipDemo' })">��ϵ(һ��һ)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'relationshipOneToMany' })">��ϵ(һ�Զ�)</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor3">
			<span class="show_box_win_title">Springʵ��</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springIocDemo' })">IOC</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springAopDemo' })">AOP</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springJdbcDemo' })">JDBC���ݿ����</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">�������</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springTransactionDemo' })">SpringORM����</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springQuartzDemo' })">Spring��ʱ����QuartZ</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'springMvcDemo' })">SpringMVC</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor4">
			<span class="show_box_win_title">AJAX��javaScript</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsDemo' })">Ajax����Ч(struts2)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsJqueryDemo' })">Ajax��У��(struts2+jQuery)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'ajaxJsAutoCompleterDemo' })">Ajax��ѯ(�Զ���ȫ����)</a></li>
				<li><a href="#" onclick="mpost('codehome.html' , {code : 'ajaxJsSelectValueDemo' })">JavaScriptȡֵ��ȫ</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor5">
			<span class="show_box_win_title">webServiceʵ��</span>
			<ul>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceConf' })">��������(XFire)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceTake' })">��ȡ��վ����(XFire)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceXstream' })">Xstream+XML����</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceCxf' })">���÷����(CXF)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceHttpClient' })">���÷����(HttpClient)</a></li>
				<li><a href="#"  onclick="mpost('codehome.html' , {code : 'webServiceSoap' })">���÷����(Soap)</a></li>
			</ul>
		</div>
		<div class="show_box_win bgcolor6">
			<span class="show_box_win_title">���ģʽ23��</span>
			<ul>
				<li><a href="#">����ģʽ</a></li>
				<li><a href="#">�۲���ģʽ</a></li>
			</ul>
		</div>
	</div>
</div>

<div id="footer">
	<div id="footer_link">
		<a href="#">��ҳ</a></li>
		<a href="#">JAVA����</a></li>
		<a href="#">��������</a></li>
		<a id="footer_link_last" href="#">��ϵ����</a>
	</div>
	<div id="footer_box">
		<a href="#">��������</a></li>
		<span>����֤�ţ���##########</span>
		<span>&copy;��Ȩ20xx-20xx ############���޹�˾</span>
	</div>
</div>
<script>
$(function () {
	$("#panelbar").kendoPanelBar({
		expandMode: "single" // ����չ��ģʽֻ��չ������
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
	ע�����������ǹ��ڵ��������ת�ķ�����
	�Ǹ���Ԫ���±��ȡ�ģ�
	�����ڸ�����ҳ��ʱ��Ҫע��һ��<a>��ǩ���ݵ���д˳��Ҫһһ��Ӧ
	��ҳ�Ĳ��ֲ�Ҫ������������Ǹ��ݸ�Ԫ�أ���Ԫ���±���в��ҵģ�
	����ı�Ԫ�ص�λ���Ҳ�����ӦԪ��
	***********/
$(".show_box_win a").click(function(){
	var n = $(this).parent().index();//��ȡ��ǰԪ�ظ��ڵ��±�
	var i = $(this).parent().parent().parent().index();//��ȡ��ǰԪ�ظ߲㸸�ڵ��±�
	$('#panelbar').children('li:eq('+i+')').addClass('k-state-active');
	$('#panelbar').children('li:eq('+i+')').children().children('li:eq('+n+')').children().addClass('k-state-selected k-state-focused');
	$('#panelbar').data("kendoPanelBar").expand($("#panelbar .k-state-active"));//չ��Ԫ��

});
</script>
<script>
//jsʵ��post�ύ
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