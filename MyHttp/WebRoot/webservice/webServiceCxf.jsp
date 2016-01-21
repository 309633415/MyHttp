<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
<title>webService实例</title>
</head>
<body>
	<p style="text-indent:2em;">
		之前我们一起学习了一下xfire，今天我们来看一下CXF，为什么学完那个接着学这个呢。因为CXF是在xfire的基础上实现的，所以我们学习它会比较简单点，具体例子参考源码。
	</p>
	<p style="text-indent:2em;">
		例子中CXF发布服务是通过java类实现的，暂时没有整合到SSH框架中。小编才疏学浅，碰到一个难题无法克服。在当前的框架中添加jar包过多，尝试无数次总是存在冲突，故此处省略一万字。但是新搭建的项目还是可以很方便地与spring整合，聪明的你自己去探索吧！
	</p>
	<p style="text-indent:2em;">源码中的例子，运行服务端会启动服务，控制台会输出：</p>
	<pre style="color:blue">
server is ready...
</pre>
	<p style="text-indent:2em;">然后运行客户端会调用sayHello接口，控制台输出：</p>
	<pre style="color:blue">
invoking service...
hello Hello WebService !
</pre>
</body>
</html>