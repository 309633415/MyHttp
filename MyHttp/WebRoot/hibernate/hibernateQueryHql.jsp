<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
  <%=basePath%><br/>
    This is my JSP page. <br>
    1. 普通查询<br/>
   	Query q = session.createQuery(" from User as u");  <br/>
   	<input type="text" value="阿斯顿发" id="hhh"></input>
        <input type="button" value="普通查询"  id="commonQueryButton"></input>
        <input type="button" value="dddd"  onclick="fff()"></input>
     2. 条件查询<br/>
     Query q = session.createQuery(" from User as u where u.username = ?");<br/>
        
       3. 原生 SQL 查询<br/>
       SQLQuery q = session.createSQLQuery("select * from hibernate_user_info").addEntity(User.class);<br/>
        
        
        4.criteria 查询（可以分页）<br/>
       	//创造criteria<br/>  
        Criteria q = session.createCriteria(User.class);<br/>  
        //添加查询条件<br/>  
        q.add(Restrictions.between("id", 1, 3)); <br/>  
        q.add(Restrictions.idEq(2));<br/>     
             
        List&lt;User&gt; list = q.list(); 

  <script type="text/javascript">
  function fff(){
alert("dfasfsd");
var a=$("#hhh").val();
alert(a);
}
  $("document").ready( function(){
  	$("#commonQueryButton").onclick(function(){
//		$.ajax({
//			url:"/relationship/commonQuery.action",
//			type:"POST",
//			data:"{}",  
//			dataType:'json',  
//			success:function (data) {  
				alert("ajax 成功啦")；
//			}  ,
//		})
	});
});

  </script>
    </body>
</html>
