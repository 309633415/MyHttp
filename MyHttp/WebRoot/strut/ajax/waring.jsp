<%@taglib  prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@page contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <sx:head/>
        <title>Test</title>
    </head>
    <body><br>
        <s:if test="flag==1">
            <font color="red">对不起，该帐号已经被注册过了</font>
        </s:if>
        <s:else>
                              该帐号还未被注册
        </s:else>
    </body>
</html>
