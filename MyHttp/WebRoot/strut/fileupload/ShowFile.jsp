<%@ page language="java" contentType = "text/html;charset=UTF-8" pageEncoding = "GBK"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<! DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" > 
<html xmlns ="http://www.w3.org/1999/xhtml"> 
<head> 
    <title> Struts 2 File Upload </title> 
</head> 
<body > 
    <div style ="padding: 3px; border: solid 1px #cccccc; text-align: center" > 
           <img src ='../image/<s:property value ="imageFileName" />'/>
        <br/> 
        <s:property value ="caption" /> 
    </div> 
    <a href="#" onclick="javascript:history.go(-1);return false;">·µ»Ø</a>
</body> 
</html> 