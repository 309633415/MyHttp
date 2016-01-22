<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>webService实例</title>
  </head>
  <body>
  <h2>使用HttpClient调用公共服务接口</h2>
  <p style="text-indent:2em;">注：实例中是查询电话号码归属地的接口，请求过程比较慢，需要等待较长时间。</p>
    <form id="fm1" method="post" action="<%=basePath %>/webservice/httpclient.action">
    	电话号码：<input type="text"  id="number" name="number"  value="${number} "
    	onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>（电话号码大于6位）
    	<input type="button" value="提交" onclick="check()"/>
    </form>
    归属地是：<font color="red">${address} </font>
    <br/><br/><br/>
      <script type="text/javascript">
    function check(){
	   	 var temp=document.getElementById("number").value.length;
	   	 if(temp>6){
	   	 	document.getElementById("fm1").submit();
	   	 }
	   	 else{
	   	 	alert("电话号码需要大于6位");
			document.getElementById("number").focus();
			return;
	   	 }
    }
    </script>
  </body>
</html>
