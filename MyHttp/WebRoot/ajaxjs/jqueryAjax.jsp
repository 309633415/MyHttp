<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>�첽У�飨����struts2ʵ��ajax��</title>
	<script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
</head>

<body>
	<h3>�첽У�飨����struts2+jQueryʵ��ajax��</h3>
	<br>
	<div style="color:red">
		<h3>�������û�Ϊtomʱ��ʾ���û��Ѿ�ע������û��������ʧȥ����󴥷��첽�ύ�¼�</h3>
	</div>
	<br>
	<div id="checkinfo"></div>
	<br>
	<form>
			<p>�û�����<input name="username"  id="username"></input></p>
			<p>��&nbsp;�룺<input name="pwd" id="pwd"></input></p> 
			<p><input type="button" value="�ύ" ></input></p>
		</table>
	</form>
<script type="text/javascript">
$(function() {
	$("#username").blur(function() {	//�������󶨵���¼�
		var name = $("#username").val() ;
		  $.ajax({
			 /* url ��Ҫ��������ajax�����action */
			url : "<%=basePath %>ajax/checkJqueryAjax",	
			type : "POST",
			data : {"name":name},	/* ��������Դ�����ݵ��������� */
			dataType : "json",		/* ������Ҫ���ص��������� */
			success : function(data) {
				var d = eval("("+data+")");	
				/* ������ת����json���ͣ����԰�data��alert()�����������������ʲô���Ľṹ
				,�õ���d��һ������{"key":"value","key1":"value1"}���������ͣ�Ȼ��ȡֵ���� */
				if(d.returnFlag == "true"){
					$("#checkinfo ").html("<font color='red'>�Բ��𣬸��ʺ��Ѿ���ע�����</font>");
				}
				else{
					$("#checkinfo ").html("���ʺŻ�δ��ע��");
				}  
			},
			error : function(data){
				alert("�ڲ�����");
			}
		}); 
	});
});  
</script>
</body>
</html>
