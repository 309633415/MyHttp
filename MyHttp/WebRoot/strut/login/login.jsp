<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>struts��¼ʵ��</title>
</head>
<body>
<div style="color:blue;">
�û���:tom<br/>
���룺123
</div>
    <form action="<%=basePath %>/strut/checkLogin.action" method="post">
       <s:textfield name="username" label="�û���" /><br/>
       <s:password name="password"  label="�� 		��"/><br/>
       <s:submit value="�ύ"/><br/>
    </form>           
</body>
</html>