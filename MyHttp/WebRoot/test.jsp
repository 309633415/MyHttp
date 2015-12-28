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
   <h3>知识准备</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 
1．Struts2标签的作用<br/>
Struts2标签库提供了主题、模板支持，极大地简化了视图页面的编写，而且，struts2的主题、模板都提供了很好的扩展性。实现了更好的代码复用。Struts2允许在页面中使用自定义组件，这完全能满足项目中页面显示复杂，多变的需求。<br/>  
Struts2的标签库有一个巨大的改进之处，struts2标签库的标签不依赖于任何表现层技术，也就是说strtus2提供了大部分标签，可以在各种表现技术中使用。包括最常用的jsp页面，也可以说Velocity和FreeMarker等模板技术中的使用  。<br/>
2．Struts2标签分类<br/>
（1）UI标签：（User  Interface, 用户界面）标签，主要用于生成HTML元素标签，UI标签又可分为表单标签非表单标签  。<br/>
（2）非UI标签，主要用于数据访问，逻辑控制等的标签。非UI标签可分为流程控制标签（包括用于实现分支、循环等流程控制的标签）和数据访问标签（主要包括用户输出ValueStack中的值，完成国际化等功能的）。<br/>  
（3）ajax标签  。<br/>
3．Struts2标签使用前的准备<br/>
（1）在要使用标签的jsp页面引入标签库：<br/>
&lt;%@ taglib uri="/struts-tags" prefix="s"%&gt;<br/>
（2）在web.xml中声明要使用的标签    这里是struts2版本的引入方式 。<br/>
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
   <h3>资源准备</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar包下载地址：<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar包</a>
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>示例</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
   
   <p>本例子只是展示常用的一小部分标签，深入学习可自行百度</p>
   <p>1:编写Action的Code</p>
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
 * struts2标签实例
 */
public class TagAction extends ActionSupport implements Validateable  {

	private static final long serialVersionUID = -94044809860988047L;        
	String name;		//姓名
	Date birthday;	//生日
	String bio;			//传记
	String film;			//电影
	List&lt;String&gt; friends;		//朋友
	boolean legalAge;	//是否成年
	String region;	//地区
	String state;			//地区下的某个小地区
	File picture;		//照片
	String pictureContentType;	//照片类型
	String pictureFileName;		//照片名字
	String favouriteLanguage;		//喜欢的语言
	String favouriteVehicalType = "MotorcycleKey";		//喜欢的汽车种类
	String favouriteVehicalSpecific = "YamahaKey";		//喜欢汽车种类中的某个品牌的汽车

	List leftSideCartoonCharacters;
	List rightSideCartoonCharacters;

	List favouriteLanguages = new ArrayList();
	List vehicalTypeList = new ArrayList();
	Map vehicalSpecificMap = new HashMap();

	/**
	 * 构造函数添加下拉框选项 语言、地区、汽车
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

	//初始化时
	public String execute() throws Exception  {
		return "input";
	}

	//提交表单后
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
   <p>2:表单初始化页面tag.jsp</p>
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
				&lt;td&gt;&lt;b&gt;文本控件&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;s:textfield tooltip="请填写您的姓名" label="姓名" name="name" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;struts2日期标签&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;
					&lt;!--  注意 日期标签从Struts2.1.6开始 移动到SX标签里面了  因此 要在 &lt;head&gt;&lt;/head&gt;之间加上&lt;sx/head&gt;一项--&gt;
					&lt;sx:datetimepicker tooltip="请选择您的生日" label="生日" name="birthday" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;单选按钮&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:radio tooltip="是否成年" label="是否成年" name="legalAge" list="%{#{false:'未成年',true:'成年'}}" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;struts2文本域标签&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:textarea tooltip="请输入您的传记" label="传记" name="bio" cols="20" rows="3" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;下拉框&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:select tooltip="请选择电影" label="电影选择"
						list="{'变形金刚', '钢铁侠', '葫芦娃'}" name="film" emptyOption="true" /&gt; &lt;!--   emptyOption="true" 设置初始化的值为空 如果不设定此项 则为List的第一项--&gt;
					&lt;s:select tooltip="选择语言" label="语言(后台取值)" list="favouriteLanguages"
						name="favouriteLanguage" listKey="key" listValue="description"
						emptyOption="true" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;复选框&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:checkboxlist tooltip="请选择您的朋友" label="Friends"
						list="{'张三', '李四', '王五', '马六', '黄七'}" name="friends" /&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;二级联动下拉框&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:doubleselect tooltip="请选择你的地区" label="美国的州"
						name="region" list="{'North', 'South'}" value="'South'"
						doubleValue="'Florida'"
						doubleList="top == 'North' ? {'Oregon', 'Washington'} : {'Texas', 'Florida'}"
						doubleName="state" headerKey="-1"
						headerValue="---------- Please Select ----------"
						emptyOption="true" /&gt; &lt;s:doubleselect tooltip="请选择你的汽车"
						label="汽车" name="favouriteVehicalType" list="vehicalTypeList"
						listKey="key" listValue="description" value="'MotorcycleKey'"
						doubleValue="'YamahaKey'" doubleList="vehicalSpecificList"
						doubleListKey="key" doubleListValue="description"
						doubleName="favouriteVehicalSpecific" headerKey="-1"
						headerValue="---------- Please Select ----------"
						emptyOption="true" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;文件选择(参考"文件上传实例")&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:file tooltip="更新您的照片" label="文件" name="picture" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2"&gt;&lt;b&gt;移动选择框&lt;/b&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;&lt;s:optiontransferselect tooltip="请选择您最喜欢的卡通角色" label="选择角色"
						name="leftSideCartoonCharacters" leftTitle="左边" rightTitle="右边"
						list="{'Popeye', 'He-Man', 'Spiderman'}" multiple="true"
						headerKey="headerKey" headerValue="--- Please Select ---"
						emptyOption="true"
						doubleList="{'Superman', 'Mickey Mouse', 'Donald Duck'}"
						doubleName="rightSideCartoonCharacters"
						doubleHeaderKey="doubleHeaderKey"
						doubleHeaderValue="--- Please Select ---" doubleEmptyOption="true"
						doubleMultiple="true" addToLeftLabel="向左移动" addToRightLabel="向右移动"
						addAllToRightLabel="全部右移" addAllToLeftLabel="全部左移"
						leftDownLabel="下移" rightDownLabel="下移" leftUpLabel="上移"
						rightUpLabel="上移" /&gt;&lt;/td&gt;
			&lt;/tr&gt;
			&lt;s:submit value="提交" /&gt;
			&lt;!--    重置改Form内所有表单元素  恢复其默认值--&gt;
			&lt;s:reset value="重置" /&gt;
		&lt;/table&gt;
	&lt;/s:form&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>头文件中包含的 taglibs.jsp</p>
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
   <p>表单展示页面 showTag.jsp</p>
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
			&lt;td width="30%"&gt;姓名&lt;/td&gt;
			&lt;td width="70%"&gt;&lt;s:property value ="name" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;生日&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="birthday" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;是否成年&lt;/td&gt;
			&lt;td&gt;
						&lt;s:if test="%{legalAge==true}"&gt;成年&lt;/s:if&gt;
    					&lt;s:else&gt;未成年&lt;/s:else&gt;
			&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;传记&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="bio" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;电影&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="film" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;语言&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="favouriteLanguage" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;朋友&lt;/td&gt;
			&lt;td&gt;
				&lt;s:iterator value="friends" &gt;  
					    &lt;s:property /&gt;    
				&lt;/s:iterator&gt; 
			&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;居住地&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="region" /&gt;--&gt;&lt;s:property value ="state" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;爱车&lt;/td&gt;
			&lt;td&gt;&lt;s:property value ="favouriteVehicalType" /&gt;--&gt;&lt;s:property value ="favouriteVehicalSpecific" /&gt;&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;左边角色&lt;/td&gt;
			&lt;td&gt;&lt;s:iterator value="leftSideCartoonCharacters" &gt;  
					    &lt;s:property /&gt;    
				&lt;/s:iterator&gt; &lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;右边角色&lt;/td&gt;
			&lt;td&gt;&lt;s:iterator value="rightSideCartoonCharacters" &gt;  
					    &lt;s:property /&gt;    
				&lt;/s:iterator&gt; &lt;/td&gt;
		&lt;/tr&gt;
		&lt;/table&gt;
		&lt;br/&gt;
	&lt;a href="#" onclick="javascript:history.go(-1);return false;"&gt;返回&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
   </pre>
   <p>3:配置文件struts.xml中的配置</p>
     <pre  name="code" class="xml">
&lt;result name="strutsTagDemo" type="redirect"&gt;/tag/tag.action&lt;/result&gt;    
   </pre>
   <p>4:配置文件tag.xml中加上对应Action及拦截器</p>
   <pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
  &lt;package name="tag" extends="struts-default" namespace="/tag"&gt;
&lt;!--       注意Class的值加上包路径 如果 集成了Spring就不用了--&gt;
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
   <h3>文档</h3>

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