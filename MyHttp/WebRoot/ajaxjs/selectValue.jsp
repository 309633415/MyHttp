<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>

<body>
	<p>
	<h3>JSȡֵ��ȫ</h3>
	</p>
	<p>
		���������<input type="text" id="testId" class="testClass" name="testName"
			style="width:300px" />
	</p>
	<p>1.ͨ�� id���� ��ȡ</p>
	<p style="color:blue">document.getElementById("testId").value="����ͨ��id��ȡ����";</p>
	<p>
		<input type="button" onclick="selectById()" value="ͨ��id��ȡ" />
	</p>
	<p>2.ͨ�� name���� ��ȡ</p>
	<p style="color:blue">document.getElementsByName("testName")[0].value="����ͨ��name��ȡ����";</p>
	<p style="text-indent:2em">ע�⣺���� getElementsByName �� getElementById
		����һ��s��һ��Ҫע�����֡���Ϊһ���ĵ��е� name ���Կ��ܲ�Ψһ���� HTML ���еĵ�ѡ��ťͨ��������ͬ�� name ���ԣ�������
		getElementsByName() �������ص���Ԫ�ص����飬������һ��Ԫ�ء�</p>
	<p>
		<input type="button" onclick="selectByName()" value="ͨ��name��ȡ" />
	</p>
	<p>3.ͨ�� class���� ��ȡ</p>
	<p style="color:blue">document.getElementsByName("testName")[0].value="����ͨ��name��ȡ����";</p>
	<p style="text-indent:2em">ע��: Internet Explorer 8 ������ IE �汾��֧��
		getElementsByClassName() ������</p>
	<p>
		<input type="button" onclick="selectByClassName()" value="ͨ��class��ȡ" />
	</p>
	<p>4.ͨ�� tag ��ǩ����ȡ</p>
	<p style="color:blue">
		var x= document.getElementsByTagName("input");<br />
		x[0].value="����ͨ��tag��ȡ���ģ�����"+x.length+"��&lt;input&gt;��ǩ";
	</p>
	<p>
		<input type="button" onclick="selectByTagName()" value="ͨ��tag��ǩ��ȡ" />
	</p>
	<script type="text/javascript">
		function selectById() {
			document.getElementById("testId").value = "����ͨ��id��ȡ����";
		}
		function selectByName() {
			document.getElementsByName("testName")[0].value = "����ͨ��name��ȡ����";
		}
		function selectByClassName() {
			document.getElementsByClassName("testClass")[0].value = "����ͨ��class��ȡ����";
		}
		function selectByTagName() {
			var x = document.getElementsByTagName("input");
			x[0].value = "����ͨ��tag��ȡ���ģ�һ����" + x.length + "��<input>��ǩ";
		}
	</script>
</body>
</html>
