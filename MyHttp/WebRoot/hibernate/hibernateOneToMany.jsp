<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>hibernate关系映射实例</title>
    <script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
</head>
<body>
	<p><strong>ClassRoom.java实体类对应的数据表的内容是：</strong></p>
	<table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="50%">RoomId</th>
				<th width="50%">RoomName</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="room" items="${ClassRoomList}">
				<tr>
					<td>${room.roomId}</td>
					<td>${room.roomName}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>   
	<p><strong>Student.java实体类对应的数据表的内容是：</strong></p>
	<table width="100%" border="1px" align="center" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#ADD8E6">
				<th width="25%">StudentId</th>
				<th width="25%">StudentName</th>
				<th width="25%">Age</th>
				<th width="25%">RoomId</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="stu" items="${studentList}">
				<tr>
					<td>${stu.stuId}</td>
					<td>${stu.stuName}</td>
					<td>${stu.age}</td>
					<td>${stu.classRoom.roomId}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>   
	<p>
	&nbsp;&nbsp;ClassRoom和Student是一对多的关联。<br/>
	&nbsp;&nbsp;当设置懒加载为false的时候，可以直接通过一对多中一的对象，查找到对应的多的对象的数量</p>
	<pre style="color:blue">
ClassRoom classRoom = relationShipService.getClassRoom(roomId);
int stuNum = classRoom.getStudents().size();
String roomName = classRoom.getRoomName();
	</pre>
	<p>输入教室Id，查询它有多少个学生 roomId = <input type="text"  id="roomId"></input>
		<br/><input type="button" value="一对多查询" id="oneToManyQueryButton"></input>
		<input type="button" value="关闭"  onclick="$('#oneToManyQueryDiv').css('display','none');"></input>
	</p>
	<div style="display:none" id="oneToManyQueryDiv">
		<p>编号为<span id="roomId2" style="color:red"></span>名字为“<span id="roomName" style="color:red"></span>”教室中有<span id="stuNum" style="color:red"></span>个学生</p>
			<!-- <table width="100%" border="1px" align="center" cellpadding="0"
				cellspacing="0" id="oneToManyQueryTable" >
				<thead>
					<tr bgcolor="#ADD8E6">
						<th width="33%">教室Id</th>
						<th width="33%">学生Id</th>
						<th width="33%">学生名字</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table> -->
		</div>
		<br/><br/>
	 <script type="text/javascript">
		$(function() {
			$("#oneToManyQueryButton").click(function() {
				var temp = $("#roomId").val() ;
				  $.ajax({
					url : "<%=basePath%>relationship/oneToManyQuery",
					type : "POST",
					data : {"roomId":temp},
					dataType : "json",
					success : function(data) {
						var d = eval("("+data+")");
						var list = d.oneToManyQueryList;
						$("#oneToManyQueryTable tbody").html("");
						$("#roomId2").html(temp);
						 $("#roomName").html(d.roomName); 
						$("#stuNum").html(d.stuNum); 
						 $("#oneToManyQueryDiv").css("display","block");
						/* for(var i=0; i<list.length; i++){
						 	$("#oneToManyQueryTable").append("<tr><td>"+list[i].roomId+"</td><td>"+list[i].stuId+"</td><td>"+list[i].stuName+"</td></tr>");
						}  */
					},
					error : function(data){
						alert("请输入正确的Id");
					}
				}); 
			}); 
		});
		</script>
</body>
</html>