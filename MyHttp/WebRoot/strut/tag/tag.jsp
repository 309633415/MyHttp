<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <sx:head/>
    <title>My JSP 'tag.jsp' starting page</title>
    
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

<s:actionerror/>
<s:actionmessage/>
<s:fielderror />

<s:form action="exampleSubmit" method="post" enctype="multipart/form-data" tooltipConfig="#{'jsTooltipEnabled':'true'}">
<table>
<tr><td>文本控件</td></tr>
<tr><td><s:textfield  label="姓名" name="name" tooltip="Enter your Name here" /></td></tr>
<tr><td>struts2日期标签</td>  </tr>
<tr><td><!--  注意 日期标签从Struts2.1.6开始 移动到SX标签里面了  因此 要在 <head></head>之间加上<sx/head>一项-->
  <sx:datetimepicker  tooltip="select you birthday"label="birthday" name="birthday"/><br/>
 </td></tr>
  <tr><td>struts2文本域标签</td></tr>
  <tr>
  <td>
    <s:textarea  tooltip="Enter your Biography" label="Biograph" name="bio" cols="20" rows="3"/>
  </td>
  </tr>
  <tr>
  <td>
  下拉框
  </td>
  </tr>
<tr>
<td>
    <s:select   
            tooltip="请选择电影"
            label="电影选择"
            list="{'A片', '毛片', '黄片'}"
            name="film"
            emptyOption="true"
/>
<!--     tooltip为提示信息       emptyOption="true" 设置初始化的值为空 如果不设定此项 则为List的第一项-->
    <s:select
            tooltip="选择语言"
            label="选择语言  （从后台取值）"
            list="favouriteLanguages"
            name="favouriteLanguage"
            listKey="key"
            listValue="description"
            emptyOption="true"
            />
</td>
</tr>
<tr>
<td>
复选框
</td></tr>
<tr>
<td><s:checkboxlist
            tooltip="选择你的朋友"
            label="Friends"
            list="{'张三', '李四', '王五', '马六', '黄七'}"
            name="friends"/>
</td></tr>
<tr>
<td>二级联动下拉框
</td>
            </tr>
            <tr>
            <td>
    <s:doubleselect
            tooltip="Choose Your State"
            label="美国的州"
            name="region" list="{'North', 'South'}"
            value="'South'"
            doubleValue="'Florida'"
            doubleList="top == 'North' ? {'Oregon', 'Washington'} : {'Texas', 'Florida'}" 
            doubleName="state"
            headerKey="-1"
            headerValue="---------- Please Select ----------"
            emptyOption="true" />
            </td>
            </tr>
    <s:doubleselect
            tooltip="Choose your Vehical"
            label="汽车"
            name="favouriteVehicalType"
            list="vehicalTypeList"
            listKey="key"
            listValue="description"
            value="'MotorcycleKey'"
            doubleValue="'YamahaKey'"
            doubleList="vehicalSpecificList"
            doubleListKey="key"
            doubleListValue="description"
            doubleName="favouriteVehicalSpecific" headerKey="-1"
            headerValue="---------- Please Select ----------"
            emptyOption="true" />
<tr><td>文件选择</td></tr>
<tr><td><s:file tooltip="Upload Your Picture" label="文件" name="picture" /></td>
</tr>
<tr><td>移动选择框</td></tr>
<tr><td><s:optiontransferselect
            tooltip="Select Your Favourite Cartoon Characters"
            label="选择角色"
            name="leftSideCartoonCharacters" 
            leftTitle="左边"
            rightTitle="右边"
            list="{'Popeye', 'He-Man', 'Spiderman'}" 
            multiple="true"
            headerKey="headerKey"
            headerValue="--- Please Select ---"
            emptyOption="true"
            doubleList="{'Superman', 'Mickey Mouse', 'Donald Duck'}" 
            doubleName="rightSideCartoonCharacters"
            doubleHeaderKey="doubleHeaderKey"
            doubleHeaderValue="--- Please Select ---" 
            doubleEmptyOption="true"
            doubleMultiple="true" />
    
</td></tr>

    <s:submit onclick="alert('aaaa');" />
<!--    重置改Form内所有表单元素  恢复其默认值-->
    <s:reset onclick="alert('bbbb');" />
      </table>
    
</s:form>
    
</body>
</html>
