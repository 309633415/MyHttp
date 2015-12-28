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
				<td><b>�ı��ؼ�</b></td>
			</tr>
			<tr>
				<td colspan="2"><s:textfield tooltip="����д��������" label="����" name="name"  />
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>struts2���ڱ�ǩ</b></td>
			</tr>
			<tr>
				<td>
					<!--  ע�� ���ڱ�ǩ��Struts2.1.6��ʼ �ƶ���SX��ǩ������  ��� Ҫ�� <head></head>֮�����<sx/head>һ��-->
					<sx:datetimepicker tooltip="��ѡ����������" label="����" name="birthday" />
					</td>
			</tr>
			<tr>
				<td colspan="2"><b>��ѡ��ť</b></td>
			</tr>
			<tr>
				<td>
				<s:radio tooltip="�Ƿ����"  label="�Ƿ����"  name="legalAge"  list="%{#{false:'δ����',true:'����'}}"/>
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>struts2�ı����ǩ</b></td>
			</tr>
			<tr>
				<td><s:textarea tooltip="���������Ĵ���" label="����" name="bio" cols="20" rows="3" /></td>
			</tr>
			<tr>
				<td colspan="2"><b>������</b></td>
			</tr>
			<tr>
				<td><s:select tooltip="��ѡ���Ӱ" label="��Ӱѡ��" list="{'���ν��', '������', '��«��'}" name="film" emptyOption="true" /> 
				<!--   emptyOption="true" ���ó�ʼ����ֵΪ�� ������趨���� ��ΪList�ĵ�һ��-->
					<s:select tooltip="ѡ������" label="����(��̨ȡֵ)" list="favouriteLanguages"  name="favouriteLanguage"  listKey="key"
						listValue="description" emptyOption="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><b>��ѡ��</b></td>
			</tr>
			<tr>
				<td><s:checkboxlist tooltip="��ѡ����������"  label="Friends" list="{'����', '����', '����', '����', '����'}" name="friends" /></td>
			</tr>
			<tr>
				<td colspan="2"><b>��������������</b></td>
			</tr>
			<tr>
				<td><s:doubleselect tooltip="��ѡ����ĵ���" label="��������"
							name="region" list="{'North', 'South'}" value="'South'"
							doubleValue="'Florida'"
							doubleList="top == 'North' ? {'Oregon', 'Washington'} : {'Texas', 'Florida'}"
							doubleName="state" headerKey="-1"
							headerValue="---------- Please Select ----------"
							emptyOption="true" />
						<s:doubleselect tooltip="��ѡ���������" label="����"
							name="favouriteVehicalType" list="vehicalTypeList" listKey="key"
							listValue="description" value="'MotorcycleKey'"
							doubleValue="'YamahaKey'" doubleList="vehicalSpecificList"
							doubleListKey="key" doubleListValue="description"
							doubleName="favouriteVehicalSpecific" headerKey="-1"
							headerValue="---------- Please Select ----------" emptyOption="true" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>�ļ�ѡ��(�ο�"�ļ��ϴ�ʵ��")</b></td>
			</tr>
			<tr>
				<td><s:file tooltip="����������Ƭ" label="�ļ�" name="picture" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><b>�ƶ�ѡ���</b></td>
			</tr>
			<tr>
				<td><s:optiontransferselect tooltip="��ѡ������ϲ���Ŀ�ͨ��ɫ"
						label="ѡ���ɫ"
						name="leftSideCartoonCharacters" leftTitle="���" rightTitle="�ұ�"
						list="{'Popeye', 'He-Man', 'Spiderman'}" multiple="true"
						headerKey="headerKey" headerValue="--- Please Select ---"
						emptyOption="true"
						doubleList="{'Superman', 'Mickey Mouse', 'Donald Duck'}"
						doubleName="rightSideCartoonCharacters"
						doubleHeaderKey="doubleHeaderKey"
						doubleHeaderValue="--- Please Select ---" doubleEmptyOption="true"
						doubleMultiple="true" 
						addToLeftLabel="�����ƶ�" addToRightLabel="�����ƶ�"
						addAllToRightLabel="ȫ������" addAllToLeftLabel="ȫ������"
						leftDownLabel="����" rightDownLabel="����" leftUpLabel="����" rightUpLabel="����"
						/>
						</td>
			</tr>

			<s:submit value="�ύ"/>
			<!--    ���ø�Form�����б�Ԫ��  �ָ���Ĭ��ֵ-->
			<s:reset value="����" />
		</table>

	</s:form>

</body>
</html>
