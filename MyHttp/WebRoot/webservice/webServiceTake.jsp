<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>webServiceʵ��</title>
</head>
<body>
<h2>ͨ��������HelloWebService����ӿڵ�����վ����</h2><br/>
<div style="color:blue;">
���÷�����:example����test<br/>
�����ı�����:��������
</div>
    <form action="<%=basePath %>/webservice/take.action" method="post">
       <s:textfield name="name" label="���÷�����" /><br/>
       <s:textfield name="message"  label="�����ı�����"/><br/>
       <s:submit value="�ύ"/><br/>
    </form>
<div>
	��������Ϊ��
    <c:forEach items="${requestScope.results}" var="it">
    	${it}
    </c:forEach>
</div>
</body>
</html>