<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
<title>webServiceʵ��</title>
</head>
<body>
<p style="text-indent:2em;">
��webServiceʱ������ת���Ĺ����ӿھ���ʹ�õ���XSream���߿⣬XStream��һ�����Խ�javaBean��XML˫��ת����java��⣬�������ݻ���xstream-1.4.2�汾��
</p>
<p style="text-indent:2em;">Ϊ��ʹ��XStream����Ҫ�����ʼ������ʼ�����������֣� <br/>
&nbsp;&nbsp;1> <font color="blue">XStream xstream = new XStream(); </font>  ���ַ�ʽ�ĳ�ʼ����Ҫxpp3-[version].jar��֧�֡�xpp��һ�����ٽ���XML�ļ��Ľ������� <br/>
&nbsp;&nbsp;2><font color="blue"> XStream xstream = new XStream(new DomDriver()); </font>    ���ַ�ʽ����Ҫ����XPP3.jar��֧��,����ʹ�ñ�׼��JAXP DOM����������</p>
<p style="text-indent:2em;">Դ���е�ʵ��ʹ��XStream����һ��xml���ٷ����л�xml�е����ݡ�<br/>
&nbsp;&nbsp;���л�xmlʱ������̨�����Ϊ��
</p>
<pre style="color:blue">
&lt;person&gt;
  &lt;name&gt;Tom&lt;/name&gt;
  &lt;sayHello&gt;Hello , I am Tom !&lt;/sayHello&gt;
&lt;/person&gt;
</pre>
<p style="text-indent:2em;">
�����л�xmlʱ������̨�����Ϊ��
</p>
<pre style="color:blue">
Hello , I am Bob !
</pre>
<p style="text-indent:2em;">
��Ҳ����������һ�ԡ�
</p>
<form action="<%=basePath %>/webservice/xstream.action"" method="post">
�����һ����������<input type="text" name="name1" value="${name1} "/><br/>
����Ҫ˵��һ�仰��<input type="text" name="message1" value="${ message1}"/><br/>
����ڶ�����������<input type="text" name="name2" value="${ name2}"/><br/>
����Ҫ˵��һ�仰��<input type="text" name="message2" value="${ message2}"/><br/>
<input type="submit" value="�ύ"/>
</form>
<p style="text-indent:2em;">���л����Ϊ��</p>
<pre style="color:red">
${result }
</pre>

</body>
</html>