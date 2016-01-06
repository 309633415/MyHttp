package demoinfo.hibernate.pojo;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import demoinfo.hibernate.pojo.UserVoGoods;
import demoinfo.hibernate.relationship.pojo.Person;
import demoinfo.hibernate.relationship.pojo.User;
import demoinfo.hibernate.relationship.pojo.Goods;

public class test {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
    	AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        
        // hibernate 实现多表连接查询 查询结果映射到自定义类中
        String hql="select new demoinfo.hibernate.pojo.PersonVoIDCard(c.cid,p.pid,p.name, c.no) from Person p,IDCard c where c.pid=p.pid";  
        // 利用 session 建立 query  
        Query query = session.createQuery(hql);  
        // 序列化 query 的结果为一个 list 集合  
        List<PersonVoIDCard> list = query.list();  
        // 打印每一个 User 信息（这里只打印了名字，你也可以打印其他信息）  
        for (PersonVoIDCard li : list) {  
            System.out.println( "用户名："+li.getName() +"  ID名："+li.getNo() );  
        }  
        
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
    }
}
