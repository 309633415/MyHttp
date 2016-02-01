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

&nbsp;&nbsp;Web Service、WSDL、SOAP、HTTP的概念存在诸多联系，在不同的产品中体现的概念也不一样。
<p style="text-indent:2em"><strong>WebService 和 WSDL的关系？</strong><br/>
&nbsp;&nbsp;Web Service提供一种可被调用的服务，该服务必须通过WSDL定义接口，接口描述了WEB SERVICE 的逻辑定义（types，messages，portTypes）和传输协议（bindings，services）。客户端通过WSDL定义的访问方式和逻辑结构调用该服务。
</p>
<p style="text-indent:2em"><strong>Web Service和SOAP以及HTTP的关系？</strong><br/>
&nbsp;&nbsp;SOAP是简单对象访问协议，定义了一种跨平台的分布式系统通信协议。SOAP需要绑定到更低层次的传输协议（比如， HTTP,RMI,JMS）等。最常用的是HTTP绑定，所以也经常把SOAP的概念和HTTP混在一起说。<br/>
&nbsp;&nbsp;理论上通过WSDL描述的Web Service可以有很多种不同的绑定，但是实际上经常使用SOAP HTTP绑定 （就是采用“SOAP通信协议的HTTP绑定格式”来绑定）。
</p>
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
 <a href="http://download.csdn.net/detail/jiashubing/9414107" target="_blank">HttpClient所需jar包</a>
 该程序不需要额外的jar包
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
 
<p style="text-indent:2em">
本例实现使用Soap请求webService接口，直接看测试类SoapTest，代码如下：</p>
<pre name="code" class="java">
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * @ClassName WeatherUtils
 * @Description TODO 天气信息数据来源(http://www.webxml.com.cn/)
 * 根据城市或地区名称查询获得未来三天内天气情况、现在的天气实况、天气和生活指数:
 * 调用方法如下：输入参数：theCityName = 城市中文名称(国外城市可用英文)或城市代码(不输入默认为上海市)，如：上海 或 58367，如有
 * 城市名称重复请使用城市代码查询(可通过 getSupportCity 或 getSupportDataSet 获得)；返回数据： 一个一维数组 String(22)，共有
 * 23个元素。String(0) 到 String(4)：省份，城市，城市代码，城市图片名称，最后更新时间。String(5) 到 String(11)：当天的 气温，
 * 概况，风向和风力，天气趋势开始图片名称(以下称：图标一)，天气趋势结束图片名称(以下称：图标二)，现在的天气实况，天气和生活
 * 指数。String(12) 到String(16)：第二天的 气温，概况，风向和风力，图标一，图标二。String(17) 到 String(21)：第三天的 气温，
 * 概况，风向和风力，图标一，图标二。String(22) 被查询的城市或地区的介绍
 */
public class SoapTest {
	/**
	 * 获取SOAP的请求头，并替换其中的标志符号为用户输入的城市
	 * 
	 * @param city
	 *            用户输入的城市名称
	 * @return 客户将要发送给服务器的SOAP请求
	 */
	private static String getSoapRequest(String city) {
		StringBuilder sb = new StringBuilder();
		sb.append("&lt;?xml version=\"1.0\" encoding=\"utf-8\"?&gt;"
					+ "&lt;soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" "
					+ "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" "
					+ "xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"&gt;"
					+ "&lt;soap:Body&gt;    &lt;getWeather xmlns=\"http://WebXml.com.cn/\"&gt;"
					+ "&lt;theCityCode&gt;" + city
					+ "&lt;/theCityCode&gt;    &lt;/getWeather&gt;"
					+ "&lt;/soap:Body&gt;&lt;/soap:Envelope&gt;");
		return sb.toString();
	}

	/**
	 * 用户把SOAP请求发送给服务器端，并返回服务器点返回的输入流
	 * 
	 * @param city
	 *            用户输入的城市名称
	 * @return 服务器端返回的输入流，供客户端读取
	 * @throws Exception
	 */
	private static InputStream getSoapInputStream(String city) throws Exception {
		try {
			String soap = getSoapRequest(city);
			if (soap == null) {
				return null;
			}
			URL url = new URL(
					"http://www.webxml.com.cn/WebServices/WeatherWS.asmx");
			URLConnection conn = url.openConnection();
			conn.setUseCaches(false);
			conn.setDoInput(true);
			conn.setDoOutput(true);

			conn.setRequestProperty("Content-Length", Integer.toString(soap
					.length()));
			conn.setRequestProperty("Content-Type", "text/xml; charset=utf-8");
			conn.setRequestProperty("SOAPAction",
					"http://WebXml.com.cn/getWeather");

			OutputStream os = conn.getOutputStream();
			OutputStreamWriter osw = new OutputStreamWriter(os, "utf-8");
			osw.write(soap);
			osw.flush();
			osw.close();

			InputStream is = conn.getInputStream();
			return is;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 对服务器端返回的XML进行解析
	 * 
	 * @param city
	 *            用户输入的城市名称
	 * @return 字符串 用#分割
	 */
	public static String getWeather(String city) {
		try {
			Document doc;
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			dbf.setNamespaceAware(true);
			DocumentBuilder db = dbf.newDocumentBuilder();
			InputStream is = getSoapInputStream(city);
			doc = db.parse(is);
			NodeList nl = doc.getElementsByTagName("string");
			StringBuffer sb = new StringBuffer();
			for (int count = 0; count < nl.getLength(); count++) {
				Node n = nl.item(count);
				if(n.getFirstChild().getNodeValue().equals("查询结果为空！")) {
					sb = new StringBuffer("#") ;
					break ;
				}
				sb.append(n.getFirstChild().getNodeValue() + "#");
			}
			is.close();
			return sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * 测试
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		String weatherInfo = getWeather("北京");
		System.out.println(weatherInfo);
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