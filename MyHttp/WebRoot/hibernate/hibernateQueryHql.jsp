<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hibernateQuery.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
  </head>
  
  <body>
    1. ��ͨ��ѯ
   	<p style="color:blue">Query q = session.createQuery(" from User as u");</p>
    <input type="button" value="��ͨ��ѯ"  id="commonQueryButton" ></input>
    <input type="button" value="�ر�"  onclick="$('#commonQueryTable').css('display','none');"></input>
    <table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0" id="commonQueryTable"  style="display:none">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="33%">user_id</th>
				<th width="33%">user_username</th>
				<th width="33%">user_password</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<br/>
	<br/>
     2. ������ѯ
    <p style="color:blue"> Query q = session.createQuery(" from User as u where u.username = ?");</p>
     �������ѯ������ username = �� <input type="text"  id="conditionName" ></input>
     <input type="button" value="������ѯ"  id="conditionQueryButton" ></input>
      <input type="button" value="�ر�"  onclick="$('#conditionQueryTable').css('display','none');"></input>
     <table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0" id="conditionQueryTable"  style="display:none">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="33%">user_id</th>
				<th width="33%">user_username</th>
				<th width="33%">user_password</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
		</table>
		<br/>
		<br/> 3. ԭ�� SQL ��ѯ
		<p style="color:blue">SQLQuery q = session.createSQLQuery("select * from hibernate_user_info").addEntity(User.class);</p>
		<input type="button" value="ԭ��SQL��ѯ" id="originalQueryButton"></input>
		<input type="button" value="�ر�"  onclick="$('#originalQueryTable').css('display','none');"></input>
		<table width="100%" border="1px" align="center" cellpadding="0"
			cellspacing="0" id="originalQueryTable" style="display:none">
			<thead>
				<tr bgcolor="#ADD8E6">
					<th width="33%">user_id</th>
					<th width="33%">user_username</th>
					<th width="33%">user_password</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<br />
		<br />
	 4.criteria ��ѯ�����Է�ҳ��<br/>
       <p style="color:blue">
        Criteria q = session.createCriteria(User.class);<br/>  
        q.add(Restrictions.idEq(?));<br/>     
        List&lt;User&gt; list = q.list(); 
        </p>
          �������ѯ������ id = �� <input type="text"  id="userId" ></input>
        <input type="button" value="criteria��ѯ" id="criteriaQueryButton"></input>
        <input type="button" value="�ر�"  onclick="$('#criteriaQueryTable').css('display','none');"></input>
		<table width="100%" border="1px" align="center" cellpadding="0"
			cellspacing="0" id="criteriaQueryTable" style="display:none">
			<thead>
				<tr bgcolor="#ADD8E6">
					<th width="33%">user_id</th>
					<th width="33%">user_username</th>
					<th width="33%">user_password</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<br />
		<br />
  		
    </body>
    <script type="text/javascript">
		$(function() {
				$("#commonQueryButton").click(function() {
					$.ajax({
						url : "<%=basePath%>relationship/commonQuery",
						type : "POST",
						dataType : "json",
						success : function(data) {
							var d = eval("("+data+")");//������ת����json���ͣ����԰�data��alert()�����������������ʲô���Ľṹ
                        	//�õ���d��һ������{"key":"value","key1":"value1"}���������ͣ�Ȼ��ȡֵ����
							var list = d.commonQueryList;
							//���tbody�е�����
							$("#commonQueryTable tbody").html("");
							$("#commonQueryTable").css("display","block");
							//�������
							for(var i=0; i<list.length; i++){
							 	$("#commonQueryTable").append("<tr><td>"+list[i].id+"</td><td>"+list[i].username+"</td><td>"+list[i].password+"</td></tr>");
							}
							/* $.each(list, function(i, value){ 
               					 $("#commonQueryTable").append("<tr><td>"+value.id+"</td><td>"+value.username+"</td><td>"+value.password+"</td></tr>");
                			 }); */
						},
						error : function(data){
							alert("�ڲ�����");
						}
					});
				});
				
				
//*************************************************************************************************************START					
				$("#conditionQueryButton").click(function() {
					var name = $("#conditionName").val() ;
					  $.ajax({
						url : "<%=basePath%>relationship/conditionQuery",
						type : "POST",
						data : {"name":name},
						dataType : "json",
						success : function(data) {
							var d = eval("("+data+")");
							var list = d.conditionQueryList;
							$("#conditionQueryTable tbody").html("");
							$("#conditionQueryTable").css("display","block");
							for(var i=0; i<list.length; i++){
							 	$("#conditionQueryTable").append("<tr><td>"+list[i].id+"</td><td>"+list[i].username+"</td><td>"+list[i].password+"</td></tr>");
							}
						},
						error : function(data){
							alert("�ڲ�����");
						}
					}); 
				}); 
//**************************************************************************************************************END				
				
				$("#originalQueryButton").click(function() {
					$.ajax({
						url : "<%=basePath%>relationship/originalQuery",
						type : "POST",
						dataType : "json",
						success : function(data) {
							var d = eval("("+data+")");
							var list = d.originalQueryList;
							$("#originalQueryTable tbody").html("");
							$("#originalQueryTable").css("display","block");
							for(var i=0; i<list.length; i++){
							 	$("#originalQueryTable").append("<tr><td>"+list[i].id+"</td><td>"+list[i].username+"</td><td>"+list[i].password+"</td></tr>");
							}
						},
						error : function(data){
							alert("�ڲ�����");
						}
					});
				});
				
				$("#criteriaQueryButton").click(function() {
				var userId = $("#userId").val() ;
					$.ajax({
						url : "<%=basePath%>relationship/criteriaQuery",
						type : "POST",
						data : {"userId":userId},
						dataType : "json",
						success : function(data) {
							var d = eval("("+data+")");
							var list = d.criteriaQueryList;
							$("#criteriaQueryTable tbody").html("");
							$("#criteriaQueryTable").css("display","block");
							for(var i=0; i<list.length; i++){
							 	$("#criteriaQueryTable").append("<tr><td>"+list[i].id+"</td><td>"+list[i].username+"</td><td>"+list[i].password+"</td></tr>");
							}
						},
						error : function(data){
							alert("�ڲ�����");
						}
					});
				});
				
			});
		</script>
</html>
