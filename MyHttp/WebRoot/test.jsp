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

<p style="text-indent:2em"><strong>ʲô��HttpClient��</strong><br/>
&nbsp;&nbsp;HttpClient��Apache Jakarta Common�µ�����Ŀ�������ṩ��Ч�ġ����µġ����ܷḻ��֧��HTTPЭ��Ŀͻ��˱�̹��߰���������֧��HTTPЭ�����µİ汾�ͽ��顣<br/>
&nbsp;&nbsp;HttpClient��ȴ�ͳJDK�Դ���URLConnection�������������Ժ�����ԣ��������ǿͻ��˷���Http���������ף�����Ҳ�����˿�����Ա���Խӿڣ�����HttpЭ��ģ���������˿�����Ч�ʣ�Ҳ������ߴ���Ľ�׳�ԡ�
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
 
&nbsp;&nbsp;����ʵ��ʹ��HttpClient����weiService�ӿڣ�����jar����ֱ�ӿ�������HttpClientTest���������£�<br/>
<pre name="code" class="java">
package demoinfo.webservice.httpclient;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

public class HttpClientTest {

	@SuppressWarnings("deprecation")
	public static void main(String[] args){
		try {  
			final String SERVER_URL = "http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx/getMobileCodeInfo"; // ������Ҫ��ȡ��������Դ��ַ  
			HttpPost request = new HttpPost(SERVER_URL);    	//����HttpPost����
			List&lt;BasicNameValuePair&gt; params = new ArrayList&lt;BasicNameValuePair&gt;();  	//��ֵ��List
			params.add(new BasicNameValuePair("mobileCode", "18814868249"));   //��ע������ĺ���������6λ��  
			params.add(new BasicNameValuePair("userId", ""));   
			request.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));   	 //������Ĳ���ת��ΪUTF-8���룬��װ��request
			HttpResponse httpResponse = new DefaultHttpClient().execute(request);    	 //�ύHttpClient����
			if (httpResponse.getStatusLine().getStatusCode() != 404)  
			{  
				String result = EntityUtils.toString(httpResponse.getEntity());  	//��ȡ����ֵ
				System.out.println(result);   
			}  
		} catch (Exception e) {  
			System.out.println("Error");  
			e.printStackTrace();  
		}  
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