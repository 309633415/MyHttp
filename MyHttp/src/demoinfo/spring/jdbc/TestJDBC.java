package demoinfo.spring.jdbc;

import java.util.Iterator;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestJDBC {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args){
		//获得Spring中定义的Bean实例(对象)
        ApplicationContext ctx = new ClassPathXmlApplicationContext(     
        "classpath:demoinfo/spring/jdbc/applicationContext.xml ");   
        UserDAO userDAO = (UserDAO)ctx.getBean("userDAO");
        Iterator iterator = userDAO.getAllUserList().iterator();
        System.out.println("user     password");
        while(iterator.hasNext()){
        	Map user = (Map) iterator.next();
        	System.out.println(user.get("studentName")+"     "+user.get("age"));
        }
	}
}
