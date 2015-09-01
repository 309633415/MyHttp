<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Book</title>
</head>
<body>    
    <h2>
        <s:if test="null == book">
            Add Book
        </s:if>
        <s:else>
            Edit Book
        </s:else>
    </h2>
    <form action="<%=basePath %>crud/Store.action" >
        <s:textfield name="book.isbn"  label="ISBN" /><br/>
        <s:textfield name="book.title" label="Title" /><br/>
        <s:textfield id="book.price" name="book.price" label="Price" onblur="checkNum();"/><br/>
        <input type="submit" value="提交" /> 
    </form>
<script type="text/javascript">
function checkNum(){
	var testvalue=document.getElementById("book.price").value;
	var num=/^\d+\.*\d+$/;
    if(!num.test(testvalue)){
    	alert("价格只能是数字");
    	return false;
    }
}
</script>
</body>
</html>