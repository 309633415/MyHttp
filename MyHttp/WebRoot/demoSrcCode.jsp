<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	int flag=1;
	if(application.getAttribute("knowLedageReady")==null ||application.getAttribute("knowLedageReady")=="")
		flag=0;
	request.setAttribute("flag",flag);
	response.setHeader("Pragma","no-cache");     
	response.setHeader("Cache-Control","no-cache");    
	response.setDateHeader("Expires",0);
	request.setCharacterEncoding("GBK");
%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/circle.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/SyntaxHighlighter.css">
<style type="text/css">
body{
background-color:lightcyan;
}
h3{
color:white;
background: cadetblue;
}
</style>
  </head>
  <body>
  <c:set var="salary" scope="session" value="${2000*2}"/>
  <c:choose>
       <c:when test="${flag==0}">
              <p><h2>欢迎来到 Java菜鸟 学习网站</h1></p> 
              <p><h3>本网站主要介绍SSH框架、Ajax、webService等基础知识，希望对您有所帮助！</h3></p>
              <img alt="Java菜鸟" src="<%=basePath %>/image/java.jpg" style="width:50%; margin-left:25%; margin-right:25%;">
              <p style="text-indent:2em"><strong>使用方法：</strong></p>
              <p style="text-indent:2em">针对每一个知识点，在左侧页面“示例展示”中会使用该知识点举一个例子，实现它的效果；在右侧“源码”中将它相关的代码都列了出来。为了尽量简单讲解，有些程序是运行在Web Server中，有些则是直接运行Java Application。</p>
              <p style="text-indent:2em">因为代码是从项目中单独拿出来的，可能会有赘余或者不足，如遇错误之处，还望谅解。</p>
              </p>
       </c:when>
       <c:otherwise>
		   <h3>知识准备</h3>
		   <div id="circle"> 
			<span class="include"> 
				<strong class="s1">&nbsp;</strong> 
				<strong class="s2">&nbsp;</strong> 
				<strong class="s3">&nbsp;</strong> 
				<strong class="s4">&nbsp;</strong> 
				<strong class="s5">&nbsp;</strong> 
			</span> 
			<span id="knowLedageReady" class="bg"> 
					<%=application.getAttribute("knowLedageReady")%>
			</span> 
				<span class="include"> 
				<strong class="s5">&nbsp;</strong> 
				<strong class="s4">&nbsp;</strong> 
				<strong class="s3">&nbsp;</strong> 
				<strong class="s2">&nbsp;</strong> 
				<strong class="s1">&nbsp;</strong> 
			</span> 
			</div> 
		   <h3>资源准备</h3>
		   <span class="include"> 
				<strong class="s1">&nbsp;</strong> 
				<strong class="s2">&nbsp;</strong> 
				<strong class="s3">&nbsp;</strong> 
				<strong class="s4">&nbsp;</strong> 
				<strong class="s5">&nbsp;</strong> 
			</span> 
		   <span id="resourceReady" class="bg"> 
		   	<%=application.getAttribute("resourceReady")%>
		   </span>
		   <span class="include"> 
				<strong class="s5">&nbsp;</strong> 
				<strong class="s4">&nbsp;</strong> 
				<strong class="s3">&nbsp;</strong> 
				<strong class="s2">&nbsp;</strong> 
				<strong class="s1">&nbsp;</strong> 
			</span> 
		   <h3>示例</h3>
		   <span class="include"> 
				<strong class="s1">&nbsp;</strong> 
				<strong class="s2">&nbsp;</strong> 
				<strong class="s3">&nbsp;</strong> 
				<strong class="s4">&nbsp;</strong> 
				<strong class="s5">&nbsp;</strong> 
			</span> 
		   <span id="example" class="bg">
				<%=application.getAttribute("example")%>
		   </span>
		   <span class="include"> 
				<strong class="s5">&nbsp;</strong> 
				<strong class="s4">&nbsp;</strong> 
				<strong class="s3">&nbsp;</strong> 
				<strong class="s2">&nbsp;</strong> 
				<strong class="s1">&nbsp;</strong> 
			</span> 
		   <h3>文档</h3>
			<div id="df">
			</div>
	  </c:otherwise>
	</c:choose>
<script language="javascript" src="<%=basePath%>/js/shCore.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCSharp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPhp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJScript.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJava.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushVb.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushSql.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushXml.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushDelphi.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPython.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushRuby.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCss.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCpp.js"></script> 
<script language="javascript"> 
dp.SyntaxHighlighter.HighlightAll('code'); 
</script> 
</body>
</html>