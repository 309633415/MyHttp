<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	response.setHeader("Pragma","no-cache");     
	response.setHeader("Cache-Control","no-cache");    
	response.setDateHeader("Expires",0);
	request.setCharacterEncoding("GBK");
%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/circle.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/SyntaxHighlighter.css">
	
<style type="text/css">
body{
background-color:lightcyan;
}
h3{
color:white;
background: cadetblue;
}
</style>
  </head>
  <body>
   <h3>֪ʶ׼��</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 
1��Struts2��ǩ������<br/>
Struts2��ǩ���ṩ�����⡢ģ��֧�֣�����ؼ�����ͼҳ��ı�д�����ң�struts2�����⡢ģ�嶼�ṩ�˺ܺõ���չ�ԡ�ʵ���˸��õĴ��븴�á�Struts2������ҳ����ʹ���Զ������������ȫ��������Ŀ��ҳ����ʾ���ӣ���������<br/>  
Struts2�ı�ǩ����һ���޴�ĸĽ�֮����struts2��ǩ��ı�ǩ���������κα��ֲ㼼����Ҳ����˵strtus2�ṩ�˴󲿷ֱ�ǩ�������ڸ��ֱ��ּ�����ʹ�á�������õ�jspҳ�棬Ҳ����˵Velocity��FreeMarker��ģ�弼���е�ʹ��  ��<br/>
2��Struts2��ǩ����<br/>
��1��UI��ǩ����User  Interface, �û����棩��ǩ����Ҫ��������HTMLԪ�ر�ǩ��UI��ǩ�ֿɷ�Ϊ����ǩ�Ǳ���ǩ  ��<br/>
��2����UI��ǩ����Ҫ�������ݷ��ʣ��߼����Ƶȵı�ǩ����UI��ǩ�ɷ�Ϊ���̿��Ʊ�ǩ����������ʵ�ַ�֧��ѭ�������̿��Ƶı�ǩ�������ݷ��ʱ�ǩ����Ҫ�����û����ValueStack�е�ֵ����ɹ��ʻ��ȹ��ܵģ���<br/>  
��3��ajax��ǩ  ��<br/>
3��Struts2��ǩʹ��ǰ��׼��<br/>
��1����Ҫʹ�ñ�ǩ��jspҳ�������ǩ�⣺<br/>
&lt;%@ taglib uri="/struts-tags" prefix="s"%&gt;<br/>
��2����web.xml������Ҫʹ�õı�ǩ    ������struts2�汾�����뷽ʽ ��<br/>
	&lt;filter&gt;  
        &lt;filter-name&gt;struts2&lt;/filter-name&gt;  
                         &lt;filter-class&gt;org.apache.struts2.dispatcher.FilterDispatcher&lt;/filter-class&gt;  
    &lt;/filter&gt;  
	</span> 
		<span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
</div> 
   <h3>��Դ׼��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar�����ص�ַ��<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar��</a>
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>ʾ��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
   
   <p>������ֻ��չʾ���õ�һС���ֱ�ǩ������ѧϰ�����аٶ�</p>
   <p>1:��дAction��Code</p>
   <pre  name="code" class="java">
package demoinfo.struts2.tag;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Validateable;
import com.opensymphony.xwork2.ognl.OgnlValueStack;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.File;

/**
 * struts2��ǩʵ��
 */
public class TagAction extends ActionSupport implements Validateable  {

	private static final long serialVersionUID = -94044809860988047L;        
	String name;		//����
	Date birthday;	//����
	String bio;			//����
	String film;			//��Ӱ
	List&lt;String&gt; friends;		//����
	boolean legalAge;	//�Ƿ����
	String region;	//����
	String state;			//�����µ�ĳ��С����
	File picture;		//��Ƭ
	String pictureContentType;	//��Ƭ����
	String pictureFileName;		//��Ƭ����
	String favouriteLanguage;		//ϲ��������
	String favouriteVehicalType = "MotorcycleKey";		//ϲ������������
	String favouriteVehicalSpecific = "YamahaKey";		//ϲ�����������е�ĳ��Ʒ�Ƶ�����

	List leftSideCartoonCharacters;
	List rightSideCartoonCharacters;

	List favouriteLanguages = new ArrayList();
	List vehicalTypeList = new ArrayList();
	Map vehicalSpecificMap = new HashMap();

	/**
	 * ���캯�����������ѡ�� ���ԡ�����������
	 */
	public TagAction()  {
		favouriteLanguages.add(new Language("EnglishKey", "English Language"));
		favouriteLanguages.add(new Language("FrenchKey", "French Language"));
		favouriteLanguages.add(new Language("SpanishKey", "Spanish Language"));

		VehicalType car = new VehicalType("CarKey", "Car");
		VehicalType motorcycle = new VehicalType("MotorcycleKey", "Motorcycle");
		vehicalTypeList.add(car);
		vehicalTypeList.add(motorcycle);

		List cars = new ArrayList();
		cars.add(new VehicalSpecific("MercedesKey", "Mercedes"));
		cars.add(new VehicalSpecific("HondaKey", "Honda"));
		cars.add(new VehicalSpecific("FordKey", "Ford"));

		List motorcycles = new ArrayList();
		motorcycles.add(new VehicalSpecific("SuzukiKey", "Suzuki"));
		motorcycles.add(new VehicalSpecific("YamahaKey", "Yamaha"));

		vehicalSpecificMap.put(car, cars);
		vehicalSpecificMap.put(motorcycle, motorcycles);
	}   



	public List getVehicalSpecificList()  {
		OgnlValueStack stack = (OgnlValueStack) ServletActionContext.getValueStack(ServletActionContext.getRequest());
		Object vehicalType = stack.findValue("top");
		if (vehicalType != null && vehicalType instanceof VehicalType)  {
			List l = (List) vehicalSpecificMap.get(vehicalType);
			return l;
		}
		return Collections.EMPTY_LIST;
	}

	//��ʼ��ʱ
	public String execute() throws Exception  {
		return "input";
	}

	//�ύ����
	public String doSubmit()  {
		return SUCCESS;
	}       

	// === inner class 
	public static class Language  {
		String description;
		String key;

		public Language(String key, String description)  {
			this.key = key;
			this.description = description;
		}

		public String getKey()  { 
			return key; 
		}
		public String getDescription()  { 
			return description; 
		}
	}    

	public static class VehicalType  {
		String key;
		String description;
		public VehicalType(String key, String description)  {
			this.key = key;
			this.description = description;
		}

		public String getKey()  { return this.key; }
		public String getDescription()  { return this.description; }

		public boolean equals(Object obj)  {
			if (! (obj instanceof VehicalType))  { 
				return false;
			}
			else  {
				return key.equals(((VehicalType)obj).getKey());
			}
		}

		public int hashCode()  {
			return key.hashCode();
		}
	}    

	public static class VehicalSpecific  {
		String key; 
		String description;
		public VehicalSpecific(String key, String description)  {
			this.key = key;
			this.description = description;
		}

		public String getKey()  { return this.key; }
		public String getDescription()  { return this.description; }

		public boolean equals(Object obj)  {
			if (! (obj instanceof VehicalSpecific))  {
				return false;
			}
			else  {
				return key.equals(((VehicalSpecific)obj).getKey());
			}
		}

		public int hashCode()  {
			return key.hashCode();
		}
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public String getFilm() {
		return film;
	}

	public void setFilm(String film) {
		this.film = film;
	}

	public List&lt;String&gt; getFriends() {
		return friends;
	}

	public void setFriends(List&lt;String&gt; friends) {
		this.friends = friends;
	}

	public boolean isLegalAge() {
		return legalAge;
	}

	public void setLegalAge(boolean legalAge) {
		this.legalAge = legalAge;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public File getPicture() {
		return picture;
	}

	public void setPicture(File picture) {
		this.picture = picture;
	}

	public String getPictureContentType() {
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

	public String getPictureFileName() {
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

	public String getFavouriteLanguage() {
		return favouriteLanguage;
	}

	public void setFavouriteLanguage(String favouriteLanguage) {
		this.favouriteLanguage = favouriteLanguage;
	}

	public String getFavouriteVehicalType() {
		return favouriteVehicalType;
	}

	public void setFavouriteVehicalType(String favouriteVehicalType) {
		this.favouriteVehicalType = favouriteVehicalType;
	}

	public String getFavouriteVehicalSpecific() {
		return favouriteVehicalSpecific;
	}

	public void setFavouriteVehicalSpecific(String favouriteVehicalSpecific) {
		this.favouriteVehicalSpecific = favouriteVehicalSpecific;
	}

	public List getLeftSideCartoonCharacters() {
		return leftSideCartoonCharacters;
	}

	public void setLeftSideCartoonCharacters(List leftSideCartoonCharacters) {
		this.leftSideCartoonCharacters = leftSideCartoonCharacters;
	}

	public List getRightSideCartoonCharacters() {
		return rightSideCartoonCharacters;
	}

	public void setRightSideCartoonCharacters(List rightSideCartoonCharacters) {
		this.rightSideCartoonCharacters = rightSideCartoonCharacters;
	}

	public List getFavouriteLanguages() {
		return favouriteLanguages;
	}

	public void setFavouriteLanguages(List favouriteLanguages) {
		this.favouriteLanguages = favouriteLanguages;
	}

	public List getVehicalTypeList() {
		return vehicalTypeList;
	}

	public void setVehicalTypeList(List vehicalTypeList) {
		this.vehicalTypeList = vehicalTypeList;
	}

	public Map getVehicalSpecificMap() {
		return vehicalSpecificMap;
	}

	public void setVehicalSpecificMap(Map vehicalSpecificMap) {
		this.vehicalSpecificMap = vehicalSpecificMap;
	}
	
}
   </pre>
   <p>2:����ʼ��ҳ��tag.jsp</p>
<pre name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;%@ include file="/common/taglibs.jsp"%&gt;
&lt;%@ taglib uri="/struts-tags" prefix="s"%&gt;
&lt;%@ taglib prefix="sx" uri="/struts-dojo-tags"%&gt;

&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;base href="&lt;%=basePath%&gt;"&gt;
&lt;s:head /&gt;
&lt;sx:head /&gt;
&lt;title&gt;My JSP 'tag.jsp' starting page&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

	&lt;s:actionerror /&gt;
	&lt;s:actionmessage /&gt;
	&lt;s:fielderror /&gt;
	&lt;s:form action="/tag/tagForm.action" method="post"
		enctype="multipart/form-data"
		tooltipConfig="# {'jsTooltipEnabled':'true'}"&gt;

		&lt;table&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;b&gt;�ı��ؼ�&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;s:textfield tooltip="����д��������" label="����" name="name" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;struts2���ڱ�ǩ&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;
					&lt;!--  ע�� ���ڱ�ǩ��Struts2.1.6��ʼ �ƶ���SX��ǩ������  ��� Ҫ�� &lt;head&gt;&lt;/head&gt;֮�����&lt;sx/head&gt;һ��--&gt;
					&lt;sx:datetimepicker tooltip="��ѡ����������" label="����" name="birthday" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;��ѡ��ť&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:radio tooltip="�Ƿ����" label="�Ƿ����" name="legalAge" list="%{#{false:'δ����',true:'����'}}" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;struts2�ı����ǩ&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:textarea tooltip="���������Ĵ���" label="����" name="bio" cols="20" rows="3" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;������&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:select tooltip="��ѡ���Ӱ" label="��Ӱѡ��"
						list="{'���ν��', '������', '��«��'}" name="film" emptyOption="true" /&gt; &lt;!--   emptyOption="true" ���ó�ʼ����ֵΪ�� ������趨���� ��ΪList�ĵ�һ��--&gt;
					&lt;s:select tooltip="ѡ������" label="����(��̨ȡֵ)" list="favouriteLanguages"
						name="favouriteLanguage" listKey="key" listValue="description"
						emptyOption="true" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;��ѡ��&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:checkboxlist tooltip="��ѡ����������" label="Friends"
						list="{'����', '����', '����', '����', '����'}" name="friends" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;��������������&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:doubleselect tooltip="��ѡ����ĵ���" label="��������"
						name="region" list="{'North', 'South'}" value="'South'"
						doubleValue="'Florida'"
						doubleList="top == 'North' ? {'Oregon', 'Washington'} : {'Texas', 'Florida'}"
						doubleName="state" headerKey="-1"
						headerValue="---------- Please Select ----------"
						emptyOption="true" /&gt; &lt;s:doubleselect tooltip="��ѡ���������"
						label="����" name="favouriteVehicalType" list="vehicalTypeList"
						listKey="key" listValue="description" value="'MotorcycleKey'"
						doubleValue="'YamahaKey'" doubleList="vehicalSpecificList"
						doubleListKey="key" doubleListValue="description"
						doubleName="favouriteVehicalSpecific" headerKey="-1"
						headerValue="---------- Please Select ----------"
						emptyOption="true" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;�ļ�ѡ��(�ο�"�ļ��ϴ�ʵ��")&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:file tooltip="����������Ƭ" label="�ļ�" name="picture" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;�ƶ�ѡ���&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:optiontransferselect tooltip="��ѡ������ϲ���Ŀ�ͨ��ɫ" label="ѡ���ɫ"
						name="leftSideCartoonCharacters" leftTitle="���" rightTitle="�ұ�"
						list="{'Popeye', 'He-Man', 'Spiderman'}" multiple="true"
						headerKey="headerKey" headerValue="--- Please Select ---"
						emptyOption="true"
						doubleList="{'Superman', 'Mickey Mouse', 'Donald Duck'}"
						doubleName="rightSideCartoonCharacters"
						doubleHeaderKey="doubleHeaderKey"
						doubleHeaderValue="--- Please Select ---" doubleEmptyOption="true"
						doubleMultiple="true" addToLeftLabel="�����ƶ�" addToRightLabel="�����ƶ�"
						addAllToRightLabel="ȫ������" addAllToLeftLabel="ȫ������"
						leftDownLabel="����" rightDownLabel="����" leftUpLabel="����"
						rightUpLabel="����" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;s:submit value="�ύ" /&gt;
			&lt;!--    ���ø�Form�����б�Ԫ��  �ָ���Ĭ��ֵ--&gt;
			&lt;s:reset value="����" /&gt;
		&lt;/table&gt;
	&lt;/s:form&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>ͷ�ļ��а����� taglibs.jsp</p>
   <pre name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%&gt;
&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%&gt;
&lt;%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%&gt;
&lt;%@ taglib uri="/struts-tags" prefix="s"%&gt;
&lt;%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setHeader("Pragma","no-cache");     
response.setHeader("Cache-Control","no-cache");    
response.setDateHeader("Expires",0);
request.setCharacterEncoding("GBK"); 
%&gt;
&lt;meta http-equiv="Content-Type" content="text/html; charset=gbk" /&gt;
   </pre>
   <p>��չʾҳ�� showTag.jsp</p>
   <pre name="code" class="php">
&lt;%@ page language="java" import="java.util.*" pageEncoding="GBK"%&gt;
&lt;%@ include file="/common/taglibs.jsp"%&gt;
&lt;%@ taglib uri="/struts-tags" prefix="s"%&gt;
&lt;%@ taglib prefix="sx" uri="/struts-dojo-tags"%&gt;

&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;s:head /&gt;
&lt;sx:head /&gt;
&lt;base href="&lt;%=basePath%&gt;"&gt;
&lt;title&gt;My JSP 'showTag.jsp' starting page&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
	&lt;table border="1" cellspacing="0" width="100%"&gt;
		&lt;tr&gt;
			&lt;td width="30%"&gt;����&lt;/td&gt;
			&lt;td width="70%"&gt;&lt;s:property value ="name" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;����&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="birthday" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;�Ƿ����&lt;/td&gt;
			&lt;td&gt;
						&lt;s:if test="%{legalAge==true}"&gt;����&lt;/s:if&gt;
    					&lt;s:else&gt;δ����&lt;/s:else&gt;
			&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;����&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="bio" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;��Ӱ&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="film" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;����&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="favouriteLanguage" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;����&lt;/td&gt;
			&lt;td&gt;
				&lt;s:iterator value="friends" &gt;  
					    &lt;s:property /&gt;    
				&lt;/s:iterator&gt; 
			&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;��ס��&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="region" /&gt;--&gt;&lt;s:property value ="state" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;����&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="favouriteVehicalType" /&gt;--&gt;&lt;s:property value ="favouriteVehicalSpecific" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;��߽�ɫ&lt;/td&gt;
			&lt;td&gt;&lt;s:iterator value="leftSideCartoonCharacters" &gt;  
					    &lt;s:property /&gt;    
				&lt;/s:iterator&gt; &lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;�ұ߽�ɫ&lt;/td&gt;
			&lt;td&gt;&lt;s:iterator value="rightSideCartoonCharacters" &gt;  
					    &lt;s:property /&gt;    
				&lt;/s:iterator&gt; &lt;/td&gt;
		&lt;/tr&gt;
		&lt;/table&gt;
		&lt;br/&gt;
	&lt;a href="#" onclick="javascript:history.go(-1);return false;"&gt;����&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>3:�����ļ�struts.xml�е�����</p>
     <pre  name="code" class="xml">
&lt;result name="strutsTagDemo" type="redirect"&gt;/tag/tag.action&lt;/result&gt;    
   </pre>
   <p>4:�����ļ�tag.xml�м��϶�ӦAction��������</p>
   <pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
  &lt;package name="tag" extends="struts-default" namespace="/tag"&gt;
&lt;!--       ע��Class��ֵ���ϰ�·�� ��� ������Spring�Ͳ�����--&gt;
    &lt;action name ="tag" class ="demoinfo.struts2.tag.TagAction"&gt; 
        &lt;result name="input"&gt;/strut/tag/tag.jsp&lt;/result&gt;
     &lt;/action&gt; 
    &lt;action name ="tagForm" class ="demoinfo.struts2.tag.TagAction" method="doSubmit"&gt; 
        &lt;result name="success"&gt;/strut/tag/showTag.jsp&lt;/result&gt;
     &lt;/action&gt; 
  &lt;/package&gt;
&lt;/struts&gt;
   </pre>
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>�ĵ�</h3>

<script language="javascript" src="<%=basePath%>/js/shCore.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCSharp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPhp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJScript.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJava.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushVb.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushSql.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushXml.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushDelphi.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPython.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushRuby.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCss.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCpp.js"></script> 
<script language="javascript"> 
dp.SyntaxHighlighter.HighlightAll('code'); 
</script> 
  </body>
</html>