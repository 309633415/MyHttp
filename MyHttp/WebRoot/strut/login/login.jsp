<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>struts登录实例</title>
</head>
<body>
<div style="color:blue;">
用户名:tom<br/>
密码：123
</div>
    <form action="<%=basePath %>/strut/checkLogin.action" method="post">
       <s:textfield name="username" label="用户名" /><br/>
       <s:password name="password"  label="密 		码"/><br/>
       <s:submit value="提交"/><br/>
    </form>           
</body>
</html>