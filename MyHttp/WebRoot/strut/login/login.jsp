<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java"  import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>struts��¼ʵ��</title>
</head>
<body>
<h2>ʾ���û�Ϊ��</h2>
<div style="color:blue;">
�û���:tom<br/>
���룺123
</div>
    <s:form action="/strut/checkLogin.action" method="post">
       <s:textfield name="username" label="�û���" /><br/>
       <s:password name="password"  label="�� 		��"/><br/>
       <s:submit value="�ύ"/><br/>
    </s:form>           
</body>
</html>