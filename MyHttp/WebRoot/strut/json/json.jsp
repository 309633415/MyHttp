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
   
   //����XMLHttpRequest ����
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
	                	alert("�������˷��ص��ַ����� " +oRequest.responseText);
	                	//�������˷��ص��ַ������ͣ�ת��JSON����
	                    eval(oRequest.responseText);
	                    var bookHolder = document.getElementById('bookHolder');
	                    var sBook = '<p><b>ISBN: </b>' + flag.key+ '</p>';
	                    //flag����Ӻ�̨������
		                var  bookHolder = document.getElementById('bookHolder');
		                bookHolder.innerHTML = sBook;
                   }
                }
            };
            oRequest.open('POST', sUrl,true);
            oRequest.send(null);
            /* �� open() �ĵ�����������ʹ���� "true"���ò����涨�����Ƿ��첽����true ��ʾ�ű����� send() ����֮�����ִ�У������ȴ����Է���������Ӧ��
            onreadystatechange �¼�ʹ���븴�ӻ��ˡ�����������û�еõ���������Ӧ������£���ֹ����ֹͣ���ȫ�ķ�����
			ͨ���Ѹò�������Ϊ "false"������ʡȥ����� onreadystatechange ���롣���������ʧ��ʱ�Ƿ�ִ������Ĵ����޹ؽ�Ҫ����ô����ʹ����������� */
        }
    </script>
</head>
<body>
	<input type="button" value="������" onclick="retrieveBook()" />
	<div id="bookHolder"></div>
	<a href="<%=basePath%>/json/writeJson.action">json��ʾJSON���ݸ�ʽ</a>
</body>
</html>

