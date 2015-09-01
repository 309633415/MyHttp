<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>实例展示及代码分析</title>
<style type="text/css">

body{
margin:0;
padding:0;
line-height: 1.5em;
background-color:lightslategray;
}

b{font-size: 110%;}
em{color: red;}

#maincontainer{
width: 95%; /*Width of main container*/
margin: 0 auto; /*Center container on page*/
}

#topsection{
background:#ccc;
height: 90px; /*Height of top section*/
}

#topsection h1{
margin: 0;
padding-top: 15px;
}

#contentwrapper{
float: left;
width: 100%;
background-color:green;
}

#contentcolumn{
margin-left: 45%; /*Set left margin to LeftColumnWidth*/
}

#leftcolumn{
float: left;
width: 45%; /*Width of left column*/
margin-left: -100%; /*Set left margin to -(MainContainerWidth)*/
background: #C8FC98;
}

#footer{
clear: left;
width: 100%;
background: black;
color: #FFF;
text-align: center;
padding: 4px 0;
}

#footer a{
color: #FFFF80;
}

.innertube{
margin: 10px; /*Margins for inner DIV inside each column (to provide padding)*/
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
	response.setHeader("Pragma","no-cache");     
	response.setHeader("Cache-Control","no-cache");    
	response.setDateHeader("Expires",0);
	request.setCharacterEncoding("GBK");
 %>
</head>
<body>
<div id="maincontainer">

<div id="topsection">
<div class="innertube">
<center>
<h1>示例和代码分析<br/></h1>
</center>
<br/>
<a href="./common/common.action?target=backDemoList" target="mainfrm1">返回示例目录</a>|<a href="head.jsp">返回首页</a></div></div>

<div id="contentwrapper">
<div id="contentcolumn">
源码
<iframe id="mainfrm" src="./demoSrcCode.jsp" name="mainfrm" width=100% height=600 scrolling="yes" style="border: solid  1px;" frameborder="0">
<div class="innertube"><b>Content Column: <em>Fixed</em></b> <script type="text/javascript">filltext(45)</script></div>
</iframe>
</div>
</div>

<div id="leftcolumn">
示例展示
<iframe id="mainfrm1"  src="./demoList.jsp" name="mainfrm1"  onload="refreshMainfrm();" width=100% height=600 scrolling="yes" style="border: solid  1px;" frameborder="0">
<div class="innertube"><b>Left Column: <em>200px</em></b> <script type="text/javascript">filltext(15)</script></div>
</iframe>
</div>

<div id="footer">希望您亲自打一遍代码，这样可以更加熟悉</div>

</div>

<script>
//刷新源码窗口
function refreshMainfrm(){
	document.frames('mainfrm').location.reload()
}
</script>
</body>
</html>
