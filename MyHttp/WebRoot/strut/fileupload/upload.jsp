<%@ page language="java" contentType = "text/html; charset=utf-8" pageEncoding = "GBK" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<! DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" > 
<html xmlns ="http://www.w3.org/1999/xhtml" > 
<head> 
    <title> Struts 2 File Upload </title> 
</head> 
<body> 
<s:fielderror></s:fielderror>
<!--�ڽ����ļ��ϴ�ʱ�����ύ��ʽһ��Ҫ��post�ķ�ʽ����Ϊ�ļ��ϴ�ʱ�������ļ����ܻ�ܴ�
	���о���enctype���ԣ��������һ��Ҫд��multipart/form-data����Ȼ�ͻ��Զ������ı��ϴ�����������--> 
    <s:form id="imgForm" action ="/fileupload/fileupload.action" method ="POST" enctype ="multipart/form-data" > 
        <s:file name ="myFile" label ="ͼƬ·��" /> 
        <s:textfield name ="caption" label ="ͼƬ����"/>        
    </s:form> 
    <input type="button" value="�ύ" onclick="checkForm()"/>
	<script type="text/JavaScript">
			function checkForm() {
				if (imgForm.myFile.value == "") {
					alert("������ѡ��һ��ͼƬ");
					return false;
				} else
					imgForm.submit();
			}
		</script>
</body> 
</html> 
