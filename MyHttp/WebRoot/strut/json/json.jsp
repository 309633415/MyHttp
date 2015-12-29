<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>JSON Plugin</title>
<script type="text/javascript">    
    var bXmlHttpSupport = (typeof XMLHttpRequest != "undefined" || window.ActiveXObject);
    if (typeof XMLHttpRequest == "undefined" && window.ActiveXObject) {
        createXMLHttpRequest();
    }    
   
   //创建XMLHttpRequest 对象
	function createXMLHttpRequest() {
		if (window.ActiveXObject) {
		// code for IE6, IE5
			var arrSignatures = [ "MSXML2.XMLHTTP.5.0", "MSXML2.XMLHTTP.4.0",
					"MSXML2.XMLHTTP.3.0", "MSXML2.XMLHTTP", "Microsoft.XMLHTTP" ];
			for ( var i = 0; i < arrSignatures.length; i++) {
				try {
					var oRequest = new ActiveXObject(arrSignatures[i]);
					return oRequest;
				} catch (oError) {
				}
			}
		} else if (window.XMLHttpRequest) {
		// code for IE7, Firefox, Opera, etc.
			var oRequest = new XMLHttpRequest();
			return oRequest;
		} else
			throw new Error("XMLHttp object could not be created.");
	}

	function retrieveBook() {
		if (bXmlHttpSupport) {
			var sUrl = '<%=basePath%>json/writeJson.action';
            var oRequest = new createXMLHttpRequest();
            oRequest.onreadystatechange = function() {
                if(oRequest.readyState == 4) {   
	               	    // 4 = "loaded"
	                	alert("服务器端返回的字符串是 " +oRequest.responseText);
	                	//服务器端返回的字符串类型，转成JSON对象
	                    eval(oRequest.responseText);
	                    var bookHolder = document.getElementById('bookHolder');
	                    var sBook = '<p><b>ISBN: </b>' + flag.key+ '</p>';
	                    //flag对象从后台传过来
		                var  bookHolder = document.getElementById('bookHolder');
		                bookHolder.innerHTML = sBook;
                   }
                }
            };
            oRequest.open('POST', sUrl,true);
            oRequest.send(null);
            /* 在 open() 的第三个参数中使用了 "true"。该参数规定请求是否异步处理true 表示脚本会在 send() 方法之后继续执行，而不等待来自服务器的响应。
            onreadystatechange 事件使代码复杂化了。但是这是在没有得到服务器响应的情况下，防止代码停止的最安全的方法。
			通过把该参数设置为 "false"，可以省去额外的 onreadystatechange 代码。如果在请求失败时是否执行其余的代码无关紧要，那么可以使用这个参数。 */
        }
    </script>
</head>
<body>
	<input type="button" value="检索书" onclick="retrieveBook()" />
	<div id="bookHolder"></div>
	<a href="<%=basePath%>/json/writeJson.action">json显示JSON数据格式</a>
</body>
</html>

