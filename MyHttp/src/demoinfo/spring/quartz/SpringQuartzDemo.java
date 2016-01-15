package demoinfo.spring.quartz;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringQuartzDemo {

	public static void main(String[] args) {
		System.out.println("测试开始......");
		new ClassPathXmlApplicationContext(
				"classpath:demoinfo/spring/quartz/applicationContext.xml");     
		System.out.println("测试结束......");
	}

}
