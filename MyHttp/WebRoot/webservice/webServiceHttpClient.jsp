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
  <p style="text-indent:2em;">ע��ʵ�����ǲ�ѯ�绰��������صĽӿڣ�ʹ�õ�webservice��վΪ<br/><a href="http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx" target="_blank">http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx</a>
  ���ڷ�������ԭ��������̱Ƚ�������Ҫ�ȴ��ϳ�ʱ�䣬��ʱҲ����֡���������æ��������</p>
    <form id="fm1" method="post" action="<%=basePath %>/webservice/httpclient.action">
    	�绰���룺<input type="text"  id="number" name="number"  value="${number} "
    	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>���绰�������6λ��
    	<input type="button" value="�ύ" onclick="check()"/>
    </form>
    �������ǣ�<font color="red">${address} </font>
    <br/><br/><br/>
      <script type="text/javascript">
    function check(){
	   	 var temp=document.getElementById("number").value.length;
	   	 if(temp>6){
	   	 	document.getElementById("fm1").submit();
	   	 }
	   	 else{
	   	 	alert("�绰������Ҫ����6λ");
			document.getElementById("number").focus();
			return;
	   	 }
    }
    </script>
    
  </body>
</html>
