<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>webService实例</title>
  </head>
  <body>
  <h2>使用HttpClient调用公共服务接口</h2>
  <p style="text-indent:2em;">注：实例中是查询天气的接口，请求过程比较慢，需要等待较长时间。</p>
    <form id="fm1" method="post" action="<%=basePath %>/webservice/httpclient.action">
    	省份：<input type="text"  id="province" name="province"  value="${province}"/>
    	城市：<input type="text"  id="city" name="city"  value="${city}"/>
    	<input type="button"  value="提交" onclick="check()"/>
    </form>
    该地的天气情况是：<font color="red">
    ${ result } 
    </font>
    <br/><br/><br/>
      <script type="text/javascript">
    function check(){
	   	  if(fm1.province.value.replace(/(^\s*)|(\s*$)/g, "")==""){
	   	 	alert("省份不能为空！");
	   	 	document.getElementById("province").focus();
	   	 	return;
	   	 }
	   	 if(fm1.city.value.replace(/(^\s*)|(\s*$)/g, "")==""){
	   	 	alert("城市不能为空！");
	   	 	document.getElementById("city").focus();
	   	 	return;
	   	 }
	   	  fm1.submit(); 
    }
    </script>
  </body>
</html>
