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
struts2��autocompleter��ǩ�����¼�������:<br/>
&nbsp;&nbsp;autoComplete:�����Ƿ��ڵ����ı����������ʾ��ʾ����<br/>
&nbsp;&nbsp;forceValidOption:���õ����ı������Ƿ�ֻ���������б����б���<br/>
&nbsp;&nbsp;delay:ָ����ʾ�����б��֮ǰ���ӳ�ʱ��<br/>
&nbsp;&nbsp;href:ָ���첽���������б����URL<br/>
&nbsp;&nbsp;searchType:���������б����뵥���ı�����ַ�����ƥ��ģʽ,���Խ���3��ֵ:startstring(��ʾ���ı������ַ�����ͷ��ѡ��,����Ĭ��ֵ);startword(��ʾ���ı����е��ʿ�ͷ��ѡ��);substring(��ʾ�����ı������ַ�����ѡ��).<br/>
&nbsp;&nbsp;dropdownHeight:���������б��ĸ߶�,Ĭ����120<br/>
&nbsp;&nbsp;dropdownWidth:���������б��Ŀ��,Ĭ���뵥���ı���Ŀ����ͬ.<br/>
&nbsp;&nbsp;formId:ָ�������ĸ�����ı�����������<br/>
&nbsp;&nbsp;value:��themeʹ��simpleʱ,ָ���ñ�ǩ��Ĭ��ֵ<br/>
&nbsp;&nbsp;list:ָ�����ڵ�����������ѡ��ļ���<br/>
&nbsp;&nbsp;loadOnTextChange:���õ��û��ڵ����ı���������ʱ,�Ƿ����¼����б���.<br/>
&nbsp;&nbsp;loadMinimumCount:��loadOnTextChange��������Ϊtrueʱ,������������������ַ���,�Żᴥ�����¼����б���.<br/>
&nbsp;&nbsp;showDownArrow:�Ƿ���ʾ������ͷ,Ĭ������ʾ.<br/>
&nbsp;&nbsp;�����������autocompleter��ǩ��autoComplete=true(Ĭ����false),�ñ�ǩ�����ڵ����ı���������������ʾ.���ϣ��ǿ���û�ֻ�����������б��е��б���,���������forceValidOption=true(Ĭ����false).

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
 1:jar�����ص�ַ��<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar��</a>
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON���ϼ�</a>������commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar��<br/>
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
&nbsp;&nbsp;���ȵ�����Ҫ��jar��������ʹ�û���struts2��ajax��ʵ�ָ������ܡ�</br>
&nbsp;&nbsp;ajaxComplete.jspҳ��Ĵ������£�</br>
   <pre  name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%&gt;
&lt;%@ taglib prefix="sx" uri="/struts-dojo-tags"%&gt;
&lt;%@taglib prefix="s" uri="/struts-tags"%&gt;
&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
	&lt;!-- ע�����￴Ҫ�������ǩ --&gt;
	&lt;sx:head /&gt;
&lt;/head&gt;
&lt;body&gt;
	&lt;br&gt;
	&lt;h3&gt;�Զ���ȫ&lt;/h3&gt;
	&lt;br /&gt;
	&lt;form&gt;
		&lt;table&gt;
			&lt;tr&gt;
				&lt;td class="tdLabel"&gt;&lt;label class="label"&gt;AJAX �Զ���ȫ:&lt;/label&gt;
				&lt;/td&gt;
				&lt;td &gt;
					&lt;s:url id="dataUrl" value="%{#request.basePath}/ajax/autoCompleter.action" /&gt;
					&lt;!-- name���Ա������ã���������ʲô����ν --&gt;
					 &lt;sx:autocompleter  
						href="%{dataUrl}" 
						loadOnTextChange="true"
						loadMinimumCount="1"
					 	autoComplete="false" 
					 	showDownArrow="false" 		
					 	indicator = "indicator"			
					 	/&gt;
					&lt;!-- indicator�Ǽ���ʱ��ʾ�Ķ�̬ͼƬ --&gt;
					&lt;img id="indicator" src="../image/indicator.gif" alt="Loading" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;
	&lt;/form&gt; 
&lt;/body&gt;
&lt;/html&gt;

</pre>

&nbsp;&nbsp;��struts.xm�����ļ��а���ajax.xml�����е������ǣ�</br>
<pre  name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;

&lt;package name="ajax" extends="json-default" namespace="/ajax"&gt;
&lt;!--�Զ���ȫ��Action--&gt;
  &lt;action name="autoCompleter" class="demoinfo.struts2.ajax.AjaxAction" method="autoCompleter"&gt;
  	&lt;result name="fail"&gt;&lt;/result&gt;
      &lt;result type="json"&gt;
        &lt;param name="root"&gt;names&lt;/param&gt;
      &lt;/result&gt;
   &lt;/action&gt;   
&lt;/package&gt;
&lt;/struts&gt;
</pre>

&nbsp;&nbsp;AjaxAction��Ӧ�Ĵ���Ϊ��</br>
   <pre  name="code" class="java">
package demoinfo.struts2.ajax;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Ajax��Action
 * **/
public class AjaxAction extends ActionSupport{

	private static final long serialVersionUID = -8201401726773589361L;

	private List&lt;String[]&gt; names; // autocompleter���ؿͻ�������
	private String start; // autocompleter�ͻ����������ʼ����

	// ������
	public String autoCompleter() throws UnsupportedEncodingException {
		names = new ArrayList&lt;String[]&gt;();
		names.add(new String[]{"Alabama","Alabama"});
		names.add(new String[]{"Alaska","Alaska"});
		names.add(new String[]{"American Samoa","American Samoa"});
		names.add(new String[]{"Arizona","Arizona"});
		names.add(new String[]{"Arkansas","Arkansas"});
		names.add(new String[]{"Armed Forces Europe","Armed Forces Europe"});
		names.add(new String[]{"Armed Forces Pacific","Armed Forces Pacific"});
		names.add(new String[]{"Armed Forces the Americas","Armed Forces the Americas"});
		names.add(new String[]{"Beaver","Beaver"});
		names.add(new String[]{"Banana Mania","Banana Mania"});
		names.add(new String[]{"California","California"});
		names.add(new String[]{"Colorado","Colorado"});
		names.add(new String[]{"Connecticut","Connecticut"});
		names.add(new String[]{"Delaware","Delaware"});
		names.add(new String[]{"District of Columbia","District of Columbia"});
		names.add(new String[]{"Eggplant","Eggplant"});
		names.add(new String[]{"Electric Lime","Electric Lime"});
		names.add(new String[]{"Federated States of Micronesia","Federated States of Micronesia"});
		names.add(new String[]{"Florida","Florida"});
		names.add(new String[]{"Georgia","Georgia"});
		names.add(new String[]{"Guam","Guam"});
		names.add(new String[]{"Hawaii","Hawaii"});
		names.add(new String[]{"Idaho","Idaho"});
		names.add(new String[]{"Illinois","Illinois"});
		names.add(new String[]{"Indiana","Indiana"});
		names.add(new String[]{"Iowa","Iowa"});
		names.add(new String[]{"Jazzberry Jam","Jazzberry Jam"});
		names.add(new String[]{"Jungle Green","IoJungle Greenwa"});
		names.add(new String[]{"Kansas","Kansas"});
		names.add(new String[]{"Kentucky","Kentucky"});
		names.add(new String[]{"Louisiana","Louisiana"});
		names.add(new String[]{"Maine","Maine"});
		names.add(new String[]{"Marshall Islands","Marshall Islands"});
		names.add(new String[]{"Maryland","Maryland"});
		names.add(new String[]{"Massachusetts","Massachusetts"});
		names.add(new String[]{"Michigan","Michigan"});
		names.add(new String[]{"Minnesota","Minnesota"});
		names.add(new String[]{"Mississippi","Mississippi"});
		names.add(new String[]{"Missouri","Missouri"});
		names.add(new String[]{"Montana","Montana"});
		names.add(new String[]{"Nebraska","Nebraska"});
		names.add(new String[]{"Nevada","Nevada"});
		names.add(new String[]{"New Hampshire","New Hampshire"});
		names.add(new String[]{"New Jersey","New Jersey"});
		names.add(new String[]{"New Mexico","New Mexico"});
		names.add(new String[]{"New York","New York"});
		names.add(new String[]{"North Carolina","North Carolina"});
		names.add(new String[]{"North Dakota","North Dakota"});
		names.add(new String[]{"Northern Mariana Islands","Northern Mariana Islands"});
		names.add(new String[]{"Oklahoma","Oklahoma"});
		names.add(new String[]{"Oregon","Oregon"});
		names.add(new String[]{"Pennsylvania","Pennsylvania"});
		names.add(new String[]{"Puerto Rico","Puerto Rico"});
		names.add(new String[]{"Rhode Island","Rhode Island"});
		names.add(new String[]{"South Carolina","South Carolina"});
		names.add(new String[]{"South Dakota","South Dakota"});
		names.add(new String[]{"Tennessee","Tennessee"});
		names.add(new String[]{"Texas","Texas"});
		names.add(new String[]{"Utah","Utah"});
		names.add(new String[]{"Vermont","Vermont"});
		names.add(new String[]{"Virgin Islands U.S.","Virgin Islands U.S."});
		names.add(new String[]{"Virginia","Virginia"});
		names.add(new String[]{"Washington","Washington"});
		names.add(new String[]{"West Virginia","West Virginia"});
		names.add(new String[]{"Wisconsin","Wisconsin"});
		names.add(new String[]{"Wyoming","Wyoming"});
		names.add(new String[]{"Yellow","Yellow"});
		return SUCCESS;
	}

	public List&lt;String[]&gt; getNames() {
		return names;
	}

	public void setNames(List&lt;String[]&gt; names) {
		this.names = names;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
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