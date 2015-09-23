<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java"  import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
<div style="color:red;">
<h2>当输入用户名为tim时，拦截器进行拦截，并返回登陆页面</h2>
</div>
<s:property value ="actionInfo" /> <br/>
    <s:form action="/strut/InterceptLogin.action" method="post">            
       <s:textfield name="username" label="用户名" />
       <s:password name="password" label="密码"/>
       <s:submit value="提交"/>
    </s:form>   
<!--    当用户输入用户名为tim时 跳转到登录页面仍然跳转到本页面 -->
</body>
</html>