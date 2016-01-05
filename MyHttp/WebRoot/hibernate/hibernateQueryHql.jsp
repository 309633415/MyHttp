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
    1. 普通查询
   	<p style="color:blue">Query q = session.createQuery(" from User as u");</p>
    <input type="button" value="普通查询"  id="commonQueryButton" ></input>
    <input type="button" value="关闭"  onclick="$('#commonQueryTable').css('display','none');"></input>
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
     2. 条件查询
    <p style="color:blue"> Query q = session.createQuery(" from User as u where u.username = ?");</p>
     请输入查询条件中 username = ？ <input type="text"  id="conditionName" ></input>
     <input type="button" value="条件查询"  id="conditionQueryButton" ></input>
      <input type="button" value="关闭"  onclick="$('#conditionQueryTable').css('display','none');"></input>
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
		<br/> 3. 原生 SQL 查询
		<p style="color:blue">SQLQuery q = session.createSQLQuery("select * from hibernate_user_info").addEntity(User.class);</p>
		<input type="button" value="原生SQL查询" id="originalQueryButton"></input>
		<input type="button" value="关闭"  onclick="$('#originalQueryTable').css('display','none');"></input>
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
	 4.criteria 查询（可以分页）<br/>
       <p style="color:blue">
        Criteria q = session.createCriteria(User.class);<br/>  
        q.add(Restrictions.idEq(?));<br/>     
        List&lt;User&gt; list = q.list(); 
        </p>
          请输入查询条件中 id = ？ <input type="text"  id="userId" ></input>
        <input type="button" value="criteria查询" id="criteriaQueryButton"></input>
        <input type="button" value="关闭"  onclick="$('#criteriaQueryTable').css('display','none');"></input>
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
							var d = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        	//得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
							var list = d.commonQueryList;
							//清空tbody中的数据
							$("#commonQueryTable tbody").html("");
							$("#commonQueryTable").css("display","block");
							//添加数据
							for(var i=0; i<list.length; i++){
							 	$("#commonQueryTable").append("<tr><td>"+list[i].id+"</td><td>"+list[i].username+"</td><td>"+list[i].password+"</td></tr>");
							}
							/* $.each(list, function(i, value){ 
               					 $("#commonQueryTable").append("<tr><td>"+value.id+"</td><td>"+value.username+"</td><td>"+value.password+"</td></tr>");
                			 }); */
						},
						error : function(data){
							alert("内部错误");
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
							alert("内部错误");
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
							alert("内部错误");
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
							alert("内部错误");
						}
					});
				});
				
			});
		</script>
</html>
