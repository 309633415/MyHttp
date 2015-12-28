<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<s:head />
<sx:head />
<title>My JSP 'tag.jsp' starting page</title>
</head>
<body>

	<s:actionerror />
	<s:actionmessage />
	<s:fielderror />
	<s:form action="/tag/tagForm.action" method="post"
		enctype="multipart/form-data"
		tooltipConfig="# {'jsTooltipEnabled':'true'}"
		>
		
		<table>
			<tr>
				<td><b>文本控件</b></td>
			</tr>
			<tr>
				<td colspan="2"><s:textfield tooltip="请填写您的姓名" label="姓名" name="name"  />
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>struts2日期标签</b></td>
			</tr>
			<tr>
				<td>
					<!--  注意 日期标签从Struts2.1.6开始 移动到SX标签里面了  因此 要在 <head></head>之间加上<sx/head>一项-->
					<sx:datetimepicker tooltip="请选择您的生日" label="生日" name="birthday" />
					</td>
			</tr>
			<tr>
				<td colspan="2"><b>单选按钮</b></td>
			</tr>
			<tr>
				<td>
				<s:radio tooltip="是否成年"  label="是否成年"  name="legalAge"  list="%{#{false:'未成年',true:'成年'}}"/>
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>struts2文本域标签</b></td>
			</tr>
			<tr>
				<td><s:textarea tooltip="请输入您的传记" label="传记" name="bio" cols="20" rows="3" /></td>
			</tr>
			<tr>
				<td colspan="2"><b>下拉框</b></td>
			</tr>
			<tr>
				<td><s:select tooltip="请选择电影" label="电影选择" list="{'变形金刚', '钢铁侠', '葫芦娃'}" name="film" emptyOption="true" /> 
				<!--   emptyOption="true" 设置初始化的值为空 如果不设定此项 则为List的第一项-->
					<s:select tooltip="选择语言" label="语言(后台取值)" list="favouriteLanguages"  name="favouriteLanguage"  listKey="key"
						listValue="description" emptyOption="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><b>复选框</b></td>
			</tr>
			<tr>
				<td><s:checkboxlist tooltip="请选择您的朋友"  label="Friends" list="{'张三', '李四', '王五', '马六', '黄七'}" name="friends" /></td>
			</tr>
			<tr>
				<td colspan="2"><b>二级联动下拉框</b></td>
			</tr>
			<tr>
				<td><s:doubleselect tooltip="请选择你的地区" label="美国的州"
							name="region" list="{'North', 'South'}" value="'South'"
							doubleValue="'Florida'"
							doubleList="top == 'North' ? {'Oregon', 'Washington'} : {'Texas', 'Florida'}"
							doubleName="state" headerKey="-1"
							headerValue="---------- Please Select ----------"
							emptyOption="true" />
						<s:doubleselect tooltip="请选择你的汽车" label="汽车"
							name="favouriteVehicalType" list="vehicalTypeList" listKey="key"
							listValue="description" value="'MotorcycleKey'"
							doubleValue="'YamahaKey'" doubleList="vehicalSpecificList"
							doubleListKey="key" doubleListValue="description"
							doubleName="favouriteVehicalSpecific" headerKey="-1"
							headerValue="---------- Please Select ----------" emptyOption="true" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>文件选择(参考"文件上传实例")</b></td>
			</tr>
			<tr>
				<td><s:file tooltip="更新您的照片" label="文件" name="picture" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>移动选择框</b></td>
			</tr>
			<tr>
				<td><s:optiontransferselect tooltip="请选择您最喜欢的卡通角色"
						label="选择角色"
						name="leftSideCartoonCharacters" leftTitle="左边" rightTitle="右边"
						list="{'Popeye', 'He-Man', 'Spiderman'}" multiple="true"
						headerKey="headerKey" headerValue="--- Please Select ---"
						emptyOption="true"
						doubleList="{'Superman', 'Mickey Mouse', 'Donald Duck'}"
						doubleName="rightSideCartoonCharacters"
						doubleHeaderKey="doubleHeaderKey"
						doubleHeaderValue="--- Please Select ---" doubleEmptyOption="true"
						doubleMultiple="true" 
						addToLeftLabel="向左移动" addToRightLabel="向右移动"
						addAllToRightLabel="全部右移" addAllToLeftLabel="全部左移"
						leftDownLabel="下移" rightDownLabel="下移" leftUpLabel="上移" rightUpLabel="上移"
						/>
						</td>
			</tr>

			<s:submit value="提交"/>
			<!--    重置改Form内所有表单元素  恢复其默认值-->
			<s:reset value="重置" />
		</table>

	</s:form>

</body>
</html>
