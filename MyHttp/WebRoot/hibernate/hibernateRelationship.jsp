<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>hibernate��ϵӳ��ʵ��</title>
</head>
<body>
<div style="color:blue;">
<br/>

</div>
    <form action="%{#request.basePath}/hibernate/relationShipAction.action" method="post">
       <s:textfield name="username" label="" /><br/>
       <s:password name="password"  label=""/><br/>
       <s:submit value="�ύ"/><br/>
    </form>           
</body>
</html>