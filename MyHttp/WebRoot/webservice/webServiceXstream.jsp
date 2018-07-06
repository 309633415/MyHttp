<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<title>webService实例</title>
</head>
<body>
<p style="text-indent:2em;">
做webService时，报文转换的公共接口经常使用到了XSream工具库，XStream是一个可以将javaBean与XML双向转换的java类库，本文内容基于xstream-1.4.2版本。
</p>
<p style="text-indent:2em;">为了使用XStream，需要对其初始化，初始化方法有两种： <br/>
&nbsp;&nbsp;1> <font color="blue">XStream xstream = new XStream(); </font>  这种方式的初始化需要xpp3-[version].jar的支持。xpp是一个快速解析XML文件的解析器。 <br/>
&nbsp;&nbsp;2><font color="blue"> XStream xstream = new XStream(new DomDriver()); </font>    这种方式不需要依赖XPP3.jar的支持,它是使用标准的JAXP DOM来解析它。</p>
<p style="text-indent:2em;">源码中的实例使用XStream生成一个xml，再反序列化xml中的内容。<br/>
&nbsp;&nbsp;序列化xml时，控制台的输出为：
</p>
<pre style="color:blue">
&lt;person&gt;
  &lt;name&gt;Tom&lt;/name&gt;
  &lt;sayHello&gt;Hello , I am Tom !&lt;/sayHello&gt;
&lt;/person&gt;
</pre>
<p style="text-indent:2em;">
反序列化xml时，控制台的输出为：
</p>
<pre style="color:blue">
Hello , I am Bob !
</pre>
<p style="text-indent:2em;">
你也可以亲自试一试。
</p>
<form action="<%=basePath %>/webservice/xstream.action"" method="post">
输入第一个人姓名：<input type="text" name="name1" value="${name1} "/><br/>
输入要说的一句话：<input type="text" name="message1" value="${ message1}"/><br/>
输入第二个人姓名：<input type="text" name="name2" value="${ name2}"/><br/>
输入要说的一句话：<input type="text" name="message2" value="${ message2}"/><br/>
<input type="submit" value="提交"/>
</form>
<p style="text-indent:2em;">序列化结果为：</p>
<pre style="color:red">
${result }
</pre>

</body>
</html>