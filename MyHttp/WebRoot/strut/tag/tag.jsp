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
<tr><td>�ı��ؼ�</td></tr>
<tr><td><s:textfield  label="����" name="name" tooltip="Enter your Name here" /></td></tr>
<tr><td>struts2���ڱ�ǩ</td>  </tr>
<tr><td><!--  ע�� ���ڱ�ǩ��Struts2.1.6��ʼ �ƶ���SX��ǩ������  ��� Ҫ�� <head></head>֮�����<sx/head>һ��-->
  <sx:datetimepicker  tooltip="select you birthday"label="birthday" name="birthday"/><br/>
 </td></tr>
  <tr><td>struts2�ı����ǩ</td></tr>
  <tr>
  <td>
    <s:textarea  tooltip="Enter your Biography" label="Biograph" name="bio" cols="20" rows="3"/>
  </td>
  </tr>
  <tr>
  <td>
  ������
  </td>
  </tr>
<tr>
<td>
    <s:select   
            tooltip="��ѡ���Ӱ"
            label="��Ӱѡ��"
            list="{'AƬ', 'ëƬ', '��Ƭ'}"
            name="film"
            emptyOption="true"
/>
<!--     tooltipΪ��ʾ��Ϣ       emptyOption="true" ���ó�ʼ����ֵΪ�� ������趨���� ��ΪList�ĵ�һ��-->
    <s:select
            tooltip="ѡ������"
            label="ѡ������  ���Ӻ�̨ȡֵ��"
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
��ѡ��
</td></tr>
<tr>
<td><s:checkboxlist
            tooltip="ѡ���������"
            label="Friends"
            list="{'����', '����', '����', '����', '����'}"
            name="friends"/>
</td></tr>
<tr>
<td>��������������
</td>
            </tr>
            <tr>
            <td>
    <s:doubleselect
            tooltip="Choose Your State"
            label="��������"
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
            label="����"
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
<tr><td>�ļ�ѡ��</td></tr>
<tr><td><s:file tooltip="Upload Your Picture" label="�ļ�" name="picture" /></td>
</tr>
<tr><td>�ƶ�ѡ���</td></tr>
<tr><td><s:optiontransferselect
            tooltip="Select Your Favourite Cartoon Characters"
            label="ѡ���ɫ"
            name="leftSideCartoonCharacters" 
            leftTitle="���"
            rightTitle="�ұ�"
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
<!--    ���ø�Form�����б�Ԫ��  �ָ���Ĭ��ֵ-->
    <s:reset onclick="alert('bbbb');" />
      </table>
    
</s:form>
    
</body>
</html>
