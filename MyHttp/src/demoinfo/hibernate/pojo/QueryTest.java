package demoinfo.hibernate.pojo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import demoinfo.hibernate.relationship.pojo.User;

/**
 * 查询测试
 */
public class QueryTest {

	@SuppressWarnings("unchecked")
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
		 // 利用 StringBuilder 来连接查询语句  
        StringBuilder hq = new StringBuilder();  
        // 从 User 里面查找（注意 from 后有空格）  
        // 相当于 "select * from user_info;"  
        hq.append("from ").append( User.class.getName() );  
        // 利用 session 建立 query  
        Query query = session.createQuery( hq.toString() );  
        // 序列化 query 的结果为一个 list 集合  
        List<User> users = query.list();  
        // 打印每一个 User 信息（这里只打印了名字，你也可以打印其他信息）  
        for (User user : users) {  
            System.out.println( "username = "+user.getUsername() );  
        }  
		// 提交事务  
		session.getTransaction().commit();  
		// 关闭 session 和 sessionFactory  
		session.close();  
		sessionFactory.close();  
	}
}
