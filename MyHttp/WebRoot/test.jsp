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
   <h3>֪ʶ׼��</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 

<p style="text-indent:2em"><strong>ʲô��CXF?</strong><br/>
&nbsp;&nbsp;CXF��apache���µĿ�Դ��ܣ���Celtix + XFire�����ž���Ŀ�ܺϳɣ���һ�׷ǳ����е�web service��ܡ�<br/>
&nbsp;&nbsp;�������������ܺͿ���չ�ķ��������Խ������ķ������� Tomcat �ͻ��� Spring �������������У��Լ������ڸ��߼��ķ������ϡ�
</p>
<p style="text-indent:2em"><strong>��Ҫ��Ĳ��裺</strong><br/>
&nbsp;&nbsp;1�� ��apache��cxf������������Ӧ��jar����<br/>
&nbsp;&nbsp;2�� ����һ��java���̡������ص�jar�����뵽��Ŀ�С�<br/>
&nbsp;&nbsp;3�� ��������˹��ܽӿڡ�<br/>
&nbsp;&nbsp;4�� ����ʵ�ַ���˹��ܽӿڵľ����ࡣ<br/>
&nbsp;&nbsp;5�� ��������ӿڡ�<br/>
&nbsp;&nbsp;6�� ���������ࡢ�䵱�ͻ��˵��÷�����ṩ�Ĺ��ܡ���ȡ������÷�����ṩ�ķ��񣨾������ǵ��÷�����ṩ�ķ�������</p>

	</span> 
		<span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
</div> 
   <h3>��Դ׼��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar�����ص�ַ��
 <a href="http://cxf.apache.org/download.html" target="_blank">CXF��������</a>&nbsp;����ֱ��ʹ��
 <a href="http://pan.baidu.com/s/1eRjOvz8" target="_blank">CXF+WebService��jar���ϼ�</a>��jar����������Ͳ������ˣ�
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>ʾ��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
 
&nbsp;&nbsp;1������java��Ŀ������jar�������������ֱ�Ӱ�jar������endorsed�ļ����µ�֮�⣩ȫ�����뼴������֮��İ������ǻ����Է������Դ���spring�İ�������������ʹ��spring��������ʱ��ͷ���ܶ��ˡ������Ȳ��Ἧ�ɡ�<br/>
&nbsp;&nbsp;2����������˽ӿڣ�<br/>
&nbsp;&nbsp;ע��������ڷ���˽ӿ��༶���ϼ���@WebService ! <br/>
&nbsp;&nbsp;HelloWebService���룺<br/>
<pre name="code" class="java">
package demoinfo.webservice.cxf;

import javax.jws.WebService;  
@WebService  
public interface HelloWebService {  
    public String sayHello(String name);  
} 

</pre>
&nbsp;&nbsp;3������ʵ�ַ���˹��ܽӿڵľ����ࡪ��HelloWebServiceImpl���룺<br/>
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
&nbsp;&nbsp;4����������ӿڡ���WebServiceServer���룺<br/>
<pre name="code" class="java">
package demoinfo.webservice.cxf;

import javax.xml.ws.Endpoint;

import org.apache.cxf.jaxws.JaxWsServerFactoryBean;  
import demoinfo.webservice.cxf.HelloWebService;  
import demoinfo.webservice.cxf.HelloWebServiceImpl;  
  
public class WebServiceServer {  
  
    public WebServiceServer(){  
        //����һ��  
        //����webService�ӿ�  
        JaxWsServerFactoryBean factory = new JaxWsServerFactoryBean();  
          
        //���õ�ַ  
        factory.setAddress("http://localhost:8083/hellowebservice");  
          
        //ע��webService  
        factory.setServiceClass(HelloWebService.class);  
        factory.setServiceBean(new HelloWebServiceImpl());  
          
        //����Service  
        factory.create();  
          
        //��������  
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
&nbsp;&nbsp;5��ͨ����������ʵ�ַ��http://localhost:8083/hellowebservice?WSDL ���н���򷢲��ɹ���<br/>
&nbsp;&nbsp;6�������ࡪ��WebServiceClient���루�Ƚ�������������߷�������<br/>
<pre name="code" class="java">
package demoinfo.webservice.cxf;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;  

import demoinfo.webservice.cxf.HelloWebService;  
  
public class WebServiceClient {  
    public static void main(String[] args) {  
        //����Service������  
        JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();  
          
        //���õ�ַ  
        factory.setAddress("http://localhost:8083/hellowebservice");  
          
        //ע��ӿ�  
        factory.setServiceClass(HelloWebService.class);  
          
        //��ȡbean  
        HelloWebService hello = (HelloWebService) factory.create();  
          
        //������  
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
   <h3>�ĵ�</h3>

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