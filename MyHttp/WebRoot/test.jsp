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
1.�ͻ����ϴ�ͼƬ��Ҫ���ļ��ϴ�����enctype��������Ϊmultipart/form-data����Ԫ�ص�enctype����ָ�����Ǳ����ݵı��뷽ʽ��multipart/form-data���뷽ʽ�ı����Զ��������ķ�ʽ����������ݣ����ֱ��뷽ʽ����ļ���ָ���ļ�������Ҳ��װ������������˳�������������������⡣��������Ϊһ����ʱ�ļ������tomcat���������棬������Լ����·��ȷ��һ�¡�<br/>
2.Struts2���ϴ������ض��ṩ�˺ܺõ�ʵ�ֻ��ơ�<br/>
Struts2��δ�ṩ�Լ��������������Ҳ���Ǿ�Struts2�����Լ�ȥ����multipart/form-data����������Ҫ���������������������HTTP�����еı��������������Struts2��ԭ�е��ϴ����������������˽�һ����װ������һ�������ļ��ϴ���<br/>
Struts2Ĭ��ʹ�õ���Jakarta��Common-FileUpload������ϴ��ļ�����ˣ�Ҫ��webӦ������������Jar�� ����commons-fileupload-1.2.1.jar��commons-io-1.3.2.jar������ԭ�ϴ���������˽�һ����װ�������ļ��ϴ��Ĵ���ʵ�֣�ȡ���˲�ͬ�ϴ�����ϵı�̲��졣<br/>
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
<a href="http://download.csdn.net/detail/jiashubing/9375510" target="_blank">commons-fileupload-1.2.1.jar��commons-io-1.3.2.jar��</a>
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

   <p>1:��дAction��Code</p>
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
    private static final int BUFFER_SIZE = 16 * 1024 ; //���ô�С
   
    private File myFile;//ע�⣬myFile������ָǰ��jsp�ϴ��������ļ����������ļ��ϴ������������ʱ�ļ���������ļ�
	private String contentType; //�ļ�����
    private String fileName; //�ļ�����
    private String imageFileName;//�µ��ļ�����
    private String caption;//�ļ�����
   
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
    private static void copy(File src, File dst) {  //�ļ����Ƶķ���
        try {
           InputStream in = null ;
           OutputStream out = null ;
           System.out.println("************" + src.getPath());
            try {                
            	//���������
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
   
    private static String getExtention(String fileName) {   //��ȡ�ļ�����
        int pos = fileName.lastIndexOf("."); //��.Ϊ�ļ����ƺ��ļ����͵ķָ���
        return fileName.substring(pos); //�ַ�����ȡ����ļ���
   } 

    public String execute()     {        
    	 //���ݷ��������ļ������ַ��ԭ�ļ�������Ŀ¼�ļ���·������������ͼƬ�ı�����tomcat�ж�Ӧ��Ŀ��image�ļ�����
       imageFileName = new Date().getTime() + getExtention(fileName);  //����µ��ļ��� ʱ��+�ļ�����
       File imageFile = new File(ServletActionContext.getServletContext().getRealPath( "/image") + "/" + imageFileName); //��ϵͳĿ¼�������µ��ļ�   
       copy(myFile, imageFile); //�ļ�������
       return SUCCESS;
   }

} 

   </pre>
   <p>2:�ϴ��ļ�ҳ�� upload.jsp</p>
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
&lt;!--�ڽ����ļ��ϴ�ʱ�����ύ��ʽһ��Ҫ��post�ķ�ʽ����Ϊ�ļ��ϴ�ʱ�������ļ����ܻ�ܴ�
	���о���enctype���ԣ��������һ��Ҫд��multipart/form-data����Ȼ�ͻ��Զ������ı��ϴ�����������--&gt; 
    &lt;s:form id="imgForm" action ="/fileupload/fileupload.action" method ="POST" enctype ="multipart/form-data" &gt; 
        &lt;s:file name ="myFile" label ="ͼƬ·��" /&gt; 
        &lt;s:textfield name ="caption" label ="ͼƬ����"/&gt;        
    &lt;/s:form&gt; 
    &lt;input type="button" value="�ύ" onclick="checkForm()"/&gt;
	&lt;script type="text/JavaScript"&gt;
			function checkForm() {
				if (imgForm.myFile.value == "") {
					alert("������ѡ��һ��ͼƬ");
					return false;
				} else
					imgForm.submit();
			}
		&lt;/script&gt;
&lt;/body&gt; 
&lt;/html&gt; 

   </pre>
   <p>�ϴ��ļ��ɹ������ʾҳ�� ShowFile.jsp</p>
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
    &lt;a href="#" onclick="javascript:history.go(-1);return false;"&gt;����&lt;/a&gt;
&lt;/body&gt; 
&lt;/html&gt; 

   </pre>
   <p>3:�����ļ�struts.xml�е�����</p>
     <pre  name="code" class="xml">
&lt;!-- Add packages here   ��include������xml�ļ�  ָ���ļ������·���Ϳ�����--&gt;
&lt;!--�ļ��ϴ�Action��xml�ļ�--&gt;
&lt;include file="/demoinfo/struts2/fileupload/fileupload.xml"&gt;&lt;/include&gt;

   </pre>
   <p>4:�����ļ�fileupload.xml�м��϶�ӦAction��������</p>
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
		&lt;!--  ���������ϴ����ļ����ͣ������ļ�--&gt;
            &lt;param name ="allowedTypes"&gt; 
                image/bmp,image/png,image/gif,image/jpeg,image/jpg
             &lt;/param &gt; 
         &lt;/interceptor-ref &gt; 
         &lt;!--  Ĭ���������������fileUpload֮�󣬷�����Ч --&gt;
         &lt;interceptor-ref name ="defaultStack" /&gt;            
         &lt;!--  ��Ӧ�ķ���ҳ�� --&gt;
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