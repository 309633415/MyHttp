<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>

<body>
	<p>
	<h3>JS取值大全</h3>
	</p>
	<p>
		测试输入框：<input type="text" id="testId" class="testClass" name="testName"
			style="width:300px" />
	</p>
	<p>1.通过 id属性 获取</p>
	<p style="color:blue">document.getElementById("testId").value="我是通过id获取到的";</p>
	<p>
		<input type="button" onclick="selectById()" value="通过id获取" />
	</p>
	<p>2.通过 name属性 获取</p>
	<p style="color:blue">document.getElementsByName("testName")[0].value="我是通过name获取到的";</p>
	<p style="text-indent:2em">注意：这里 getElementsByName 比 getElementById
		多了一个s，一定要注意区分。因为一个文档中的 name 属性可能不唯一（如 HTML 表单中的单选按钮通常具有相同的 name 属性），所有
		getElementsByName() 方法返回的是元素的数组，而不是一个元素。</p>
	<p>
		<input type="button" onclick="selectByName()" value="通过name获取" />
	</p>
	<p>3.通过 class属性 获取</p>
	<p style="color:blue">document.getElementsByName("testName")[0].value="我是通过name获取到的";</p>
	<p style="text-indent:2em">注意: Internet Explorer 8 及更早 IE 版本不支持
		getElementsByClassName() 方法。</p>
	<p>
		<input type="button" onclick="selectByClassName()" value="通过class获取" />
	</p>
	<p>4.通过 tag 标签名获取</p>
	<p style="color:blue">
		var x= document.getElementsByTagName("input");<br />
		x[0].value="我是通过tag获取到的，共有"+x.length+"个&lt;input&gt;标签";
	</p>
	<p>
		<input type="button" onclick="selectByTagName()" value="通过tag标签获取" />
	</p>
	<script type="text/javascript">
		function selectById() {
			document.getElementById("testId").value = "我是通过id获取到的";
		}
		function selectByName() {
			document.getElementsByName("testName")[0].value = "我是通过name获取到的";
		}
		function selectByClassName() {
			document.getElementsByClassName("testClass")[0].value = "我是通过class获取到的";
		}
		function selectByTagName() {
			var x = document.getElementsByTagName("input");
			x[0].value = "我是通过tag获取到的，一共有" + x.length + "个<input>标签";
		}
	</script>
</body>
</html>
