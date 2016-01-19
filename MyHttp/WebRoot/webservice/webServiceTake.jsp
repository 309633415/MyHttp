<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>webService实例</title>
</head>
<body>
<h2>通过发布的HelloWebService服务接口调用网站服务</h2><br/>
<div style="color:blue;">
调用方法名:example或者test<br/>
发送文本内容:任意输入
</div>
    <form action="<%=basePath %>/webservice/take.action" method="post">
       <s:textfield name="name" label="调用方法名" /><br/>
       <s:textfield name="message"  label="发送文本内容"/><br/>
       <s:submit value="提交"/><br/>
    </form>
<div>
	返回数据为：
    <c:forEach items="${requestScope.results}" var="it">
    	${it}
    </c:forEach>
</div>
</body>
</html>