<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
      <a class="navbar-brand" href="#"  onclick="mpost('codehome.html' , {code : 'newindex' })">JAVA ����ѧϰ</a>
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
                <li><a href="#" id="strutsLoginDemo" onclick="strutsLoginDemo()">��½ʵ��</a></li>
			    <li class="divider"></li>
               <li><a href="#" id="strutsValidDemo" onclick="strutsValidDemo()">���У��ʵ��</a></li>
			    <li class="divider"></li>
               <li><a href="#"  id="strutsInterceptorDemo" onclick="strutsInterceptorDemo()">������ʵ��</a></li>
               <li class="divider"></li>
               <li><a href="#"  id="strutsFileUploadDemo" onclick="strutsFileUploadDemo()">�ļ��ϴ�ʵ��</a></li>
               <li class="divider"></li>
               <li><a href="#"  id="strutsTagDemo" onclick="strutsTagDemo()">Struts2��ǩʵ��</a></li>
			   <li class="divider"></li>
              <li><a href="#"  id="strutsJsonDemo" onclick="strutsJsonDemo()">json</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Hibernateʵ�� 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#"  id="ormCrudDemo"  onclick="ormCrudDemo()">����</a></li>
               <li class="divider"></li>
			   <li><a href="#"  id="ormCrudDeleteDemo"  onclick="ormCrudDeleteDemo(this.value)">ɾ��</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudUpdateDemo" onclick="ormCrudUpdateDemo(this.value)">�޸�</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudQueryDemo" onclick="ormCrudQueryDemo(this.value)">�򵥲�ѯ</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudQueryLinkDemo" onclick="ormCrudQueryLinkDemo(this.value)">���Ӳ�ѯ</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ormCrudQueryHqlDemo" onclick="ormCrudQueryHqlDemo(this.value)">�Զ����ѯ</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="relationshipDemo" onclick="relationshipDemo(this.value)">��ϵ(һ��һ)</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="relationshipOneToMany" onclick="relationshipOneToMany(this.value)">��ϵ(һ�Զ�)</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Springʵ�� 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#"  id="springIocDemo"  onclick="springIocDemo()">IOC</a></li>
               <li class="divider"></li>
			   <li><a href="#"  id="springAopDemo" onclick="springAopDemo()">AOP</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springJdbcDemo" onclick="springJdbcDemo()">JDBC���ݿ����</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">�������</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">ORM����</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springQuartzDemo" onclick="springQuartzDemo()">��ʱ����QuartZ</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="springMvcDemo"  onclick="springMvcDemo()">SpringMVC</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               AJAX��JavaScript 
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#"  id="ajaxJsDemo" onclick="ajaxJsDemo()">Ajax����Ч</a></li>
               <li class="divider"></li>
			   <li><a href="#"  id="ajaxJsJqueryDemo"  onclick="ajaxJsJqueryDemo()">Ajax��У��</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ajaxJsAutoCompleterDemo"  onclick="ajaxJsAutoCompleterDemo()">Ajax��ѯ(�Զ���ȫ����)</a></li>
			   <li class="divider"></li>
			   <li><a href="#"  id="ajaxJsSelectValueDemo"  onclick="ajaxJsSelectValueDemo()">JavaScriptȡֵ��ȫ</a></li>
            </ul>
         </li>
		 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               WebServiceʵ��
               <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#"  id="webServiceConf"  onclick="webServiceConf()">��������(XFire)</a></li>
                <li class="divider"></li>
			   <li><a href="#"  id="webServiceTake"  onclick="webServiceTake()">��ȡ��վ����(XFire)</a></li>
			    <li class="divider"></li>
			   <li><a href="#"  id="webServiceXstream"  onclick="webServiceXstream()">Xstream+XML����</a></li>
			    <li class="divider"></li>
			   <li><a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">���÷����(CXF)</a></li>
			    <li class="divider"></li>
			   <li><a href="#"  id="webServiceHttpClient"  onclick="webServiceHttpClient()">���÷����(HttpClient)</a></li>
			    <li class="divider"></li>
			   <li><a href="#"  id="webServiceSoap"  onclick="webServiceSoap()">���÷����(Soap)</a></li>
            </ul>
         </li>
		 <!-- <li class="dropdown">
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
         </li> -->
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
		 <li id="nav_fhzy"><a href="frame.jsp" >���ؾɰ�</a></li>
      </ul>
   </div>
</div>

<!--ʵ��չʾ����-->
<div id="section">
	<div id="section_box">
		<div id="section_left">
			<div id="section_left_title">ʵ��չʾ</div>
			<ul id="panelbar">
				<li><!--������class   k-state-active��Ԫ�ػ�Ĭ��չ��-->
					<span class="panelbar_title">Struts2ʵ��</span>
					<ul>
						<li><a href="#" id="strutsLoginDemo" onclick="strutsLoginDemo()">��½ʵ��</a></li>
						<li><a href="#" id="strutsValidDemo" onclick="strutsValidDemo()">���У��ʵ��</a></li>
						<li><a href="#"  id="strutsInterceptorDemo" onclick="strutsInterceptorDemo()">������ʵ��</a></li>
						<li><a href="#"  id="strutsFileUploadDemo" onclick="strutsFileUploadDemo()">�ļ��ϴ�ʵ��</a></li>
						<li><a href="#"  id="strutsTagDemo" onclick="strutsTagDemo()">struts2��ǩʵ��</a></li>
						<li><a href="#"  id="strutsJsonDemo" onclick="strutsJsonDemo()">json</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">Hibernateʵ��</span>
					<ul>
						<li><a href="#"  id="ormCrudDemo"  onclick="ormCrudDemo()">����</a></li>
						<li><a href="#"  id="ormCrudDeleteDemo"  onclick="ormCrudDeleteDemo(this.value)">ɾ��</a></li>
						<li><a href="#"  id="ormCrudUpdateDemo" onclick="ormCrudUpdateDemo(this.value)">�޸�</a></li>
						<li><a href="#"  id="ormCrudQueryDemo" onclick="ormCrudQueryDemo(this.value)">�򵥲�ѯ</a></li>
						<li><a href="#"  id="ormCrudQueryLinkDemo" onclick="ormCrudQueryLinkDemo(this.value)">���Ӳ�ѯ</a></li>
						<li><a href="#"  id="ormCrudQueryHqlDemo" onclick="ormCrudQueryHqlDemo(this.value)">�Զ����ѯ��HQL����SQL���ɣ�</a></li>
						<li><a href="#"  id="relationshipDemo" onclick="relationshipDemo(this.value)">��ϵ(һ��һ)</a></li>
						<li><a href="#"  id="relationshipOneToMany" onclick="relationshipOneToMany(this.value)">��ϵ(һ�Զ�)</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">Springʵ��</span>
					<ul>
						<li><a href="#"  id="springIocDemo"  onclick="springIocDemo()">IOC</a></li>
						<li><a href="#"  id="springAopDemo" onclick="springAopDemo()">AOP</a></li>
						<li><a href="#"  id="springJdbcDemo" onclick="springJdbcDemo()">JDBC���ݿ����</a></li>
						<li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">�������</a></li>
						<li><a href="#"  id="springTransactionDemo"  onclick="springTransactionDemo()">SpringORM����</a></li>
						<li><a href="#"  id="springQuartzDemo" onclick="springQuartzDemo()">Spring��ʱ����QuartZ</a></li>
						<li><a href="#"  id="springMvcDemo"  onclick="springMvcDemo()">SpringMVC</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">AJAX��javaScript</span>
					<ul>
						<li><a href="#"  id="ajaxJsDemo" onclick="ajaxJsDemo()">Ajax����Ч(struts2)</a></li>
						<li><a href="#"  id="ajaxJsJqueryDemo"  onclick="ajaxJsJqueryDemo()">Ajax��У��(struts2+jQuery)</a></li>
						<li><a href="#"  id="ajaxJsAutoCompleterDemo"  onclick="ajaxJsAutoCompleterDemo()">Ajax��ѯ(�Զ���ȫ����)</a></li>
						<li><a href="#"  id="ajaxJsSelectValueDemo"  onclick="ajaxJsSelectValueDemo()">JavaScriptȡֵ��ȫ</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">webServiceʵ��</span>
					<ul>
						<li><a href="#"  id="webServiceConf"  onclick="webServiceConf()">��������(XFire)</a></li>
						<li><a href="#"  id="webServiceTake"  onclick="webServiceTake()">��ȡ��վ����(XFire)</a></li>
						<li><a href="#"  id="webServiceXstream"  onclick="webServiceXstream()">Xstream+XML����</a></li>
						<li><a href="#"  id="webServiceCxf"  onclick="webServiceCxf()">���÷����(CXF)</a></li>
						<li><a href="#"  id="webServiceHttpClient"  onclick="webServiceHttpClient()">���÷����(HttpClient)</a></li>
						<li><a href="#"  id="webServiceSoap"  onclick="webServiceSoap()">���÷����(Soap)</a></li>
					</ul>
				</li>
				<li>
					<span class="panelbar_title">���ģʽ23��</span>
					<ul>
						<li><a href="#">����ģʽ</a></li>
						<li><a href="#">�۲���ģʽ</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="section_right">
			<div id="section_sljj"><!--ʵ�����-->
				<div id="section_sljj_title">ʵ����鼰չʾ</div>
				<div id="section_sljj_body">
					<iframe id="mainfrm1" src="./demoList.jsp" name="mainfrm1"
						onload="mainfrm.window.location.reload();" width="100%"  height="100%"
						scrolling="yes" style="border: solid 1px;" frameborder="0">
					</iframe>
				</div>
				<div id="section_ckdm_btn">�鿴����</div>
			</div>
			<div id="section_ydm"><!--Դ����-->
				<div id="section_ydm_title">�鿴Դ����</div>
				<div id="section_ydm_body">
					<iframe id="mainfrm" src="./demoSrcCode.jsp" name="mainfrm"
								width=100% height=690 scrolling="yes" frameborder="0">
					</iframe>
				</div>
				<div id="section_fhsl_btn">����ʵ��</div>
			</div>
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
		<span>&copy;��Ȩ20xx-20xx ############���޹�˾
		<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257110248'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257110248%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
		</span>
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
</body>
</html>
<script>
//ˢ��Դ�봰��
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
    //AJAX��javaScript
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
    function webServiceHttpClient(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceHttpClient";
    	document.getElementById("mainfrm1").onload;
    }
    function webServiceSoap(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceSoap";
    	document.getElementById("mainfrm1").onload;
    }
    //JBPM������ʵ��
    //iframe��ĸ߶�����������ı���ı�
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
 	
		/* var url = location.search; //��ȡurl��"?"������ִ� 
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
