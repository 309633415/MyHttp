<%@ page  contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
<div style="color:red;">
<h2>�������û���Ϊtimʱ���������������أ������ص�½ҳ��</h2>
</div>
<s:property value ="actionInfo" /> <br/>
    <s:form action="/strut/InterceptLogin" method="post">            
       <s:textfield name="username" label="�û���" />
       <s:password name="password" label="����"/>
       <s:submit value="�ύ"/>
    </s:form>   
<!--    ���û������û���Ϊtimʱ ��ת����¼ҳ����Ȼ��ת����ҳ�� -->
</body>
</html>