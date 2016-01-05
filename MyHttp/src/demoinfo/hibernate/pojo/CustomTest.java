package demoinfo.hibernate.pojo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import demoinfo.hibernate.relationship.pojo.User;
/**
 * 自定义查询test
 */
public class CustomTest {
	@SuppressWarnings("unchecked")
    public static void main(String[] args) {
    	AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        // 1. 普通查询  
        Query q = session.createQuery(" from User as u");  
        
        // 2. 条件查询  
        //Query q = session.createQuery(" from User as u where u.username = ?");  
        
        // 3. 原生 SQL 查询  
        //SQLQuery q = session.createSQLQuery("select * from hibernate_user_info").addEntity(User.class); 
        
        /* 
        // 4.criteria 查询  
       	//创造criteria
        Criteria q = session.createCriteria(User.class);
        //添加查询条件
        Criterion cc = Restrictions.between("id", 1, 3); 
        Criterion cc1 = Restrictions.idEq(2);     
        q.add(cc); 
        q.add(cc1);
        //如果想分页,下面我是把它写死的,写活也比较容易的,自己试.  
        // q.setFirstResult(0);  
        //q.setMaxResults(10);          
         */      
        List<User> list = q.list();  
        for (User e : list) {  
            System.out.println("username: " + e.getUsername() + "  , password: " + e.getPassword());  
        }   
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
    }
}
