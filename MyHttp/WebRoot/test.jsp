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

&nbsp;&nbsp;Web Service��WSDL��SOAP��HTTP�ĸ�����������ϵ���ڲ�ͬ�Ĳ�Ʒ�����ֵĸ���Ҳ��һ����
<p style="text-indent:2em"><strong>WebService �� WSDL�Ĺ�ϵ��</strong><br/>
&nbsp;&nbsp;Web Service�ṩһ�ֿɱ����õķ��񣬸÷������ͨ��WSDL����ӿڣ��ӿ�������WEB SERVICE ���߼����壨types��messages��portTypes���ʹ���Э�飨bindings��services�����ͻ���ͨ��WSDL����ķ��ʷ�ʽ���߼��ṹ���ø÷���
</p>
<p style="text-indent:2em"><strong>Web Service��SOAP�Լ�HTTP�Ĺ�ϵ��</strong><br/>
&nbsp;&nbsp;SOAP�Ǽ򵥶������Э�飬������һ�ֿ�ƽ̨�ķֲ�ʽϵͳͨ��Э�顣SOAP��Ҫ�󶨵����Ͳ�εĴ���Э�飨���磬 HTTP,RMI,JMS���ȡ���õ���HTTP�󶨣�����Ҳ������SOAP�ĸ����HTTP����һ��˵��<br/>
&nbsp;&nbsp;������ͨ��WSDL������Web Service�����кܶ��ֲ�ͬ�İ󶨣�����ʵ���Ͼ���ʹ��SOAP HTTP�� �����ǲ��á�SOAPͨ��Э���HTTP�󶨸�ʽ�����󶨣���
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
 <a href="http://download.csdn.net/detail/jiashubing/9414107" target="_blank">HttpClient����jar��</a>
 �ó�����Ҫ�����jar��
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
 
<p style="text-indent:2em">
����ʵ��ʹ��Soap����webService�ӿڣ�ֱ�ӿ�������SoapTest���������£�</p>
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
 * @Description TODO ������Ϣ������Դ(http://www.webxml.com.cn/)
 * ���ݳ��л�������Ʋ�ѯ���δ��������������������ڵ�����ʵ��������������ָ��:
 * ���÷������£����������theCityName = ������������(������п���Ӣ��)����д���(������Ĭ��Ϊ�Ϻ���)���磺�Ϻ� �� 58367������
 * ���������ظ���ʹ�ó��д����ѯ(��ͨ�� getSupportCity �� getSupportDataSet ���)���������ݣ� һ��һά���� String(22)������
 * 23��Ԫ�ء�String(0) �� String(4)��ʡ�ݣ����У����д��룬����ͼƬ���ƣ�������ʱ�䡣String(5) �� String(11)������� ���£�
 * �ſ�������ͷ������������ƿ�ʼͼƬ����(���³ƣ�ͼ��һ)���������ƽ���ͼƬ����(���³ƣ�ͼ���)�����ڵ�����ʵ��������������
 * ָ����String(12) ��String(16)���ڶ���� ���£��ſ�������ͷ�����ͼ��һ��ͼ�����String(17) �� String(21)��������� ���£�
 * �ſ�������ͷ�����ͼ��һ��ͼ�����String(22) ����ѯ�ĳ��л�����Ľ���
 */
public class SoapTest {
	/**
	 * ��ȡSOAP������ͷ�����滻���еı�־����Ϊ�û�����ĳ���
	 * 
	 * @param city
	 *            �û�����ĳ�������
	 * @return �ͻ���Ҫ���͸���������SOAP����
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
	 * �û���SOAP�����͸��������ˣ������ط������㷵�ص�������
	 * 
	 * @param city
	 *            �û�����ĳ�������
	 * @return �������˷��ص������������ͻ��˶�ȡ
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
	 * �Է������˷��ص�XML���н���
	 * 
	 * @param city
	 *            �û�����ĳ�������
	 * @return �ַ��� ��#�ָ�
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
				if(n.getFirstChild().getNodeValue().equals("��ѯ���Ϊ�գ�")) {
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
	 * ����
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		String weatherInfo = getWeather("����");
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