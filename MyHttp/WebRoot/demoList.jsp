<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setHeader("Pragma","no-cache");     
response.setHeader("Cache-Control","no-cache");    
response.setDateHeader("Expires",0);
request.setCharacterEncoding("GBK");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	.mulu{
		margin-left:4%;
		width:45%;
		border:#66ccff 1px solid;
		height:200px;
		float:left;
	}
	</style>
  </head>
  
  <body>
    <h1>Ŀ¼</h1>
    <div style="float:left;">
	    <div id="struts" class="mulu">
		    <h2>Struts2ʵ��</h2><br/>
		    <a href="./common/common.action?target=strutsLoginDemo" >��½ʵ��</a><br>
		    <a href="./common/common.action?target=strutsValidDemo" >���У��ʵ��</a><br/>
		    <a href="./common/common.action?target=strutsInterceptorDemo" >������ʵ��</a><br/>
		    <a href="./common/common.action?target=strutsFileUploadDemo" >�ļ��ϴ�ʵ��</a><br/>
		    <a href="./common/common.action?target=strutsTagDemo" >struts2��ǩʵ��</a><br/>
		    <a href="./common/common.action?target=strutsCrudDemo" >crudʵ��</a><br/>
		    <a href="./common/common.action?target=strutsAjaxDemo">��Ajax��Ч</a><br/>
		    <a href="./common/common.action?target=strutsJsonDemo">json</a>
	    </div>
	    <div id="hibernate" class="mulu">
		    <h2>Hibernateʵ��</h2>
		    <a href="./common/common.action?target=ormCrudDemo">����</a><br/>
		    <a href="./strut/json/json.jsp">ɾ��</a><br/>
		    <a href="./strut/json/json.jsp">�޸�</a><br/>
		    <a href="./strut/json/json.jsp">�򵥲�ѯ</a><br/>
		    <a href="./strut/json/json.jsp">���Ӳ�ѯ</a><br/>
		    <a href="./strut/json/json.jsp">�Զ����ѯ��HQL����SQL���ɣ�</a><br/>
		    <a href="./strut/json/json.jsp">��ϵ��һ��һ��һ�Զ࣬��Զࣩ</a><br/>
	    </div>
	    <div id="spring" class="mulu">
		    <h2>Springʵ��</h2>
		    <a href="./strut/json/json.jsp">ע��</a><br/>
		    <a href="./strut/json/json.jsp">��������ù���</a><br/>
	    </div>
	    <div id="ajax" class="mulu">
		    <h2>AJAX��javaScript</h2>
		    <a href="./strut/json/json.jsp">AJAX�򵥵�У��</a><br/>
		    <a href="./strut/json/json.jsp">AJAX��ѯ</a><br/>
		    <a href="./strut/json/json.jsp">JavaScriptȡֵ��ȫ</a><br/>
	    </div>
	    <div id="webService" class="mulu">
		    <h2>webServiceʵ��</h2>
		    <a href="./strut/json/json.jsp">��������</a><br/>
		    <a href="./strut/json/json.jsp">��ȡ��վ����</a><br/>
	    </div>
	    <div id="jbpm" class="mulu">
		    <h2>JBPM������ʵ��</h2>
		    <a href="./strut/json/json.jsp">��Դ׼���뻷���</a><br/>
		    <a href="./strut/json/json.jsp">����</a><br/>
		    <a href="./strut/json/json.jsp">������</a><br/>
		    <a href="./strut/json/json.jsp">������ת���˻�</a><br/>
	    </div>
	    <div class="mulu">
			<h2>���ģʽ23��</h2>
			<a>����ģʽ</a>	    
			<a>�۲���ģʽ</a>	    
	    </div>
    </div>
  </body>
</html>
