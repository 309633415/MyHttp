<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>webServiceʵ��</title>
</head>
<body>
<h2>ͨ��������HelloWebService����ӿڵ�����վ����</h2><br/>
<div style="color:blue;">
���÷����� : sayHello����sayLove������ʹ��sayHello��<br/>
�����ı����� : �������� 
</div><br/><br/>
    <form id="fm1" action="<%=basePath %>/webservice/take.action" method="post">
       <input type="text" id="name" name="name" label="���÷�����" value="sayHello" style="display:none"/>
       <s:textfield name="message"  label="�����ı�����"/><br/>
       <input type="submit" value="�ύ" />
    </form>
<div>
	��������Ϊ��
    <c:forEach items="${requestScope.results}" var="it">
    	${it}
    </c:forEach>
</div>
<br/><br/>
    <p style="text-indent:2em;">��һ�����Ƿ����˷�����������ѧϰ�����ͻ���ȥ���ã���֮ǰ��Ŀ�Ļ�����ʵ������Ч����</p>
<!--     <script type="text/javascript">
    function check(){
	   	 var temp=document.getElementById("name");
	   	 if(temp.value !="sayHello" && temp.value !="sayLove"){
	   	 	alert("������� "+temp.value + " ���Ƿ���Ľӿ�Ŷ��");
			temp.focus();
			return;
		}
		else{
			document.getElementById("fm1").submit();
		}
    }
    </script> -->
</body>
</html>