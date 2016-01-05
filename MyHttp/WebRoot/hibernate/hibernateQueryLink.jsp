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

  </head>
  
  <body>
    本例中User.java实体类对应的数据表hibernate_user_info的内容是：<br/>
    <table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="33%">user_id</th>
				<th width="33%">user_username</th>
				<th width="33%">user_password</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table><br/>
    Goods.java实体类对应的数据表hibernate_goods_info的内容是：<br/>
    <table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="33%">goods_id</th>
				<th width="33%">goods_goodsname</th>
				<th width="33%">goods_userId</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="goods" items="${goodses}">
				<tr>
					<td>${goods.id}</td>
					<td>${goods.goodsname}</td>
					<td>${goods.userId}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>
	关键连接查询语句是：
	 <p style="color:blue">String hql="<strong>select new demoinfo.hibernate.pojo.UserVoGoods(u.id,g.id,u.username, g.goodsname) from User u,Goods g where u.id=g.userId</strong>";<br/>    
        Query query = session.createQuery(hql); </p>
    连接查询效果是：<br/>
    <table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="25%">userId</th>
				<th width="25%">userName</th>
				<th width="25%">goodsName</th>
				<th width="25%">goodsId</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${userVoGoodsList}">
				<tr>
					<td>${list.userId}</td>
					<td>${list.username}</td>
					<td>${list.goodsname}</td>
					<td>${list.goodsId}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
  </body>
</html>
