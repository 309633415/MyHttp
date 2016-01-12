package demoinfo.spring.ioc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringDemo {     
    public static void main(String[] args) {
    	//获得Spring中定义的Bean实例(对象)
        ApplicationContext context = new ClassPathXmlApplicationContext(     
        "classpath:demoinfo/spring/ioc/businessFactoryConfig.xml ");     
        BusinessBean business = (BusinessBean) context.getBean("businessBean");     
        business.save();
    }     
}    
