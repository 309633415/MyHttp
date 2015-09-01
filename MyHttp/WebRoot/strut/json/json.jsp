<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@taglib  prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>JSON Plugin</title>
    <script type="text/javascript">    
    var bXmlHttpSupport = (typeof XMLHttpRequest != "undefined" || window.ActiveXObject);
     
    if (typeof XMLHttpRequest == "undefined" && window.ActiveXObject) {
        function XMLHttpRequest() {
            var arrSignatures = ["MSXML2.XMLHTTP.5.0", "MSXML2.XMLHTTP.4.0",
                                 "MSXML2.XMLHTTP.3.0", "MSXML2.XMLHTTP",
                                 "Microsoft.XMLHTTP"];
                             
            for (var i=0; i < arrSignatures.length; i++) {
                try {        
                    var oRequest = new ActiveXObject(arrSignatures[i]);            
                    return oRequest;        
                } catch (oError) { /*ignore*/ }
            }          
    
            throw new Error("MSXML is not installed on your system.");               
        }
    }    
            
    function retrieveBook() {        
        if(bXmlHttpSupport) {
            var sUrl = '<%=basePath%>json/writeJson.action';
            var oRequest = new XMLHttpRequest();
            oRequest.onreadystatechange = function() {
                if(oRequest.readyState == 4) {   
                alert(oRequest.responseText);
                    eval(oRequest.responseText);
                    var bookHolder = document.getElementById('bookHolder');
                    var sBook = '<p><b>ISBN: </b>' + flag.key+ '</p>';
                  var  bookHolder = document.getElementById('bookHolder');
                   bookHolder.innerHTML = sBook;
                   }
                }
            };
            oRequest.open('POST', sUrl,true);
            oRequest.send(null);
        }
    </script>
</head>
<body>
    <input type="button" value="Retrieve Book" onclick="retrieveBook()" />
    <div id="bookHolder"></div>
    <a   href="<%=basePath%>json/writeJson.action" >json显示JSON数据格式</a>
</body>
</html>

