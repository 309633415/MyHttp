package demoinfo.hibernate.crud;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import demoinfo.hibernate.relationship.pojo.User;

public class test {
    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
    	AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        // ���� StringBuilder �����Ӳ�ѯ���
        StringBuilder hq = new StringBuilder();
        // �� User ������ң�ע�� from ���пո�
        // �൱�� "select * from user_info;"
        hq.append("from ").append( User.class.getName() );
        // ���� session ���� query
        Query query = session.createQuery( hq.toString() );
        // ���л� query �Ľ��Ϊһ�� list ����
        List<User> users = query.list();
        // ��ӡÿһ�� User ��Ϣ������ֻ��ӡ�����֣���Ҳ���Դ�ӡ������Ϣ��
        for (User user : users) {
            System.out.println( user.getUsername() );
        }
/*      User user = new User();
        user.setId(3);
        user.setUsername("user2");
        user.setPassword("helloworld");
        session.save(user);*/
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
    }
}
