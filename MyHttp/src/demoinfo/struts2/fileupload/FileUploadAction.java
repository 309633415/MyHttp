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
   
    private File myFile;
	private String contentType; //
    private String fileName; //文件名称
    private String imageFileName;
    private String caption;
   
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
       imageFileName = new Date().getTime() + getExtention(fileName);  //组成新的文件名 时间+文件类型
       File imageFile = new File(ServletActionContext.getServletContext().getRealPath( "/image") + "/" + imageFileName); //在系统目录下生成新的文件   
       copy(myFile, imageFile); //文件流复制
       return SUCCESS;
   }

} 

