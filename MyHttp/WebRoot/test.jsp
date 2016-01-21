<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	response.setHeader("Pragma","no-cache");     
	response.setHeader("Cache-Control","no-cache");    
	response.setDateHeader("Expires",0);
	request.setCharacterEncoding("GBK");
%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/circle.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/SyntaxHighlighter.css">
	
<style type="text/css">
body{
background-color:lightcyan;
}
h3{
color:white;
background: cadetblue;
}
</style>
  </head>
  <body>
   <h3>知识准备</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 

<p style="text-indent:2em"><strong>什么是CXF?</strong><br/>
&nbsp;&nbsp;CXF是apache旗下的开源框架，由Celtix + XFire这两门经典的框架合成，是一套非常流行的web service框架。<br/>
&nbsp;&nbsp;它允许创建高性能和可扩展的服务，您可以将这样的服务部署在 Tomcat 和基于 Spring 的轻量级容器中，以及部署在更高级的服务器上。
</p>
<p style="text-indent:2em"><strong>主要搭建的步骤：</strong><br/>
&nbsp;&nbsp;1、 到apache的cxf官网上下载相应的jar包。<br/>
&nbsp;&nbsp;2、 建立一个java工程、将下载的jar包引入到项目中。<br/>
&nbsp;&nbsp;3、 创建服务端功能接口。<br/>
&nbsp;&nbsp;4、 创建实现服务端功能接口的具体类。<br/>
&nbsp;&nbsp;5、 发布服务接口。<br/>
&nbsp;&nbsp;6、 创建测试类、充当客户端调用服务端提供的功能、获取服务调用服务端提供的服务（具体点就是调用服务端提供的方法）。</p>

	</span> 
		<span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
</div> 
   <h3>资源准备</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar包下载地址：
 <a href="http://cxf.apache.org/download.html" target="_blank">CXF官网下载</a>&nbsp;或者直接使用
 <a href="http://pan.baidu.com/s/1eRjOvz8" target="_blank">CXF+WebService的jar包合集</a>（jar包介绍这里就不啰嗦了）
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>示例</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
 
&nbsp;&nbsp;1、创建java项目、引入jar包、方便起见就直接把jar包（除endorsed文件夹下的之外）全部引入即可下载之后的包中我们还可以发现有自带的spring的包、这样我们在使用spring集成它的时候就方便很多了、这里先不提集成。<br/>
&nbsp;&nbsp;2、创建服务端接口：<br/>
&nbsp;&nbsp;注意别忘了在服务端接口类级别上加上@WebService ! <br/>
&nbsp;&nbsp;HelloWebService代码：<br/>
<pre name="code" class="java">
package demoinfo.webservice.cxf;

import javax.jws.WebService;  
@WebService  
public interface HelloWebService {  
    public String sayHello(String name);  
} 

</pre>
&nbsp;&nbsp;3、创建实现服务端功能接口的具体类——HelloWebServiceImpl代码：<br/>
<pre name="code" class="java">
package demoinfo.webservice.cxf;

import javax.jws.WebService;  
@WebService(endpointInterface="demoinfo.webservice.cxf.HelloWebService")  
public class HelloWebServiceImpl implements HelloWebService{  
    public String sayHello(String name) {  
        return "hello " + name;  
    }  
}  
</pre>
&nbsp;&nbsp;4、发布服务接口——WebServiceServer代码：<br/>
<pre name="code" class="java">
package demoinfo.webservice.cxf;

import javax.xml.ws.Endpoint;

import org.apache.cxf.jaxws.JaxWsServerFactoryBean;  
import demoinfo.webservice.cxf.HelloWebService;  
import demoinfo.webservice.cxf.HelloWebServiceImpl;  
  
public class WebServiceServer {  
  
    public WebServiceServer(){  
        //方法一：  
        //创建webService接口  
        JaxWsServerFactoryBean factory = new JaxWsServerFactoryBean();  
          
        //设置地址  
        factory.setAddress("http://localhost:8083/hellowebservice");  
          
        //注册webService  
        factory.setServiceClass(HelloWebService.class);  
        factory.setServiceBean(new HelloWebServiceImpl());  
          
        //创建Service  
        factory.create();  
          
        //方法二：  
//        Endpoint.publish("http://localhost:8083/hellowebservice", new HelloWebServiceImpl());  
    }  
      
    public static void main(String[] args) {  
        new WebServiceServer();  
        System.out.println("server is ready...");  
        try {  
            Thread.sleep(1000*300);  
        } catch (InterruptedException e) {  
            e.printStackTrace();  
        }  
        System.out.println("server exit...");  
        System.exit(0);  
    }  
}  

</pre>
&nbsp;&nbsp;5、通过浏览器访问地址：http://localhost:8083/hellowebservice?WSDL 若有结果则发布成功！<br/>
&nbsp;&nbsp;6、测试类——WebServiceClient代码（先将服务端启动或者发布）：<br/>
<pre name="code" class="java">
package demoinfo.webservice.cxf;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;  

import demoinfo.webservice.cxf.HelloWebService;  
  
public class WebServiceClient {  
    public static void main(String[] args) {  
        //创建Service代理工厂  
        JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();  
          
        //设置地址  
        factory.setAddress("http://localhost:8083/hellowebservice");  
          
        //注册接口  
        factory.setServiceClass(HelloWebService.class);  
          
        //获取bean  
        HelloWebService hello = (HelloWebService) factory.create();  
          
        //输出结果  
        System.out.println("invoking service...");  
        System.out.println(hello.sayHello("Hello WebService !"));  
    }  
}

</pre>

   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>文档</h3>

<script language="javascript" src="<%=basePath%>/js/shCore.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCSharp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPhp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJScript.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJava.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushVb.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushSql.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushXml.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushDelphi.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPython.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushRuby.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCss.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCpp.js"></script> 
<script language="javascript"> 
dp.SyntaxHighlighter.HighlightAll('code'); 
</script> 
  </body>
</html>