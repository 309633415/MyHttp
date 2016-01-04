<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java"  import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>框架校验</title>
</head>
<body>
<h2>当输入用户名或者密码为空时给予提示</h2>
<div style="color:red">
<!--显示提示的信息-->
    <s:fielderror /> 
</div>
    <s:form action="/strut/validationAction.action" method="post">   
       <s:textfield name="username" label="用户名" />
       <s:password name="password" label="密码"/>
       <s:submit value="提交"/>
    </s:form>    
</body>
</html>