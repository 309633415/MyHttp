package demoinfo.hibernate.pojo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import demoinfo.hibernate.relationship.pojo.User;

/**
 * 添加测试
 */
public class AddTest {

	public static void main(String[] args) {
		// 获取 Hibernate 配置信息  
		/*Hibernate配置文件中，若带有<mapping class="*.*.*"/>，则说明映射类时，采用了Annotation方式。在初始化Configuation时，应使用AnnotationConfiguration*/
		Configuration configuration = new AnnotationConfiguration().configure();  
		// 根据 configuration 建立 sessionFactory  
		SessionFactory sessionFactory = configuration.buildSessionFactory();  
		// 开启 session（相当于开启 JDBC 的 connection）  
		Session session = sessionFactory.openSession();  
		// 创建并开启事务对象  
		session.beginTransaction();  
		// 新建对象，并赋值  
		User user = new User();  
		user.setId(8);  
		user.setUsername("admin");  
		user.setPassword("admin");  
		// 保存对象  
		session.save(user);  
		// 提交事务  
		session.getTransaction().commit();  
		// 关闭 session 和 sessionFactory  
		session.close();  
		sessionFactory.close();  
	}
}
