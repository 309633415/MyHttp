<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>webServiceʵ��</title>
  </head>
  <body>
  <h2>ʹ��HttpClient���ù�������ӿ�</h2>
  <p style="text-indent:2em;">ע��ʵ�����ǲ�ѯ�����Ľӿڣ�������̱Ƚ�������Ҫ�ȴ��ϳ�ʱ�䡣</p>
    <form id="fm1" method="post" action="<%=basePath %>/webservice/httpclient.action">
    	ʡ�ݣ�<input type="text"  id="province" name="province"  value="${province}"/>
    	���У�<input type="text"  id="city" name="city"  value="${city}"/>
    	<input type="button"  value="�ύ" onclick="check()"/>
    </form>
    �õص���������ǣ�<font color="red">
    ${ result } 
    </font>
    <br/><br/><br/>
      <script type="text/javascript">
    function check(){
	   	  if(fm1.province.value.replace(/(^\s*)|(\s*$)/g, "")==""){
	   	 	alert("ʡ�ݲ���Ϊ�գ�");
	   	 	document.getElementById("province").focus();
	   	 	return;
	   	 }
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
