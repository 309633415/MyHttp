<%@ include file="/common/taglibs.jsp" %>
<%@ page  contentType="text/html; charset=GBK"%>
<html>
<head>
    <title>���У��</title>
</head>
<body>
<h2>�������û�����������Ϊ��ʱ������ʾ</h2>
<div style="color:red">
<!--��ʾ��ʾ����Ϣ-->
    <s:fielderror /> 
</div>
    <s:form action="/strut/validationAction" method="post">   
       <s:textfield name="username" label="�û���" />
       <s:password name="password" label="����"/>
       <s:submit value="�ύ"/>
    </s:form>    
</body>
</html>