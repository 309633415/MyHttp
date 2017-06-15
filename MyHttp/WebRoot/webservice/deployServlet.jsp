<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>servlet.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <h2>发布servlet </h2>
      <p style="text-indent:2em;">注：发布SayHelloServlet，向servlet发送带name参数的请求，返回hello， name ！</p>
      </div><br/><br/>
    <form id="fm1" action="<%=basePath%>/servlet/SayHelloServlet" method="post">
       输入名字：<input type="text" name="name"/><br/>
       <input type="submit" value="提交" />
    </form>
<div>
  </body>
</html>
