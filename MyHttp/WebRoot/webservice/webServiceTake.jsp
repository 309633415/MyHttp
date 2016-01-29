<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>webService实例</title>
</head>
<body>
<h2>通过发布的HelloWebService服务接口调用网站服务</h2><br/>
<div style="color:blue;">
调用方法名 : sayHello或者sayLove，这里使用sayHello。<br/>
发送文本内容 : 任意输入 
</div><br/><br/>
    <form id="fm1" action="<%=basePath %>/webservice/take.action" method="post">
       <input type="text" id="name" name="name" label="调用方法名" value="sayHello" style="display:none"/>
       <s:textfield name="message"  label="发送文本内容"/><br/>
       <input type="submit" value="提交" />
    </form>
<div>
	返回数据为：
    <c:forEach items="${requestScope.results}" var="it">
    	${it}
    </c:forEach>
</div>
<br/><br/>
    <p style="text-indent:2em;">上一步我们发布了服务，现在我们学习建立客户端去调用，在之前项目的基础上实现以上效果。</p>
<!--     <script type="text/javascript">
    function check(){
	   	 var temp=document.getElementById("name");
	   	 if(temp.value !="sayHello" && temp.value !="sayLove"){
	   	 	alert("您输入的 "+temp.value + " 不是服务的接口哦！");
			temp.focus();
			return;
		}
		else{
			document.getElementById("fm1").submit();
		}
    }
    </script> -->
</body>
</html>