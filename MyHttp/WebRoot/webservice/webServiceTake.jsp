<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>webServiceʵ��</title>
</head>
<body>
<h2>ͨ��������HelloWebService����ӿڵ�����վ����</h2><br/>
<div style="color:blue;">
���÷����� : sayHello����sayLove<br/>
�����ı����� : �������� 
</div><br/><br/>
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
<br/><br/>
    <p style="text-indent:2em;">��һ�����Ƿ����˷�����������ѧϰ�����ͻ���ȥ���ã���֮ǰ��Ŀ�Ļ�����ʵ������Ч����</p>
</body>
</html>