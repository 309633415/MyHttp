package demoinfo.hibernate.relationship;

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
import demoinfo.hibernate.relationship.pojo.ClassRoom;
import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.Person;
import demoinfo.hibernate.relationship.pojo.PersonInform;
import demoinfo.hibernate.relationship.pojo.Student;
import demoinfo.hibernate.relationship.pojo.User;

public class RelationShipServiceImpl implements RelationShipService  {

	private RelationShipDao relationShipDao;
	
	public List<User> findUserAll() {
		return relationShipDao.findUserAll();
	}
	
	public List<Goods> findGoodsAll() {
		return relationShipDao.findGoodsAll();
	}
	public List<Person> findPersonAll() {
		return relationShipDao.findPersonAll();
	}
	
	public List<User> queryUsers(String username) {
		if(username == null || "".equals(username))
		return relationShipDao.findUserAll();
//		String queryString = "SELECT u FROM User u WHERE u.username like '"+"%"+username+"%'";
		String queryString = "SELECT u FROM User u WHERE u.username = '"+username+"'";
		return relationShipDao.getUsers(queryString);
	}

	//get set satrt
	public RelationShipDao getRelationShipDao() {
		return relationShipDao;
	}
	public void setRelationShipDao(RelationShipDao relationShipDao) {
		this.relationShipDao = relationShipDao;
	}
	//get set end

	public List<UserVoGoods> findUserVoGoodsList() {
		AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        // hibernate 实现多表连接查询 查询结果映射到自定义类中
        String hql="select new demoinfo.hibernate.pojo.UserVoGoods(u.id,g.id,u.username,g.goodsname) from User u,Goods g where u.id=g.userId";  
        // 利用 session 建立 query  
        Query query = session.createQuery(hql);  
        // 序列化 query 的结果为一个 list 集合  
        @SuppressWarnings("unchecked")
		List<UserVoGoods> list = query.list();  
        // 打印每一个 User 信息（这里只打印了名字，你也可以打印其他信息）  
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
		return list;
	}

	public List<User> doOriginalQuery() {
		AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
		SQLQuery q = session.createSQLQuery("select * from hibernate_user_info").addEntity(User.class); 
		@SuppressWarnings({ "unchecked" })
		List<User> list = q.list();  
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
		return list;
	}

	public List<User> doCriteriaQuery(int userId) {
		AnnotationConfiguration configuration = new AnnotationConfiguration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria q = session.createCriteria(User.class);
        //添加查询条件
        Criterion cc1 = Restrictions.idEq(userId);     
        q.add(cc1);
        //如果想分页,下面我是把它写死的,写活也比较容易的,自己试.  
        // q.setFirstResult(0);  
        //q.setMaxResults(10);          
		@SuppressWarnings({ "unchecked" })
		List<User> list = q.list();  
        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
		return list;
	}

	public Person getPerson(String personCode) {
		return relationShipDao.getPerson(personCode);
	}

	public void deletePerson(String personCode) {
		relationShipDao.deletePerson(personCode);
	}

	public void updatePerson(Person person) {
		relationShipDao.updatePerson(person);
	}
	
	public void addPerson(Person person) {
		relationShipDao.addPerson(person);
	}

	public List<PersonInform> findPersonInformAll() {
		return relationShipDao.findPersonInformAll();
	}

	public List<Student> findStudentAll() {
		return relationShipDao.findStudentAll();
	}

	public List<ClassRoom> findClassRoomAll() {
		return relationShipDao.findClassRoomAll();
	}

	public ClassRoom getClassRoom(int roomId) {
		return relationShipDao.getClassRoom(roomId);
	}

}
