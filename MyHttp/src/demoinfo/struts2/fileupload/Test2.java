package demoinfo.struts2.fileupload;
import org.springframework.context.support.ClassPathXmlApplicationContext; 

public class Test2 {
	 public static void main(String[] args) {  
	        System.out.println("测试开始......");  
	        new ClassPathXmlApplicationContext(  
	                "classpath:demoinfo/struts2/fileupload/applicationContext.xml");       
	        System.out.println("测试结束......");  
	    }  
}
