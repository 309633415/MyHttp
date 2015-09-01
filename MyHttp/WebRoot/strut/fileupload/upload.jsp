<%@ page language="java" contentType = "text/html; charset=utf-8" pageEncoding = "GBK" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<! DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" > 
<html xmlns ="http://www.w3.org/1999/xhtml" > 
<head> 
    <title> Struts 2 File Upload </title> 
</head> 
<body> 
<s:fielderror></s:fielderror>
    <s:form action ="/fileupload/fileupload.action" method ="POST" enctype ="multipart/form-data" > 
        <s:file name ="myFile" label ="Image File" /> 
        <s:textfield name ="caption" label ="Caption"/>        
        <s:submit/> 
    </s:form> 
</body> 
</html> 

