<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>webServiceʵ��</title>
  </head>
  <body>
  <h2>ʹ��Soap������ù�������ӿ�</h2>
  <p style="text-indent:2em;">ע��ʵ�����ǲ�ѯ�����Ľӿڣ�ʹ�õ�webservice��վΪ<br/><a href="http://www.webxml.com.cn/WebServices/WeatherWS.asmx" target="_blank">http://www.webxml.com.cn/WebServices/WeatherWS.asmx</a>����������ٶȱ�httpclient����ķ�����Ҫ����ˡ�</p>
    <form id="fm1" method="post" action="<%=basePath %>/webservice/soap.action">
 ��������У�<input type="text"  id="city" name="city"  value="${city}"/>
    	<input type="button"  value="�ύ" onclick="check()"/>
    </form>
    �õص���������ǣ�<font color="red">
    ${ result } 
    </font>
    <br/><br/><br/>
      <script type="text/javascript">
    function check(){
	   	 if(fm1.city.value.replace(/(^\s*)|(\s*$)/g, "")==""){
	   	 	alert("���в���Ϊ�գ�");
	   	 	document.getElementById("city").focus();
	   	 	return;
	   	 }
	   	  fm1.submit(); 
    }
    </script>
    
  </body>
</html>
