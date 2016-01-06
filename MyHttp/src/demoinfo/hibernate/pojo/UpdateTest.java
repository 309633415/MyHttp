package demoinfo.hibernate.pojo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import demoinfo.hibernate.relationship.pojo.User;
/**
 * 更新测试
 */
public class UpdateTest {

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
		// 对比查找的操作来看，因为我们需要修改指定 name 的用户密码，后面需要再添加查询条件  
        // 注意 from、where 的空格，":name" 表示一个参数  
        hq.append("from ").append(User.class.getName()).append(" where user_username=:name");  
        Query query = session.createQuery(hq.toString());  
        // 这里就设定参数 name 的值为"user1"  
        query.setString("name","admin" );   
        List<User> users = query.list();  
        for (User user : users) {  
            // 修改 user1 的密码  
            user.setPassword("123-user");  
            // 注意这里是 update  
            session.update(user);  
        }  
		// 提交事务  
		session.getTransaction().commit();  
		// 关闭 session 和 sessionFactory  
		session.close();  
		sessionFactory.close();  
	}
}
