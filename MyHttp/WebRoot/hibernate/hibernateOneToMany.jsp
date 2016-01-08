<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>hibernate��ϵӳ��ʵ��</title>
    <script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
</head>
<body>
	<p><strong>ClassRoom.javaʵ�����Ӧ�����ݱ�������ǣ�</strong></p>
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
	<p><strong>Student.javaʵ�����Ӧ�����ݱ�������ǣ�</strong></p>
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
	&nbsp;&nbsp;ClassRoom��Student��һ�Զ�Ĺ�����<br/>
	&nbsp;&nbsp;������������Ϊfalse��ʱ�򣬿���ֱ��ͨ��һ�Զ���һ�Ķ��󣬲��ҵ���Ӧ�Ķ�Ķ��������</p>
	<pre style="color:blue">
ClassRoom classRoom = relationShipService.getClassRoom(roomId);
int stuNum = classRoom.getStudents().size();
String roomName = classRoom.getRoomName();
	</pre>
	<p>�������Id����ѯ���ж��ٸ�ѧ�� roomId = <input type="text"  id="roomId"></input>
		<br/><input type="button" value="һ�Զ��ѯ" id="oneToManyQueryButton"></input>
		<input type="button" value="�ر�"  onclick="$('#oneToManyQueryDiv').css('display','none');"></input>
	</p>
	<div style="display:none" id="oneToManyQueryDiv">
		<p>���Ϊ<span id="roomId2" style="color:red"></span>����Ϊ��<span id="roomName" style="color:red"></span>����������<span id="stuNum" style="color:red"></span>��ѧ��</p>
			<!-- <table width="100%" border="1px" align="center" cellpadding="0"
				cellspacing="0" id="oneToManyQueryTable" >
				<thead>
					<tr bgcolor="#ADD8E6">
						<th width="33%">����Id</th>
						<th width="33%">ѧ��Id</th>
						<th width="33%">ѧ������</th>
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
						alert("��������ȷ��Id");
					}
				}); 
			}); 
		});
		</script>
</body>
</html>