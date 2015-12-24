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
1.客户端上传图片需要把文件上传表单的enctype属性设置为multipart/form-data。表单元素的enctype属性指定的是表单数据的编码方式，multipart/form-data编码方式的表单会以二进制流的方式来处理表单数据，这种编码方式会把文件域指定文件的内容也封装到请求参数里，因此常常会有中文乱码等问题。最后参数作为一个临时文件存放在tomcat服务器里面，你可以自己输出路径确认一下。<br/>
2.Struts2对上传和下载都提供了很好的实现机制。<br/>
Struts2并未提供自己的请求解析器，也就是就Struts2不会自己去处理multipart/form-data的请求，它需要调用其他请求解析器，将HTTP请求中的表单域解析出来。但Struts2在原有的上传解析器基础上做了进一步封装，更进一步简化了文件上传。<br/>
Struts2默认使用的是Jakarta的Common-FileUpload框架来上传文件，因此，要在web应用中增加两个Jar文 件：commons-fileupload-1.2.1.jar和commons-io-1.3.2.jar。它在原上传框架上做了进一步封装，简化了文件上传的代码实现，取消了不同上传框架上的编程差异。<br/>
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
<a href="http://download.csdn.net/detail/jiashubing/9375510" target="_blank">commons-fileupload-1.2.1.jar和commons-io-1.3.2.jar包</a>
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

   <p>1:编写Action的Code</p>
   <pre  name="code" class="java">
package demoinfo.struts2.fileupload;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {
	
    private static final long serialVersionUID = 572146812454l ;
    private static final int BUFFER_SIZE = 16 * 1024 ; //设置大小
   
    private File myFile;//注意，myFile并不是指前端jsp上传过来的文件本身，而是文件上传过来存放在临时文件夹下面的文件
	private String contentType; //文件类型
    private String fileName; //文件名称
    private String imageFileName;//新的文件名称
    private String caption;//文件描述
   
    public void setMyFileContentType(String contentType) {
        this.contentType=contentType;
   } 
   
    public void setMyFileFileName(String fileName) {
        this .fileName = fileName;
   } 
       
    public void setMyFile(File myFile) {
        this .myFile = myFile;
   } 
   
    public String getImageFileName() {
        return imageFileName;
   } 
   
    public String getCaption() {
        return caption;
   } 

    public void setCaption(String caption) {
        this .caption = caption;
   } 
    
    public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getContentType() {
		return contentType;
	} 
    private static void copy(File src, File dst) {  //文件复制的方法
        try {
           InputStream in = null ;
           OutputStream out = null ;
           System.out.println("************" + src.getPath());
            try {                
            	//输入输出流
               in = new BufferedInputStream( new FileInputStream(src), BUFFER_SIZE);
               out = new BufferedOutputStream( new FileOutputStream(dst), BUFFER_SIZE);
                byte [] buffer = new byte [BUFFER_SIZE];
                while (in.read(buffer) > 0 ) {
                   out.write(buffer);
               } 
           } finally {
                if ( null != in) {
                   in.close();
               } 
                if ( null != out) {
                   out.close();
               } 
           } 
       } catch (Exception e) {
           e.printStackTrace();
       } 
   } 
   
    private static String getExtention(String fileName) {   //获取文件类型
        int pos = fileName.lastIndexOf("."); //以.为文件名称和文件类型的分隔符
        return fileName.substring(pos); //字符串截取获得文件名
   } 

    public String execute()     {        
    	 //根据服务器的文件保存地址和原文件名创建目录文件的路径，我们这里图片的保存在tomcat中对应项目的image文件夹下
       imageFileName = new Date().getTime() + getExtention(fileName);  //组成新的文件名 时间+文件类型
       File imageFile = new File(ServletActionContext.getServletContext().getRealPath( "/image") + "/" + imageFileName); //在系统目录下生成新的文件   
       copy(myFile, imageFile); //文件流复制
       return SUCCESS;
   }

} 

   </pre>
   <p>2:上传文件页面 upload.jsp</p>
   <pre name="code" class="php">
&lt;%@ page language="java" contentType = "text/html; charset=utf-8" pageEncoding = "GBK" %&gt; 
&lt;%@ taglib prefix="s" uri="/struts-tags"%&gt;
&lt;! DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" &gt; 
&lt;html xmlns ="http://www.w3.org/1999/xhtml" &gt; 
&lt;head&gt; 
    &lt;title&gt; Struts 2 File Upload &lt;/title&gt; 
&lt;/head&gt; 
&lt;body&gt; 
&lt;s:fielderror&gt;&lt;/s:fielderror&gt;
&lt;!--在进行文件上传时，表单提交方式一定要是post的方式，因为文件上传时二进制文件可能会很大，
	还有就是enctype属性，这个属性一定要写成multipart/form-data，不然就会以二进制文本上传到服务器端--&gt; 
    &lt;s:form id="imgForm" action ="/fileupload/fileupload.action" method ="POST" enctype ="multipart/form-data" &gt; 
        &lt;s:file name ="myFile" label ="图片路径" /&gt; 
        &lt;s:textfield name ="caption" label ="图片描述"/&gt;        
    &lt;/s:form&gt; 
    &lt;input type="button" value="提交" onclick="checkForm()"/&gt;
	&lt;script type="text/JavaScript"&gt;
			function checkForm() {
				if (imgForm.myFile.value == "") {
					alert("您必须选择一张图片");
					return false;
				} else
					imgForm.submit();
			}
		&lt;/script&gt;
&lt;/body&gt; 
&lt;/html&gt; 

   </pre>
   <p>上传文件成功后的显示页面 ShowFile.jsp</p>
   <pre name="code" class="php">
&lt;%@ page language="java" contentType = "text/html;charset=UTF-8" pageEncoding = "GBK"%&gt; 
&lt;%@ taglib prefix="s" uri="/struts-tags"%&gt;
&lt;! DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" &gt; 
&lt;html xmlns ="http://www.w3.org/1999/xhtml"&gt; 
&lt;head&gt; 
    &lt;title&gt; Struts 2 File Upload &lt;/title&gt; 
&lt;/head&gt; 
&lt;body &gt; 
    &lt;div style ="padding: 3px; border: solid 1px #cccccc; text-align: center" &gt; 
           &lt;img src ='../image/&lt;s:property value ="imageFileName" /&gt;'/&gt;
        &lt;br/&gt; 
        &lt;s:property value ="caption" /&gt; 
    &lt;/div&gt; 
    &lt;a href="#" onclick="javascript:history.go(-1);return false;"&gt;返回&lt;/a&gt;
&lt;/body&gt; 
&lt;/html&gt; 

   </pre>
   <p>3:配置文件struts.xml中的配置</p>
     <pre  name="code" class="xml">
&lt;!-- Add packages here   用include包含子xml文件  指定文件的相对路径就可以了--&gt;
&lt;!--文件上传Action的xml文件--&gt;
&lt;include file="/demoinfo/struts2/fileupload/fileupload.xml"&gt;&lt;/include&gt;

   </pre>
   <p>4:配置文件fileupload.xml中加上对应Action及拦截器</p>
   <pre name="code" class="xml">
&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd"&gt;

&lt;struts&gt;
  &lt;package name="fileupload" extends="struts-default" namespace="/fileupload"&gt;
    &lt;action name ="fileupload" class ="demoinfo.struts2.fileupload.FileUploadAction"&gt; 
        &lt;interceptor-ref name ="fileUploadStack"/&gt; 
        &lt;interceptor-ref name ="fileUpload"&gt; 
		&lt;!--  设置允许上传的文件类型，过滤文件--&gt;
            &lt;param name ="allowedTypes"&gt; 
                image/bmp,image/png,image/gif,image/jpeg,image/jpg
             &lt;/param &gt; 
         &lt;/interceptor-ref &gt; 
         &lt;!--  默认拦截器必须放在fileUpload之后，否则无效 --&gt;
         &lt;interceptor-ref name ="defaultStack" /&gt;            
         &lt;!--  相应的返回页面 --&gt;
         &lt;result name ="input" &gt;/strut/fileupload/upload.jsp&lt;/result &gt;              
         &lt;result name ="success" &gt;/strut/fileupload/ShowFile.jsp&lt;/result &gt; 
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