<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<title>ʵ��չʾ���������</title>
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

#maincontainer {/*div�߿�*/
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
#leftcolumn h2{/*�Ҳ���*/
	height: 1.5em;
	line-height: 1.5em;
	overflow: hidden;
}
#contentwrapper {/*�Ҳ���*/
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
							ʾ���ʹ������
							<br />
						</h1>
					</center>


					<br />
					<!--������-->
					<div class="top">
						<ul class="menu">
							
							<li class="no_sub">
								<a  href="http://localhost:8080/MyHttp/frame.jsp"
									class="tablink nosub">�� ҳ</a>
							</li>
							<li>
								<a href="#" class="tablink arwlink">Struts2ʵ��</a>
								<ul>
									<li>
										<a href="#" id="strutsLoginDemo" onclick="strutsLoginDemo()">��½ʵ��</a>
									</li>
									<li>
										<a href="#" id="strutsValidDemo" onclick="strutsValidDemo()">���У��ʵ��</a>
									</li>
									<li>
										<a href="#"  id="strutsInterceptorDemo" onclick="strutsInterceptorDemo()">������ʵ��</a>
									</li>
									<li>
										<a href="#"  id="strutsFileUploadDemo" onclick="strutsFileUploadDemo()">�ļ��ϴ�ʵ��</a>
									</li>
									<li>
										<a href="#"  id="strutsTagDemo" onclick="strutsTagDemo()">struts2��ǩʵ��</a>
									</li>
									<li>
										<a href="#"  id="strutsCrudDemo" onclick="strutsCrudDemo()">crudʵ��</a>
									</li>
									<li>
										<a href="#"  id="strutsAjaxDemo" onclick="strutsAjaxDemo()">��Ajax��Ч</a>
									</li>
									<li>
										<a href="#"  id="strutsJsonDemo" onclick="strutsJsonDemo()">json</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#" class="tablink arwlink">Hibernateʵ��</a>
								<ul>
									<li>
										<a href="#"  id="ormCrudDemo"  onclick="ormCrudDemo()">����</a>
									</li>
									<li>
										<a href="#"  id="ormCrudDeleteDemo"  onclick="ormCrudDeleteDemo(this.value)">ɾ��</a>
									</li>
									<li>
										<a href="#"  id="ormCrudUpdateDemo" onclick="ormCrudUpdateDemo(this.value)">�޸�</a>
									</li>
									<li>
										<a href="#"  id="ormCrudQueryDemo" onclick="ormCrudQueryDemo(this.value)">�򵥲�ѯ</a>
									</li>
									<li>
										<a href="#"  id="ormCrudQueryLinkDemo" onclick="ormCrudQueryLinkDemo(this.value)">���Ӳ�ѯ</a>
									</li>
									<li>
										<a href="#"  id="ormCrudQueryHqlDemo" onclick="ormCrudQueryHqlDemo(this.value)">�Զ����ѯ</a>
									</li>
									<li>
										<a href="#"  id="relationshipDemo" onclick="relationshipDemo(this.value)">��ϵ</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#" class="tablink arwlink">Springʵ��</a>
								<ul>
									<li>
										<a href="#"  id=""  onclick="">ע��</a>
									</li>
									<li>
										<a href="#"  id="" onclick="">��������ù���</a>
									</li>
								</ul>
								<div class="hot"></div>
							</li>
							<li>
								<a href="#" class="tablink arwlink">AJAX��javaScript</a>
								<ul>
									<li>
										<a href="#"  id=""  onclick="">AJAX�򵥵�У��</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">AJAX��ѯ</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">JSȡֵ��ȫ</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#" class="tablink arwlink">webServiceʵ��</a>
								<ul>
									<li>
										<a href="#"  id="webServiceConf"  onclick="webServiceConf()">��������</a>
									</li>
									<li>
										<a href="#"  id="webServiceTake"  onclick="webServiceTake()">��ȡ��վ����</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#" class="tablink arwlink">JBPM������ʵ��</a>
								<ul>
									<li>
										<a href="#"  id=""  onclick="">׼���뻷���</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">����</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">������</a>
									</li>
									<li>
										<a href="#"  id=""  onclick="">������ת���˻�</a>
									</li>
								</ul>
								<div class="new"></div>
							</li>
							<li>
								<a href="#" class="tablink arwlink">���ģʽ23��</a>
								<ul>
									<li>
										<a href="#"  id="" onclick="">����ģʽ</a>
									</li>
									<li>
										<a href="#"  id="" onclick="">�۲���ģʽ</a>
									</li>
								</ul>
							</li>
							<li class="no_sub">
								<a  href="http://localhost:8080/MyHttp/"
									class="tablink nosub">������ҳ</a>
							</li>
						</ul>
					</div>
					<!--�������-->


				</div>
				<!-- /b -->
				<div id="contentwrapper">
					<div id="contentcolumn">
						<h2>Դ��</h2>
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
					<h2>ʾ��չʾ</h2>
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
					ϣ�������Դ�һ����룬�������Ը�����Ϥ
				</div>

			</div>


	</body>
</html>
<script>
//ˢ��Դ�봰��
function refreshMainfrm(){
	document.getElementById("mainfrm").reload(); 
	document.frames('mainfrm').location.reload(); 
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
    function strutsAjaxDemo(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=strutsAjaxDemo";
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
    //Spring
    //AJAX��javaScript
    //webService
    function webServiceConf(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceConf";
    	document.getElementById("mainfrm1").onload;
    }
    function webServiceTake(){
    	document.getElementById("mainfrm1").src="./common/common.action?target=webServiceTake";
    	document.getElementById("mainfrm1").onload;
    }
    //JBPM������ʵ��
</script>