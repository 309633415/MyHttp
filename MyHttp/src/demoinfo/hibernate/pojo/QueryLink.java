package demoinfo.hibernate.pojo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import demoinfo.hibernate.pojo.UserVoGoods;

public class QueryLink {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
    	AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        // hibernate 实现多表连接查询 查询结果映射到自定义类中
        String hql="select new demoinfo.hibernate.pojo.UserVoGoods(u.id,g.id,u.username, g.goodsname) from User u,Goods g where u.id=g.userId";  
        // 利用 session 建立 query  
        Query query = session.createQuery(hql);  
        // 序列化 query 的结果为一个 list 集合  
        List<UserVoGoods> list = query.list();  
        // 打印每一个 User 信息（这里只打印了名字，你也可以打印其他信息）  
        for (UserVoGoods li : list) {  
            System.out.println( "用户名："+li.getUsername() +"  商品名："+li.getGoodsname() );  
        }  
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
    }
}
