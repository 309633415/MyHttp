<%@ page language="java" contentType = "text/html; charset=utf-8" pageEncoding = "GBK" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<! DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" > 
<html xmlns ="http://www.w3.org/1999/xhtml" > 
<head> 
    <title> Struts 2 File Upload </title> 
</head> 
<body> 
<s:fielderror></s:fielderror>
<!--在进行文件上传时，表单提交方式一定要是post的方式，因为文件上传时二进制文件可能会很大，
	还有就是enctype属性，这个属性一定要写成multipart/form-data，不然就会以二进制文本上传到服务器端--> 
    <s:form id="imgForm" action ="/fileupload/fileupload.action" method ="POST" enctype ="multipart/form-data" > 
        <s:file name ="myFile" label ="图片路径" /> 
        <s:textfield name ="caption" label ="图片描述"/>        
    </s:form> 
    <input type="button" value="提交" onclick="checkForm()"/>
	<script type="text/JavaScript">
			function checkForm() {
				if (imgForm.myFile.value == "") {
					alert("您必须选择一张图片");
					return false;
				} else
					imgForm.submit();
			}
		</script>
</body> 
</html> 
