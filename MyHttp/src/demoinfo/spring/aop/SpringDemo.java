package demoinfo.spring.aop;

import org.springframework.context.ApplicationContext;  
import org.springframework.context.support.FileSystemXmlApplicationContext;  

public class SpringDemo {  
    public static void main(String[] args) {  
    	//获得Spring中定义的Bean实例(对象)
        ApplicationContext ctx=new FileSystemXmlApplicationContext(
        		"classpath:demoinfo/spring/aop/applicationContext.xml");  
        Performer per=(Performer)ctx.getBean("DukePerformer");  
        per.perform();  
    }  
}  
