<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>异步校验（基于struts2实现ajax）</title>
	<script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
</head>

<body>
	<h3>异步校验（基于struts2+jQuery实现ajax）</h3>
	<br>
	<div style="color:red">
		<h3>当输入用户为tom时表示该用户已经注册过，用户名输入框失去焦点后触发异步提交事件</h3>
	</div>
	<br>
	<div id="checkinfo"></div>
	<br>
	<form>
			<p>用户名：<input name="username"  id="username"></input></p>
			<p>密&nbsp;码：<input name="pwd" id="pwd"></input></p> 
			<p><input type="button" value="提交" ></input></p>
		</table>
	</form>
<script type="text/javascript">
$(function() {
	$("#username").blur(function() {	//给输入框绑定点击事件
		var name = $("#username").val() ;
		  $.ajax({
			 /* url 需要用来处理ajax请求的action */
			url : "<%=basePath %>ajax/checkJqueryAjax",	
			type : "POST",
			data : {"name":name},	/* 设置数据源，传递到服务器端 */
			dataType : "json",		/* 设置需要返回的数据类型 */
			success : function(data) {
				var d = eval("("+data+")");	
				/* 将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
				,得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来 */
				if(d.returnFlag == "true"){
					$("#checkinfo ").html("<font color='red'>对不起，该帐号已经被注册过了</font>");
				}
				else{
					$("#checkinfo ").html("该帐号还未被注册");
				}  
			},
			error : function(data){
				alert("内部错误");
			}
		}); 
	});
});  
</script>
</body>
</html>
